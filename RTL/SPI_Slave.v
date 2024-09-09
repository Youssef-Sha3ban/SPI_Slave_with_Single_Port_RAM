//------------------------------ SPI Slave Interface --------------------------------//

module SPI_Slave (MOSI, MISO, SS_n, clk, rst_n, rx_data, rx_valid, tx_data, tx_valid);

parameter IDLE      = 3'b 000;
parameter CHK_CMD   = 3'b 001;
parameter WRITE     = 3'b 010;
parameter READ_ADD  = 3'b 011;
parameter READ_DATA = 3'b 100;

input clk, rst_n, MOSI, SS_n, tx_valid;
input [7:0] tx_data;

output reg rx_valid, MISO;
output reg [9:0] rx_data;

(* fsm_encoding = "one_hot" *)
reg [2:0] cs, ns;
reg [3:0] counter;
reg addr_or_data;

//State Memory
always @(posedge clk) begin
    if (~rst_n)
        cs <= IDLE;
    else
        cs <= ns;
end

//Next State Logic
always @(*) begin
    case (cs)
        IDLE: begin
                if (~SS_n) ns = CHK_CMD;
                else ns = IDLE;
            end

        CHK_CMD: begin
                    if (~SS_n && ~MOSI) ns = WRITE;
                    else if (~SS_n &&  MOSI && ~addr_or_data) ns = READ_ADD;
                    else if (~SS_n &&  MOSI &&  addr_or_data) ns = READ_DATA;
                    else ns = IDLE;
        end

        WRITE: begin
                if (SS_n) ns = IDLE;
                else ns = WRITE;
            end

        READ_ADD: begin
                    if (SS_n) ns = IDLE;
                    else ns = READ_ADD;
                end

        READ_DATA: begin
                    if (SS_n) ns = IDLE;
                    else ns = READ_DATA;
                end

        default: ns = IDLE;
    endcase
end

//Output Logic
always @(posedge clk) begin
    if (~rst_n) begin
        MISO     <= 0;
        rx_data  <= 0;
        rx_valid <= 0;
        counter  <= 0;
        addr_or_data <=0; 
    end

    else begin
        case (cs)
        IDLE, CHK_CMD: begin
                        rx_valid <= 0;
                        counter  <= 0;
                        MISO     <= 0;
                    end

        WRITE: begin
                    if (counter <= 9) begin
                        rx_data <= {rx_data[8:0] , MOSI};
                        counter <= counter + 1;
                    end

                    if (counter >= 9) rx_valid <= 1;
                end

        READ_ADD: begin
                    if (counter <= 9) begin
                        rx_data <= {rx_data[8:0] , MOSI};
                        counter <= counter + 1;
                    end

                    if (counter >= 9) begin
                        rx_valid <= 1;
                        addr_or_data <= 1;
                    end 
                end

        READ_DATA: begin
                    if (~tx_valid && counter <= 9) begin
                        rx_data <= {rx_data[8:0] , MOSI};
                        counter <= counter + 1;
                    end

                    if (~tx_valid && counter >= 9) begin
                        rx_valid <= 1;
                        addr_or_data <= 0;
                    end

                    if (tx_valid && counter >= 3) begin //[10 - 3] --> [7] and so on ...
                        MISO <= tx_data[counter-3];
                        counter <= counter - 1;
                    end
                end    
        endcase
    end
end

endmodule

