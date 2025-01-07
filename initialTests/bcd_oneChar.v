module bcd_oneChar(
  input [3:0] binDig,
  output [6:0] segOut
  );
  //binDig[3] is A
  //binDig[2] is B
  //binDig[1] is C
  //binDig[0] is D
  
  //seg a
  wire a = ~(binDig[0] ^ binDig[2]) | binDig[3] | binDig[1];
  assign segOut[0] = ~a; //Inversion due to 7segs being common anode
  //seg b
  wire b = ~(binDig[2]) | ~(binDig[1] ^ binDig[0]);
  assign segOut[1] = ~b;
  //seg c
  wire c = ~(binDig[1]) | binDig[0] | binDig[2];
  assign segOut[2] = ~c;
  //seg d
  wire d = (~binDig[2] & ~binDig[0]) | (binDig[1] & ~binDig[0]) | 
              (binDig[1] & ~binDig[2]) | (binDig[2] & ~binDig[1] & binDig[0]) | binDig[3];
  assign segOut[3] = ~d;
  //seg e
  wire e = ~binDig[0] & (~binDig[2] | binDig[1]);
  assign segOut[4] = ~e;
  //seg f
  wire f = (binDig[2] & (~binDig[0] | ~binDig[1])) | (~binDig[0] & ~binDig[1]) | (binDig[3] & ~binDig[2]);
  assign segOut[5] = ~f;
  //seg g
  wire g = binDig[3] | (binDig[2] ^ binDig[1]) | (binDig[2] & ~binDig[0]);
  assign segOut[6] = ~g;

  
endmodule