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
    wire [3:0] smoothButton;
    debouncer debounce0(clk, io_button[0], smoothButton[0]);
    
    bcd_oneChar firstChar(binaryVal, io_seg[6:0]);

    countUp myCounter(smoothButton[0], binaryVal);
    
    
    reg [3:0] selDisp = 4'hE;
    wire shiftButtons = smoothButton[2] | smoothButton[4];
    
    assign io_sel = selDisp;
    reg [1:0] LEDvals = 2'b00;
    assign io_led1[0] = LEDvals[0];
    assign io_led1[1] = LEDvals[1];
    
    always @ (posedge smoothButton[2]) begin
      
      if(smoothButton[2]) begin
         selDisp = selDisp << 1;
         LEDvals[0] = 1'b1;
      end
      if(smoothButton[4]) begin
          selDisp = selDisp >> 1;
          LEDvals[1] = 1'b1;
      end
    end
    
    

endmodule

