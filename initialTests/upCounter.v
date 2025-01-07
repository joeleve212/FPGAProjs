module countUp(
    input trigger,
    output reg [3:0] regVal
    );
    parameter integer highestVal = 9;
    always @ (posedge trigger) begin
        if (regVal == highestVal) begin
            regVal = 4'h0;
        end else begin
            regVal = regVal + 1;
        end
    end

endmodule