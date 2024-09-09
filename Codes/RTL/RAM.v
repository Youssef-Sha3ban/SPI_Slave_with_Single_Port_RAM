//--------------------------- Single-Port Sync. RAM ---------------------------//

module RAM (din, clk, rst_n, rx_valid, dout, tx_valid);

parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

input clk, rst_n, rx_valid;
input [ADDR_SIZE+1 : 0] din;

output reg tx_valid;
output reg [ADDR_SIZE-1 : 0] dout;

reg [7:0] RAM [MEM_DEPTH-1 : 0];

reg [ADDR_SIZE-1 : 0] rd_addr, wr_addr;

always @(posedge clk) begin
    if (~rst_n) begin
        dout     <= 0;
        tx_valid <= 0;
        rd_addr  <= 0;
        wr_addr  <= 0;
    end

    else if (rx_valid) begin
        case (din[ADDR_SIZE+1 : ADDR_SIZE])

            2'b 00: begin
                        wr_addr <= din[ADDR_SIZE-1 : 0];
                        tx_valid <= 0;
                    end

            2'b 01: begin 
                        RAM[wr_addr] <= din[7 : 0];
                        tx_valid <= 0;
                    end

            2'b 10: begin
                        rd_addr <= din[ADDR_SIZE-1 : 0];
                        tx_valid <= 0;
                    end

            2'b 11: begin
                        dout <= RAM[rd_addr];
                        tx_valid <= 1;
                    end
        endcase
    end
end
endmodule

