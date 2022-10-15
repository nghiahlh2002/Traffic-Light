library verilog;
use verilog.vl_types.all;
entity up_counter is
    port(
        en              : in     vl_logic;
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        q               : out    vl_logic_vector(15 downto 0)
    );
end up_counter;
