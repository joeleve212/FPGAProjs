module debouncer (
    input clk, //clock needed to take time into account
    input in,  //This should be the button to debounce
    output out  //This is the cleaned up signal
  );
  reg [7:0] pressCount = 8'h00;
  parameter integer minCount = 10; //Minimum pressCount needed to make output high
  /* Combinational Logic */    //prob not needed, leaving as example
 // always @* begin
 //   if (pressCount>50) begin
 //     out = 1'h1;
 //   end
 // end
  
  assign out = pressCount[5]; //Essentially if presscount >= 32, out is high
  
  /* Sequential Logic */
  always @(posedge clk) begin        /////TODO: fix this debouncing. Currently it breaks using the button
    if (in) begin
      pressCount = pressCount + 1;
    end else begin
      pressCount = pressCount - 1;
    end
    
  end
  
endmodule
