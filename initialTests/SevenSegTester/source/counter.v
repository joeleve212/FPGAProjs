module counter(
    input triggerUp,
    input triggerDown,
    output reg [3:0] regVal
    );
    parameter integer highestVal = 9;
    parameter integer lowestVal = 0;
    always @ (posedge triggerUp or posedge triggerDown) begin
        if (triggerUp) begin
          if (regVal == highestVal) begin
              regVal = 4'h0;
          end else begin
              regVal = regVal + 1;
          end
        end else begin
          if (regVal == lowestVal) begin
              regVal = 4'h9;
          end else begin
              regVal = regVal - 1;
          end
        end
    end

endmodule