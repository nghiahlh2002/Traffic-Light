library verilog;
use verilog.vl_types.all;
entity traffic_vlg_sample_tst is
    port(
        RST_N           : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end traffic_vlg_sample_tst;
