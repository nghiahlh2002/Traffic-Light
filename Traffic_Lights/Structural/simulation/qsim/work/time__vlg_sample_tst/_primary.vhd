library verilog;
use verilog.vl_types.all;
entity \time__vlg_sample_tst\ is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        rst_n           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end \time__vlg_sample_tst\;
