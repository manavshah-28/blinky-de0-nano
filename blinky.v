module blinky(input clk,//50 MHz clock
              output reg led);
				  
		 reg[31:0] counter;
	always @(posedge clk)
	begin 
		if(counter <= 25000000)
		  begin 
		  counter <= counter + 1;
		  end
		else
		  begin
		     counter <= 0;
			  led <= ~led;
		  end
	end
		  
endmodule



