-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2020.12.27943

-- Build Date:         Dec  9 2020 18:18:06

-- File Generated:     Jan 2 2025 18:35:50

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "cu_top_0" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of cu_top_0
entity cu_top_0 is
port (
    led : out std_logic_vector(7 downto 0);
    usb_rx : in std_logic;
    usb_tx : out std_logic;
    rst_n : in std_logic;
    clk : in std_logic);
end cu_top_0;

-- Architecture of cu_top_0
-- View name is \INTERFACE\
architecture \INTERFACE\ of cu_top_0 is

signal \N__308\ : std_logic;
signal \N__307\ : std_logic;
signal \N__306\ : std_logic;
signal \N__299\ : std_logic;
signal \N__298\ : std_logic;
signal \N__297\ : std_logic;
signal \N__290\ : std_logic;
signal \N__289\ : std_logic;
signal \N__288\ : std_logic;
signal \N__281\ : std_logic;
signal \N__280\ : std_logic;
signal \N__279\ : std_logic;
signal \N__272\ : std_logic;
signal \N__271\ : std_logic;
signal \N__270\ : std_logic;
signal \N__263\ : std_logic;
signal \N__262\ : std_logic;
signal \N__261\ : std_logic;
signal \N__254\ : std_logic;
signal \N__253\ : std_logic;
signal \N__252\ : std_logic;
signal \N__245\ : std_logic;
signal \N__244\ : std_logic;
signal \N__243\ : std_logic;
signal \N__236\ : std_logic;
signal \N__235\ : std_logic;
signal \N__234\ : std_logic;
signal \N__227\ : std_logic;
signal \N__226\ : std_logic;
signal \N__225\ : std_logic;
signal \N__208\ : std_logic;
signal \N__205\ : std_logic;
signal \N__202\ : std_logic;
signal \N__199\ : std_logic;
signal \N__196\ : std_logic;
signal \N__193\ : std_logic;
signal \N__190\ : std_logic;
signal \N__189\ : std_logic;
signal \N__188\ : std_logic;
signal \N__185\ : std_logic;
signal \N__182\ : std_logic;
signal \N__179\ : std_logic;
signal \N__176\ : std_logic;
signal \N__173\ : std_logic;
signal \N__170\ : std_logic;
signal \N__169\ : std_logic;
signal \N__168\ : std_logic;
signal \N__167\ : std_logic;
signal \N__166\ : std_logic;
signal \N__165\ : std_logic;
signal \N__158\ : std_logic;
signal \N__155\ : std_logic;
signal \N__152\ : std_logic;
signal \N__149\ : std_logic;
signal \N__146\ : std_logic;
signal \N__143\ : std_logic;
signal \VCCG0\ : std_logic;
signal \GNDG0\ : std_logic;
signal usb_rx_c : std_logic;
signal \CONSTANT_ONE_NET\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal led_wire : std_logic_vector(7 downto 0);
signal usb_rx_wire : std_logic;
signal usb_tx_wire : std_logic;

