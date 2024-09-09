//----------------------------------------- SPI Wrapper -----------------------------------------//

module SPI_Wrapper (MOSI, MISO, SS_n, clk, rst_n);

//Parameters For RAM
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

input clk, rst_n, SS_n, MOSI;
output MISO;

//Internal Wires
wire [ADDR_SIZE+1 : 0] rx_data_bus;
wire [ADDR_SIZE-1 : 0] tx_data_bus;
wire rx_valid, tx_valid;

RAM #(MEM_DEPTH, ADDR_SIZE) RAM_INSTANCE (rx_data_bus, clk, rst_n, rx_valid, tx_data_bus, tx_valid);

SPI_Slave SPI_INSATNCE (MOSI, MISO, SS_n, clk, rst_n, rx_data_bus, rx_valid, tx_data_bus, tx_valid);

endmodule

