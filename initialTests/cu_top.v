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
    wire [3:0] binaryVal;
    reg [3:0] selDisp = 4'h1;
    bcd_oneChar firstChar(binaryVal, io_seg[6:0]);
    //TODO: need a debounce for each button
    //TODO: add button to shift num left/right
    countUp myCounter(io_button[0], binaryVal);

    wire shiftButtons = io_button[2] | io_button[4];
    always @ (posedge shiftButtons) begin
      if(io_button[2]) begin
         selDisp <= selDisp << 1;
      end
      if(io_button[4]) begin
          selDisp <= selDisp >> 1;
      end
    end

    assign io_sel = selDisp;

endmodule

