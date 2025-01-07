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