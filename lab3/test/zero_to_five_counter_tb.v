// Basit testbench (placeholder)
module zero_to_five_counter_tb;
    reg clk = 0;
    reg reset = 0;
    wire [2:0] count;

    zero_to_five_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, uut);
        reset = 1;
        #10;
        reset = 0;
        #1000;
        $finish;
    end
endmodule
