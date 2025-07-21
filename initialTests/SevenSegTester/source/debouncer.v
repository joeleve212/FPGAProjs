module debouncer (
    input clk, //clock needed to take time into account
    input in,  //This should be the button to debounce
    output out  //This is the cleaned up signal
  );
  reg [7:0] pressCount = 8'h00;
  parameter integer minCount = 10; //Minimum pressCount needed to make output high
  reg outVal = 1'b0;

  
  assign out = outVal;
  
  /* Sequential Logic */
  always @(posedge clk) begin
    if (in && (pressCount < 255)) begin
      pressCount = pressCount + 1;
    end else if (pressCount > 0) begin
      pressCount = pressCount - 1;
    end
    if (pressCount > 200) begin
      outVal = 1'b1;
    end else if (pressCount == 0) begin
      outVal = 1'b0;
    end
    
  end
  
endmodule
