module countUp(
    input clk,
    output [3:0] regVal
    );
    reg[7:0] numCycs = 8'h00;
    always @ (posedge clk) begin
        numCycs = numCycs + 1;
        if (numCycs = 8'd100) begin
            regVal = regVal + 1;
            if (regVal = 4'd10) begin
                regVal = 4'h0;
            end
        end
    end

endmodule