module cu_top(
    input clk,              // 100MHz clock
    input rst_n,            // reset button (active low)
    output [7:0] led,       // 8 user controllable LEDs
    input usb_rx,           // USB->Serial input
    output usb_tx,           // USB->Serial output
    input [4:0] io_button,
    output [7:0] io_led0,
    output [7:0] io_led1,
    output [7:0] io_led2,
    input [7:0] io_dip0,
    input [7:0] io_dip1,
    input [7:0] io_dip2,
    output [3:0] io_sel,
    output [7:0] io_seg
    );
    

    assign usb_tx = usb_rx;  // echo the serial data

    //MY DESIGN::
    reg [3:0] binaryVal;
    bcd_oneChar bcd_oneChar(io_dip0[3:0], io_seg[3:0]);

    
endmodule


module bcd_oneChar(
  input [3:0] binDig,
  output [3:0] segOut
  );
  //binDig[3] is A
  //binDig[2] is B
  //binDig[1] is C
  //binDig[0] is D
  
  //seg a
  assign segOut[0] = ~(binDig[0] ^ binDig[2]) | binDig[3] | binDig[1];
  //seg b
  assign segOut[1] = ~(binDig[2]) | ~(binDig[1] ^ binDig[0]);
  //seg c
  assign segOut[2] = ~(binDig[1]) | binDig[0] | binDig[2];
  //seg d
  assign segOut[3] = (~binDig[2] & ~binDig[0]) | (binDig[1] & ~binDig[0]) | 
              (binDig[1] & ~binDig[2]) | (binDig[2] & ~binDig[1] & binDig[0]) | binDig[3];

  
  
endmodule
