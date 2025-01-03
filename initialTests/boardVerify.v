
// module firstMod(x_out, a_in, b_in);
//     output x_out;
//     input a_in, b_in;
//     wire x_out;
//     assign x_out = a_in and b_in;
// endmodule

module  mux_using_if(
din_0      , // Mux first input
din_1      , // Mux Second input
sel        , // Select input
mux_out      // Mux output
);
//-----------Input Ports---------------
input din_0, din_1, sel ;
//-----------Output Ports---------------
output mux_out;
//------------Internal Variables--------
reg  mux_out;
//-------------Code Starts Here---------
always @ (sel or din_0 or din_1)
begin : MUX
  if (sel == 1'b0) begin
      mux_out = din_0;
  end else begin
      mux_out = din_1 ;
  end
end

endmodule //End Of Module mux

