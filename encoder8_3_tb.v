//***TB FOR 8*3 ENCODER***//

module encoder8_3_tb();
	reg [7:0]i;
	reg en;
	wire [2:0]y;
encoder8_3 DUT(.i(i), .en(en), .y(y));
	initial
		begin
			en = 1;
			#100;
			i = 8'b0000_0001;
			#100;
			i = 8'b0000_0010;
			#100;
			i = 8'b0000_0100;
			#100;
			i = 8'b0000_1000;
			#100;
			i = 8'b0001_0000;
			#100;
			i = 8'b0010_0000;
			#100;
			i = 8'b0100_0000;
			#100;
			i = 8'b1000_0000;
			$finish();
		end
endmodule