begin
    led <= led_wire;
    usb_rx_wire <= usb_rx;
    usb_tx <= usb_tx_wire;

    \led_obuf_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__308\,
            DIN => \N__307\,
            DOUT => \N__306\,
            PACKAGEPIN => led_wire(1)
        );

    \led_obuf_1_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__308\,
            PADOUT => \N__307\,
            PADIN => \N__306\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__169\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_5_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__299\,
            DIN => \N__298\,
            DOUT => \N__297\,
            PACKAGEPIN => led_wire(5)
        );

    \led_obuf_5_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__299\,
            PADOUT => \N__298\,
            PADIN => \N__297\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__165\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__290\,
            DIN => \N__289\,
            DOUT => \N__288\,
            PACKAGEPIN => led_wire(0)
        );

    \led_obuf_0_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__290\,
            PADOUT => \N__289\,
            PADIN => \N__288\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__196\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__281\,
            DIN => \N__280\,
            DOUT => \N__279\,
            PACKAGEPIN => led_wire(2)
        );

    \led_obuf_2_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__281\,
            PADOUT => \N__280\,
            PADIN => \N__279\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__168\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_4_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__272\,
            DIN => \N__271\,
            DOUT => \N__270\,
            PACKAGEPIN => led_wire(4)
        );

    \led_obuf_4_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__272\,
            PADOUT => \N__271\,
            PADIN => \N__270\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__166\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_6_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__263\,
            DIN => \N__262\,
            DOUT => \N__261\,
            PACKAGEPIN => led_wire(6)
        );

    \led_obuf_6_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__263\,
            PADOUT => \N__262\,
            PADIN => \N__261\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__188\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \usb_rx_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__254\,
            DIN => \N__253\,
            DOUT => \N__252\,
            PACKAGEPIN => usb_rx_wire
        );

    \usb_rx_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__254\,
            PADOUT => \N__253\,
            PADIN => \N__252\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => usb_rx_c,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \usb_tx_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__245\,
            DIN => \N__244\,
            DOUT => \N__243\,
            PACKAGEPIN => usb_tx_wire
        );

    \usb_tx_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__245\,
            PADOUT => \N__244\,
            PADIN => \N__243\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__208\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__236\,
            DIN => \N__235\,
            DOUT => \N__234\,
            PACKAGEPIN => led_wire(3)
        );

    \led_obuf_3_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__236\,
            PADOUT => \N__235\,
            PADIN => \N__234\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__189\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \led_obuf_7_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__227\,
            DIN => \N__226\,
            DOUT => \N__225\,
            PACKAGEPIN => led_wire(7)
        );

    \led_obuf_7_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__227\,
            PADOUT => \N__226\,
            PADIN => \N__225\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__167\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__39\ : IoInMux
    port map (
            O => \N__208\,
            I => \N__205\
        );

    \I__38\ : LocalMux
    port map (
            O => \N__205\,
            I => \N__202\
        );

    \I__37\ : Span12Mux_s0_v
    port map (
            O => \N__202\,
            I => \N__199\
        );

    \I__36\ : Odrv12
    port map (
            O => \N__199\,
            I => usb_rx_c
        );

    \I__35\ : IoInMux
    port map (
            O => \N__196\,
            I => \N__193\
        );

    \I__34\ : LocalMux
    port map (
            O => \N__193\,
            I => \N__190\
        );

    \I__33\ : IoSpan4Mux
    port map (
            O => \N__190\,
            I => \N__185\
        );

    \I__32\ : IoInMux
    port map (
            O => \N__189\,
            I => \N__182\
        );

    \I__31\ : IoInMux
    port map (
            O => \N__188\,
            I => \N__179\
        );

    \I__30\ : Span4Mux_s0_h
    port map (
            O => \N__185\,
            I => \N__176\
        );

    \I__29\ : LocalMux
    port map (
            O => \N__182\,
            I => \N__173\
        );

    \I__28\ : LocalMux
    port map (
            O => \N__179\,
            I => \N__170\
        );

    \I__27\ : Span4Mux_v
    port map (
            O => \N__176\,
            I => \N__158\
        );

    \I__26\ : Span4Mux_s0_h
    port map (
            O => \N__173\,
            I => \N__158\
        );

    \I__25\ : Span4Mux_s0_h
    port map (
            O => \N__170\,
            I => \N__158\
        );

    \I__24\ : IoInMux
    port map (
            O => \N__169\,
            I => \N__155\
        );

    \I__23\ : IoInMux
    port map (
            O => \N__168\,
            I => \N__152\
        );

    \I__22\ : IoInMux
    port map (
            O => \N__167\,
            I => \N__149\
        );

    \I__21\ : IoInMux
    port map (
            O => \N__166\,
            I => \N__146\
        );

    \I__20\ : IoInMux
    port map (
            O => \N__165\,
            I => \N__143\
        );

    \I__19\ : Odrv4
    port map (
            O => \N__158\,
            I => \CONSTANT_ONE_NET\
        );

    \I__18\ : LocalMux
    port map (
            O => \N__155\,
            I => \CONSTANT_ONE_NET\
        );

    \I__17\ : LocalMux
    port map (
            O => \N__152\,
            I => \CONSTANT_ONE_NET\
        );

    \I__16\ : LocalMux
    port map (
            O => \N__149\,
            I => \CONSTANT_ONE_NET\
        );

    \I__15\ : LocalMux
    port map (
            O => \N__146\,
            I => \CONSTANT_ONE_NET\
        );

    \I__14\ : LocalMux
    port map (
            O => \N__143\,
            I => \CONSTANT_ONE_NET\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \CONSTANT_ONE_LUT4_LC_32_3_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => \CONSTANT_ONE_NET\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );
end \INTERFACE\;
