module mac (instruction, multiplier, multiplicand, stall, clk, reset_n, result, protect);
input [15:0] multiplier;
input [15:0] multiplicand; 
input  clk;
input  reset_n;
input  stall;
input  [2:0] instruction;
output [31:0] result;
output [7:0] protect;

//Add you design here
reg [2:0] instr_t, instr_stage2;
reg signed [15:0] mulp_temp, mulc_temp;
reg signed [31:0] mult16_temp;
reg signed [15:0] mult8_temp1, mult8_temp2;
reg signed [31:0] result_stage2;
reg signed [7:0] protect_stage2;

assign result = result_stage2;
assign protect = protect_stage2;

always @(posedge clk,negedge reset_n) begin
    if(~reset_n)begin
        mulp_temp <= 16'd0;
        mulc_temp <= 16'd0;
        instr_t <= 3'd0;
    end
    else if(!stall)begin
        mulp_temp <= multiplier;
        mulc_temp <= multiplicand;
        instr_t <= instruction;
    end
end
always @(posedge clk,negedge reset_n)begin
    if(~reset_n)begin
        mult16_temp <= 32'd0;
        mult8_temp1 <= 16'd0;
        mult8_temp2 <= 16'd0;
        instr_stage2 <= 0;
    end
    else if(!stall)begin
        instr_stage2 <= instr_t;
        if(instr_t == 3'b001 || instr_t ==3'b010)begin
            mult16_temp <= mulp_temp * mulc_temp;
        end
        else if(instr_t == 3'b101 || instr_t == 3'b110)begin
            mult8_temp1 <= $signed(mulp_temp[7:0]) * $signed(mulc_temp[7:0]);
            mult8_temp2 <= $signed(mulp_temp[15:8]) * $signed(mulc_temp[15:8]);
        end
    end
end
always @(posedge clk,negedge reset_n)begin
    if(~reset_n)begin
        protect_stage2 <= 8'd0;
        result_stage2 <= 32'd0;
    end
    else if(!stall)begin
        case(instr_stage2)
            3'b000: begin
                protect_stage2 <= 8'd0;
                result_stage2 <= 32'd0;
            end
            3'b001: begin
                {protect_stage2,result_stage2} <= mult16_temp;
            end
            3'b010: begin
                {protect_stage2,result_stage2} <= $signed({protect_stage2,result_stage2}) + mult16_temp;
            end
            3'b011: begin
                if($signed({protect_stage2,result_stage2}) > $signed(40'h007FFFFFFF))begin
                    result_stage2 <= 32'h7FFFFFFF;
                end
                else if($signed({protect_stage2,result_stage2}) < $signed(40'hFF80000000))begin
                    result_stage2 <= 32'h80000000;
                end
            end
            3'b100: begin
                protect_stage2 <= 8'd0;
                result_stage2 <= 32'd0;
            end
            3'b101: begin
                {protect_stage2[3:0],result_stage2[15:0]} <= mult8_temp1;
                {protect_stage2[7:4],result_stage2[31:16]} <= mult8_temp2;
            end
            3'b110: begin
                 {protect_stage2[3:0],result_stage2[15:0]} <= $signed({protect_stage2[3:0],result_stage2[15:0]}) + mult8_temp1;
                 {protect_stage2[7:4],result_stage2[31:16]} <= $signed({protect_stage2[7:4],result_stage2[31:16]}) + mult8_temp2;
            end
            3'b111: begin
                if($signed({protect_stage2[3:0],result_stage2[15:0]}) > $signed(20'h07FFF))begin
                    result_stage2[15:0] <= 16'h7FFF;
                end
                else if($signed({protect_stage2[3:0],result_stage2[15:0]}) < $signed(20'hF8000))begin
                    result_stage2[15:0] <= 16'h8000;
                end
                if($signed({protect_stage2[7:4],result_stage2[31:16]}) > $signed(20'h07FFF))begin
                    result_stage2[31:16] <= 16'h7FFF;
                end
                else if($signed({protect_stage2[7:4],result_stage2[31:16]}) <$signed(20'hF8000))begin
                    result_stage2[31:16] <= 16'h8000;
                end
            end
            default: begin
                protect_stage2 <= 8'd0;
                result_stage2 <= 32'd0;
            end
            
        endcase
    end
end
endmodule
