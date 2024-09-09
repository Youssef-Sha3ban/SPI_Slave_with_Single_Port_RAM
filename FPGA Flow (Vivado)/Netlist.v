// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Sep 10 00:56:56 2024
// Host        : Ace-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog C:/Users/Ace/Desktop/spi/project_1.v
// Design      : SPI_Wrapper
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid,
    MISO_reg,
    MISO_reg_0,
    CLK,
    rst_n_IBUF,
    \rx_data_reg[9] ,
    SR,
    Q,
    WEA,
    \rx_data_reg[9]_0 ,
    \counter_reg[1] ,
    E,
    \rx_data_reg[9]_1 );
  output tx_valid;
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_n_IBUF;
  input \rx_data_reg[9] ;
  input [0:0]SR;
  input [7:0]Q;
  input [0:0]WEA;
  input \rx_data_reg[9]_0 ;
  input [1:0]\counter_reg[1] ;
  input [0:0]E;
  input [0:0]\rx_data_reg[9]_1 ;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [1:0]\counter_reg[1] ;
  wire [7:0]rd_addr;
  wire rst_n_IBUF;
  wire \rx_data_reg[9] ;
  wire \rx_data_reg[9]_0 ;
  wire [0:0]\rx_data_reg[9]_1 ;
  wire [7:0]tx_data_bus;
  wire tx_valid;
  wire [7:0]wr_addr;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_3
       (.I0(tx_data_bus[6]),
        .I1(tx_data_bus[7]),
        .I2(\counter_reg[1] [0]),
        .I3(\counter_reg[1] [1]),
        .I4(tx_data_bus[4]),
        .I5(tx_data_bus[5]),
        .O(MISO_reg_0));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    MISO_i_4
       (.I0(tx_data_bus[2]),
        .I1(tx_data_bus[3]),
        .I2(\counter_reg[1] [0]),
        .I3(\counter_reg[1] [1]),
        .I4(tx_data_bus[0]),
        .I5(tx_data_bus[1]),
        .O(MISO_reg));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "RAM" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,wr_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,rd_addr,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data_bus),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(\rx_data_reg[9] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[0] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[0]),
        .Q(rd_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[1] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[1]),
        .Q(rd_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[2] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[2]),
        .Q(rd_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[3] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[3]),
        .Q(rd_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[4] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[4]),
        .Q(rd_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[5] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[5]),
        .Q(rd_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[6] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[6]),
        .Q(rd_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rd_addr_reg[7] 
       (.C(CLK),
        .CE(\rx_data_reg[9]_1 ),
        .D(Q[7]),
        .Q(rd_addr[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rx_data_reg[9]_0 ),
        .Q(tx_valid),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(wr_addr[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(wr_addr[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(wr_addr[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(wr_addr[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(wr_addr[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(wr_addr[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(wr_addr[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wr_addr_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(wr_addr[7]),
        .R(SR));
endmodule

module SPI_Slave
   (MISO_OBUF,
    SR,
    WEA,
    Q,
    \rd_addr_reg[7] ,
    E,
    \counter_reg[3]_0 ,
    tx_valid_reg,
    RAM_reg,
    CLK,
    tx_valid,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF,
    RAM_reg_0,
    RAM_reg_1);
  output MISO_OBUF;
  output [0:0]SR;
  output [0:0]WEA;
  output [7:0]Q;
  output [0:0]\rd_addr_reg[7] ;
  output [0:0]E;
  output [1:0]\counter_reg[3]_0 ;
  output tx_valid_reg;
  output RAM_reg;
  input CLK;
  input tx_valid;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;
  input RAM_reg_0;
  input RAM_reg_1;

  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_cs[3]_i_1_n_0 ;
  wire \FSM_onehot_cs[4]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_cs_reg_n_0_[4] ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MOSI_IBUF;
  wire [7:0]Q;
  wire RAM_reg;
  wire RAM_reg_0;
  wire RAM_reg_1;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire addr_or_data_i_1_n_0;
  wire addr_or_data_reg_n_0;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire [1:0]\counter_reg[3]_0 ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [0:0]\rd_addr_reg[7] ;
  wire rst_n_IBUF;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire [9:8]rx_data_bus;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire rx_valid_i_2_n_0;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \FSM_onehot_cs[0]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(\FSM_onehot_cs_reg_n_0_[2] ),
        .I5(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\FSM_onehot_cs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cs[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[0] ),
        .I1(SS_n_IBUF),
        .O(\FSM_onehot_cs[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \FSM_onehot_cs[2]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(MOSI_IBUF),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(SS_n_IBUF),
        .O(\FSM_onehot_cs[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000BAAA)) 
    \FSM_onehot_cs[3]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(addr_or_data_reg_n_0),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(MOSI_IBUF),
        .I4(SS_n_IBUF),
        .O(\FSM_onehot_cs[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    \FSM_onehot_cs[4]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(addr_or_data_reg_n_0),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(MOSI_IBUF),
        .I4(SS_n_IBUF),
        .O(\FSM_onehot_cs[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cs_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[2] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[3]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:00010,WRITE:00100,READ_ADD:01000,READ_DATA:10000,IDLE:00001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cs_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\FSM_onehot_cs[4]_i_1_n_0 ),
        .Q(\FSM_onehot_cs_reg_n_0_[4] ),
        .R(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    MISO_i_1
       (.I0(\FSM_onehot_cs_reg_n_0_[1] ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(\counter[3]_i_3_n_0 ),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'hBFEA802A00000000)) 
    MISO_i_2
       (.I0(RAM_reg_0),
        .I1(\counter_reg[3]_0 [0]),
        .I2(\counter_reg[3]_0 [1]),
        .I3(\counter_reg_n_0_[2] ),
        .I4(RAM_reg_1),
        .I5(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    RAM_reg_i_1
       (.I0(rx_data_bus[9]),
        .I1(rx_data_bus[8]),
        .I2(rx_valid),
        .I3(rst_n_IBUF),
        .O(RAM_reg));
  LUT1 #(
    .INIT(2'h1)) 
    RAM_reg_i_2
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_i_3
       (.I0(rx_valid),
        .I1(rx_data_bus[8]),
        .I2(rx_data_bus[9]),
        .O(WEA));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFDFF8888)) 
    addr_or_data_i_1
       (.I0(rx_valid_i_2_n_0),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(tx_valid),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .I4(addr_or_data_reg_n_0),
        .O(addr_or_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    addr_or_data_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(addr_or_data_i_1_n_0),
        .Q(addr_or_data_reg_n_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h5554)) 
    \counter[0]_i_1 
       (.I0(\counter_reg[3]_0 [0]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFE00F0EEEEF0)) 
    \counter[1]_i_1 
       (.I0(\FSM_onehot_cs_reg_n_0_[3] ),
        .I1(\FSM_onehot_cs_reg_n_0_[2] ),
        .I2(\FSM_onehot_cs_reg_n_0_[4] ),
        .I3(\counter_reg[3]_0 [1]),
        .I4(\counter_reg[3]_0 [0]),
        .I5(\counter[1]_i_2_n_0 ),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55555777)) 
    \counter[1]_i_2 
       (.I0(tx_valid),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg[3]_0 [1]),
        .I3(\counter_reg[3]_0 [0]),
        .I4(\counter_reg_n_0_[3] ),
        .O(\counter[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA3B0B03A)) 
    \counter[2]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter[3]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg[3]_0 [1]),
        .I4(\counter_reg[3]_0 [0]),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[3]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\FSM_onehot_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(\rx_data[9]_i_1_n_0 ),
        .O(counter));
  LUT6 #(
    .INIT(64'hABBBBBB33000000A)) 
    \counter[3]_i_2 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter[3]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg[3]_0 [1]),
        .I4(\counter_reg[3]_0 [0]),
        .I5(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA88800000000)) 
    \counter[3]_i_3 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg[3]_0 [0]),
        .I3(\counter_reg[3]_0 [1]),
        .I4(\counter_reg_n_0_[2] ),
        .I5(tx_valid),
        .O(\counter[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h000D)) 
    \counter[3]_i_4 
       (.I0(\FSM_onehot_cs_reg_n_0_[4] ),
        .I1(tx_valid),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[3] ),
        .O(\counter[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg[3]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg[3]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter),
        .D(\counter[3]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rd_addr[7]_i_1 
       (.I0(rx_data_bus[9]),
        .I1(rx_valid),
        .I2(rx_data_bus[8]),
        .O(\rd_addr_reg[7] ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[1]_i_1 
       (.I0(Q[0]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[2]_i_1 
       (.I0(Q[1]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[3]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[4]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[5]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[6]_i_1 
       (.I0(Q[5]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[7]_i_1 
       (.I0(Q[6]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[8]_i_1 
       (.I0(Q[7]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0057)) 
    \rx_data[9]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg[3]_0 [1]),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter[3]_i_4_n_0 ),
        .O(\rx_data[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \rx_data[9]_i_2 
       (.I0(rx_data_bus[8]),
        .I1(\FSM_onehot_cs_reg_n_0_[3] ),
        .I2(\FSM_onehot_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_cs_reg_n_0_[4] ),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data_bus[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\rx_data[9]_i_2_n_0 ),
        .Q(rx_data_bus[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h444F4444)) 
    rx_valid_i_1
       (.I0(\counter[3]_i_4_n_0 ),
        .I1(rx_valid_i_2_n_0),
        .I2(\FSM_onehot_cs_reg_n_0_[1] ),
        .I3(\FSM_onehot_cs_reg_n_0_[0] ),
        .I4(rx_valid),
        .O(rx_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    rx_valid_i_2
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg[3]_0 [0]),
        .I2(\counter_reg[3]_0 [1]),
        .I3(\counter_reg_n_0_[2] ),
        .O(rx_valid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data_bus[9]),
        .I1(rx_data_bus[8]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
  LUT3 #(
    .INIT(8'h04)) 
    \wr_addr[7]_i_1 
       (.I0(rx_data_bus[9]),
        .I1(rx_valid),
        .I2(rx_data_bus[8]),
        .O(E));
endmodule

(* ADDR_SIZE = "8" *) (* MEM_DEPTH = "256" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module SPI_Wrapper
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst_n);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire RAM;
  wire RAM_INSTANCE_n_1;
  wire RAM_INSTANCE_n_2;
  wire SPI_INSATNCE_n_1;
  wire SPI_INSATNCE_n_11;
  wire SPI_INSATNCE_n_12;
  wire SPI_INSATNCE_n_13;
  wire SPI_INSATNCE_n_14;
  wire SPI_INSATNCE_n_15;
  wire SPI_INSATNCE_n_16;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data_bus;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  RAM RAM_INSTANCE
       (.CLK(clk_IBUF_BUFG),
        .E(SPI_INSATNCE_n_12),
        .MISO_reg(RAM_INSTANCE_n_1),
        .MISO_reg_0(RAM_INSTANCE_n_2),
        .Q(rx_data_bus),
        .SR(SPI_INSATNCE_n_1),
        .WEA(RAM),
        .\counter_reg[1] ({SPI_INSATNCE_n_13,SPI_INSATNCE_n_14}),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[9] (SPI_INSATNCE_n_16),
        .\rx_data_reg[9]_0 (SPI_INSATNCE_n_15),
        .\rx_data_reg[9]_1 (SPI_INSATNCE_n_11),
        .tx_valid(tx_valid));
  SPI_Slave SPI_INSATNCE
       (.CLK(clk_IBUF_BUFG),
        .E(SPI_INSATNCE_n_12),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q(rx_data_bus),
        .RAM_reg(SPI_INSATNCE_n_16),
        .RAM_reg_0(RAM_INSTANCE_n_2),
        .RAM_reg_1(RAM_INSTANCE_n_1),
        .SR(SPI_INSATNCE_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(RAM),
        .\counter_reg[3]_0 ({SPI_INSATNCE_n_13,SPI_INSATNCE_n_14}),
        .\rd_addr_reg[7] (SPI_INSATNCE_n_11),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(SPI_INSATNCE_n_15));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
