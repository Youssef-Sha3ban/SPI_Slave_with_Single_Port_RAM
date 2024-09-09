module ram_tb ();

parameter MEM_DEPTH = 8;
parameter ADDR_SIZE = 3;

reg clk, rst_n, rx_valid;
reg [ADDR_SIZE+1 : 0] din;

wire tx_valid;
wire [ADDR_SIZE-1 : 0] dout;

RAM #(.MEM_DEPTH(MEM_DEPTH), .ADDR_SIZE(ADDR_SIZE)) RAM_DUT (din, clk, rst_n, rx_valid, dout, tx_valid);

initial begin
    clk = 0;
    forever
        #10 clk = ~clk;
end

initial begin
    rst_n = 0;
    repeat(2) @(negedge clk);
    rst_n = 1;

 //--- Testing Writing ---//
    din = 6'b 00_110;
    rx_valid = 0;
    @(negedge clk);
    @(negedge clk);
    rx_valid = 1;
    @(negedge clk);
    @(negedge clk);
    din = 6'b 01_111;
    @(negedge clk);


    rx_valid = 1;
    din = 6'b 00_100;
    @(negedge clk);
    din = 6'b 01_010;
    @(negedge clk);

 //--- Testing Reading ---//
    din = 6'b 10_110;
    rx_valid = 0;
    @(negedge clk);
    @(negedge clk);
    rx_valid = 1;
    @(negedge clk);
    din = 6'b 11_001;
    @(negedge clk);
    @(negedge clk);
    din = 6'b 00_110;
    @(negedge clk);
    din = 6'b 11_100;
    @(negedge clk);


    $stop;
end

endmodule

