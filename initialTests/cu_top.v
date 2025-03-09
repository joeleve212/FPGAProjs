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
    wire [4:0] smoothButton;
    debouncer debounce[4:0] (clk, io_button, smoothButton);
    
    bcd_oneChar firstChar(binaryVal, io_seg[6:0]);

    countUp myCounter(smoothButton[0], binaryVal);
    
    reg [3:0] selDisp;  //which disp is this? far right?
    reg [5:0] lastVals = 6'h00;
    
    assign io_sel[3:0] = selDisp[3:0];
    assign io_led0[3:0] = selDisp[3:0];
    
    assign io_led2[0] = smoothButton[4];
    assign io_led2[7] = smoothButton[3];
    
    always @ (posedge clk) begin
      if(smoothButton[4]) begin
        if(!lastVals[4]) begin
          selDisp <= selDisp >> 1;
        end
        
      end else if(smoothButton[3]) begin
        if(!lastVals[3]) begin
          selDisp <= selDisp << 1;
        end
       
      end else if(smoothButton[2]) begin
        if(!lastVals[2]) begin
          selDisp <= 2;
        end
        
      end else if(smoothButton[1]) begin
        if(!lastVals[1]) begin
          selDisp <= 1;
        end
        
      end else if(!rst_n) begin
        if(!lastVals[5]) begin
          selDisp <= 4'hE;
        end
      end
      lastVals[4] <= smoothButton[4]; //This can probably be done in a nice way all at once
      lastVals[3] <= smoothButton[3];
      lastVals[2] <= smoothButton[2];
      lastVals[1] <= smoothButton[1];
      lastVals[5] <= !rst_n;
    end
    
    
    

endmodule

