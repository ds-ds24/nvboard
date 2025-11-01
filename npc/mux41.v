module mux41b(X,Y,F);
  input  [3:0] X;
  input  [1:0] Y;
  output F;
  MuxKeyWithDefault #(4, 2, 1) i0 (F,Y, 1'b0, {
    2'b00, X[0],
    2'b01, X[1],
    2'b10, X[2],
    2'b11, X[3]
  });
endmodule
