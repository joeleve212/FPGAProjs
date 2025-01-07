module countUp(
    input trigger,
    output [3:0] regVal
    );
    reg[7:0] numCycs = 8'h00;
    reg[3:0] base = 4'd10;
    always @ (posedge trigger) begin
        if (regVal == (base - 1)) begin
            regVal = 4'h0;
        end else begin
            regVal = regVal + 1;
        end
    end

endmodule