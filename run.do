.main clear

vlib work

vlog RTL/*
vlog Testbench/*


vsim -voptargs=+acc work.Sh3ban_TB

add wave -radix unsigned -position insertpoint  \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/counter 
add wave -position insertpoint  \
sim:/Sh3ban_TB/Parallel_ADDR \
sim:/Sh3ban_TB/Parallel_DATA
add wave -position insertpoint  \
sim:/Sh3ban_TB/rst_n 
add wave -color magenta -position insertpoint  \
sim:/Sh3ban_TB/clk
add wave -position insertpoint  \
sim:/Sh3ban_TB/MISO \
sim:/Sh3ban_TB/SS_n
add wave -color gold -position insertpoint  \
sim:/Sh3ban_TB/MOSI
add wave -position insertpoint  \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/rx_data
add wave -position insertpoint  \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/rx_valid
#add wave -radix binary -position insertpoint  \
#sim:/Sh3ban_TB/DUT/RAM_INSTANCE/din
add wave -color cyan -position insertpoint  \
sim:/Sh3ban_TB/DUT/RAM_INSTANCE/wr_addr
add wave -position insertpoint  \
sim:/Sh3ban_TB/DUT/RAM_INSTANCE/rd_addr
add wave -position insertpoint  \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/tx_valid \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/tx_data 
add wave -color cyan -position insertpoint  \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/cs
add wave -position insertpoint  \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/ns \
sim:/Sh3ban_TB/DUT/SPI_INSATNCE/addr_or_data
add wave -color Orchid -position insertpoint  \
{sim:/Sh3ban_TB/DUT/RAM_INSTANCE/RAM[169]}
add wave -position insertpoint  \
sim:/Sh3ban_TB/DUT/RAM_INSTANCE/RAM
add wave -position insertpoint  \
sim:/Sh3ban_TB/Expected_out

run -all
