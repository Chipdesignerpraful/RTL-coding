// Code by Praful Kharade
// Logicflick.com

module tb_freq;
  reg clk;
  wire f2, f4, f8, f16, f32;

  clock_divider instance1(.clk(clk),
                          .f2(f2),
                          .f4(f4),
                          .f8(f8),
                          .f16(f16),
                          .f32(f32),
                          .f64(f64)
                       
                        
                         );
always #5 clk = ~clk;
                    	
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      
      clk =0;
      #400;
      $finish;
    end
endmodule
