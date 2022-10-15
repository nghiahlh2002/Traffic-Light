library verilog;
use verilog.vl_types.all;
entity ngovao is
    port(
        en              : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        q               : out    vl_logic_vector(2 downto 0)
    );
end ngovao;
