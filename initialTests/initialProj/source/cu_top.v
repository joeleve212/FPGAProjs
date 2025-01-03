module cu_top(
    input clk,              // 100MHz clock
    input rst_n,            // reset button (active low)
    output [7:0] led,       // 8 user controllable LEDs
    input usb_rx,           // USB->Serial input
    output usb_tx,           // USB->Serial output
    input [4:0] io_button,
    output [2:0] io_led
    );
    
    wire rst;
    
    // The reset conditioner is used to synchronize the reset signal to the FPGA
    // clock. This ensures the entire FPGA comes out of reset at the same time.
    reset_conditioner reset_conditioner(.clk(clk), .in(!rst_n), .out(rst));
    
    assign io_led[1] = 8'hff;      // turn LEDs on

    assign usb_tx = usb_rx;  // echo the serial data
    
endmodule