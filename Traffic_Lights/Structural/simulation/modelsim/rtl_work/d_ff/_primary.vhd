library verilog;
use verilog.vl_types.all;
entity d_ff is
    port(
        clk             : in     vl_logic;
        d               : in     vl_logic;
        rst_n           : in     vl_logic;
        q               : out    vl_logic
    );
end d_ff;
