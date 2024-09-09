//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
//                    Self Checking Testbech for SPI & RAM                     //
//                                    BY                                       //
//                             Youssef Sha3ban                                 //
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

module Sh3ban_TB ();

parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

//The following parameters are just for the self-checking testbench
parameter IDLE      = 3'b 000;
parameter CHK_CMD   = 3'b 001;
parameter WRITE     = 3'b 010;
parameter READ_ADD = 3'b 011;
parameter READ_DATA = 3'b 100;
//-----------------------------------------------------------------

reg clk, rst_n, SS_n, MOSI;
wire MISO;

SPI_Wrapper #(MEM_DEPTH, ADDR_SIZE) DUT (MOSI, MISO, SS_n, clk, rst_n);

//The following regesiters are just for the self-checking testbench
reg [9:0] Parallel_ADDR; //Master Address Input (Parallel) 
reg [9:0] Parallel_DATA; //Master Data Input (Parallel)
reg [7:0] Expected_out;

initial begin
    clk = 0;
    forever
        #10 clk = ~clk;
end

integer i;

initial begin
$readmemh("mem.dat", DUT.RAM_INSTANCE.RAM);

$display("\n----------------> \"Testing Reset\" <----------------\n");
rst_n = 0;
SS_n = 1;
MOSI = 0;
@(negedge clk);
rst_n = 1;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != IDLE) begin        //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//



//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
 $display("\n----------------> \"Testing Write Address\" <----------------\n");
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

SS_n = 0;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != CHK_CMD) begin     //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

MOSI = 0;
Parallel_ADDR = 10'b 00_1010_1001;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != WRITE) begin       //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

for (i=9 ; i >= 0 ; i=i-1) begin
    MOSI = Parallel_ADDR[i];
    @(negedge clk);
end

@(negedge clk); //To let RAM Writes Address 

if (DUT.RAM_INSTANCE.wr_addr != Parallel_ADDR[7:0]) begin
    $display("ERROR!! Incorrect Output :(");
    $stop;
end

$write("\n");
SS_n = 1;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != IDLE) begin        //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//



//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
    $display("\n----------------> \"Testing Write Data\" <----------------\n");
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
  
SS_n = 0;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != CHK_CMD) begin     //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

MOSI = 0;
Parallel_DATA = 10'b 01_0100_1101;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != WRITE) begin       //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

for (i=9 ; i >= 0 ; i=i-1) begin
    MOSI = Parallel_DATA[i];
    @(negedge clk);
end

@(negedge clk); //To let RAM Writes Data

if (DUT.RAM_INSTANCE.RAM[Parallel_ADDR[7:0]] != Parallel_DATA[7:0]) begin
    $display("ERROR!! Incorrect Output :(");
    $stop;
end

$write("\n");
SS_n = 1;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != IDLE) begin        //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//



//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
                    $display("\n \"Testing Read Address\" \n");
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

SS_n = 0;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != CHK_CMD) begin     //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

MOSI = 1;
Parallel_ADDR = 10'b 10_1010_1001;

@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != READ_ADD) begin    //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

for (i=9 ; i >= 0 ; i=i-1) begin
    MOSI = Parallel_ADDR[i];
    @(negedge clk);
end

@(negedge clk); //To let RAM Read Address

if (DUT.RAM_INSTANCE.rd_addr != Parallel_ADDR[7:0]) begin
    $display("ERROR!! Incorrect Output :(");
    $stop;
end

$write("\n");
SS_n = 1;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != IDLE) begin        //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//



//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
    $display("\n----------------> \"Testing Read Data\" <----------------\n");
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//

SS_n = 0;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != CHK_CMD) begin     //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

MOSI = 1;
Parallel_DATA = 10'b 11_0111_1001;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != READ_DATA) begin   //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

for (i=9 ; i >= 0 ; i=i-1) begin
    MOSI = Parallel_DATA[i];
    @(negedge clk);
end

@(negedge clk); //To let RAM Writes Data
@(negedge clk);

repeat (8) begin
    Expected_out = {Expected_out[6:0] , MISO};
    @(negedge clk);
end

if (DUT.RAM_INSTANCE.RAM[Parallel_ADDR[7:0]] != Expected_out) begin
    $display("ERROR!! Incorrect Output :(");
    $stop;
end

$write("\n");
SS_n = 1;
@(negedge clk);

//------------------------------------------------//
    if (DUT.SPI_INSATNCE.cs != IDLE) begin        //
        $display("ERROR!! Incorrect Output :(");  //
        $stop;                                    //
    end                                           //
//------------------------------------------------//

repeat(5) @(negedge clk);

//If the simulation reached this line then no errors were found
$display("\n--->  NO ERRORS, All Outputs are Correct :)  <--- \n");
$stop;

end

initial begin
    $monitor("clk= %b, rst_n= %b, MISO= %b, SS_n= %b ,MOSI= %b, rx_data= %b_%b, rx_valid= %b, tx_data= %b, tx_valid= %b"
    ,clk, rst_n, MISO, SS_n, MOSI, DUT.rx_data_bus[9:8], DUT.rx_data_bus[7:0], DUT.rx_valid, DUT.tx_data_bus, DUT.tx_valid);
end

endmodule

