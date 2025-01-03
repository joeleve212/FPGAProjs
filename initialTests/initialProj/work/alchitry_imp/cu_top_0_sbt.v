// ******************************************************************************

// iCEcube Netlister

// Version:            2020.12.27943

// Build Date:         Dec  9 2020 18:18:12

// File Generated:     Jan 2 2025 18:35:50

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "cu_top_0" view "INTERFACE"

module cu_top_0 (
    led,
    usb_rx,
    usb_tx,
    rst_n,
    clk);

    output [7:0] led;
    input usb_rx;
    output usb_tx;
    input rst_n;
    input clk;

    wire N__308;
    wire N__307;
    wire N__306;
    wire N__299;
    wire N__298;
    wire N__297;
    wire N__290;
    wire N__289;
    wire N__288;
    wire N__281;
    wire N__280;
    wire N__279;
    wire N__272;
    wire N__271;
    wire N__270;
    wire N__263;
    wire N__262;
    wire N__261;
    wire N__254;
    wire N__253;
    wire N__252;
    wire N__245;
    wire N__244;
    wire N__243;
    wire N__236;
    wire N__235;
    wire N__234;
    wire N__227;
    wire N__226;
    wire N__225;
    wire N__208;
    wire N__205;
    wire N__202;
    wire N__199;
    wire N__196;
    wire N__193;
    wire N__190;
    wire N__189;
    wire N__188;
    wire N__185;
    wire N__182;
    wire N__179;
    wire N__176;
    wire N__173;
    wire N__170;
    wire N__169;
    wire N__168;
    wire N__167;
    wire N__166;
    wire N__165;
    wire N__158;
    wire N__155;
    wire N__152;
    wire N__149;
    wire N__146;
    wire N__143;
    wire VCCG0;
    wire GNDG0;
    wire usb_rx_c;
    wire CONSTANT_ONE_NET;
    wire _gnd_net_;

    IO_PAD led_obuf_1_iopad (
            .OE(N__308),
            .DIN(N__307),
            .DOUT(N__306),
            .PACKAGEPIN(led[1]));
    defparam led_obuf_1_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_1_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_1_preio (
            .PADOEN(N__308),
            .PADOUT(N__307),
            .PADIN(N__306),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__169),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_5_iopad (
            .OE(N__299),
            .DIN(N__298),
            .DOUT(N__297),
            .PACKAGEPIN(led[5]));
    defparam led_obuf_5_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_5_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_5_preio (
            .PADOEN(N__299),
            .PADOUT(N__298),
            .PADIN(N__297),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__165),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_0_iopad (
            .OE(N__290),
            .DIN(N__289),
            .DOUT(N__288),
            .PACKAGEPIN(led[0]));
    defparam led_obuf_0_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_0_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_0_preio (
            .PADOEN(N__290),
            .PADOUT(N__289),
            .PADIN(N__288),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__196),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_2_iopad (
            .OE(N__281),
            .DIN(N__280),
            .DOUT(N__279),
            .PACKAGEPIN(led[2]));
    defparam led_obuf_2_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_2_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_2_preio (
            .PADOEN(N__281),
            .PADOUT(N__280),
            .PADIN(N__279),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__168),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_4_iopad (
            .OE(N__272),
            .DIN(N__271),
            .DOUT(N__270),
            .PACKAGEPIN(led[4]));
    defparam led_obuf_4_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_4_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_4_preio (
            .PADOEN(N__272),
            .PADOUT(N__271),
            .PADIN(N__270),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__166),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_6_iopad (
            .OE(N__263),
            .DIN(N__262),
            .DOUT(N__261),
            .PACKAGEPIN(led[6]));
    defparam led_obuf_6_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_6_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_6_preio (
            .PADOEN(N__263),
            .PADOUT(N__262),
            .PADIN(N__261),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__188),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD usb_rx_ibuf_iopad (
            .OE(N__254),
            .DIN(N__253),
            .DOUT(N__252),
            .PACKAGEPIN(usb_rx));
    defparam usb_rx_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam usb_rx_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO usb_rx_ibuf_preio (
            .PADOEN(N__254),
            .PADOUT(N__253),
            .PADIN(N__252),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(usb_rx_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD usb_tx_obuf_iopad (
            .OE(N__245),
            .DIN(N__244),
            .DOUT(N__243),
            .PACKAGEPIN(usb_tx));
    defparam usb_tx_obuf_preio.NEG_TRIGGER=1'b0;
    defparam usb_tx_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO usb_tx_obuf_preio (
            .PADOEN(N__245),
            .PADOUT(N__244),
            .PADIN(N__243),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__208),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_3_iopad (
            .OE(N__236),
            .DIN(N__235),
            .DOUT(N__234),
            .PACKAGEPIN(led[3]));
    defparam led_obuf_3_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_3_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_3_preio (
            .PADOEN(N__236),
            .PADOUT(N__235),
            .PADIN(N__234),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__189),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD led_obuf_7_iopad (
            .OE(N__227),
            .DIN(N__226),
            .DOUT(N__225),
            .PACKAGEPIN(led[7]));
    defparam led_obuf_7_preio.NEG_TRIGGER=1'b0;
    defparam led_obuf_7_preio.PIN_TYPE=6'b011001;
    PRE_IO led_obuf_7_preio (
            .PADOEN(N__227),
            .PADOUT(N__226),
            .PADIN(N__225),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__167),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IoInMux I__39 (
            .O(N__208),
            .I(N__205));
    LocalMux I__38 (
            .O(N__205),
            .I(N__202));
    Span12Mux_s0_v I__37 (
            .O(N__202),
            .I(N__199));
    Odrv12 I__36 (
            .O(N__199),
            .I(usb_rx_c));
    IoInMux I__35 (
            .O(N__196),
            .I(N__193));
    LocalMux I__34 (
            .O(N__193),
            .I(N__190));
    IoSpan4Mux I__33 (
            .O(N__190),
            .I(N__185));
    IoInMux I__32 (
            .O(N__189),
            .I(N__182));
    IoInMux I__31 (
            .O(N__188),
            .I(N__179));
    Span4Mux_s0_h I__30 (
            .O(N__185),
            .I(N__176));
    LocalMux I__29 (
            .O(N__182),
            .I(N__173));
    LocalMux I__28 (
            .O(N__179),
            .I(N__170));
    Span4Mux_v I__27 (
            .O(N__176),
            .I(N__158));
    Span4Mux_s0_h I__26 (
            .O(N__173),
            .I(N__158));
    Span4Mux_s0_h I__25 (
            .O(N__170),
            .I(N__158));
    IoInMux I__24 (
            .O(N__169),
            .I(N__155));
    IoInMux I__23 (
            .O(N__168),
            .I(N__152));
    IoInMux I__22 (
            .O(N__167),
            .I(N__149));
    IoInMux I__21 (
            .O(N__166),
            .I(N__146));
    IoInMux I__20 (
            .O(N__165),
            .I(N__143));
    Odrv4 I__19 (
            .O(N__158),
            .I(CONSTANT_ONE_NET));
    LocalMux I__18 (
            .O(N__155),
            .I(CONSTANT_ONE_NET));
    LocalMux I__17 (
            .O(N__152),
            .I(CONSTANT_ONE_NET));
    LocalMux I__16 (
            .O(N__149),
            .I(CONSTANT_ONE_NET));
    LocalMux I__15 (
            .O(N__146),
            .I(CONSTANT_ONE_NET));
    LocalMux I__14 (
            .O(N__143),
            .I(CONSTANT_ONE_NET));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam CONSTANT_ONE_LUT4_LC_32_3_0.C_ON=1'b0;
    defparam CONSTANT_ONE_LUT4_LC_32_3_0.SEQ_MODE=4'b0000;
    defparam CONSTANT_ONE_LUT4_LC_32_3_0.LUT_INIT=16'b1111111111111111;
    LogicCell40 CONSTANT_ONE_LUT4_LC_32_3_0 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(CONSTANT_ONE_NET),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
endmodule // cu_top_0
