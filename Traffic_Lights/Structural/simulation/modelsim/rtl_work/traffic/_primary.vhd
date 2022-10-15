library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        start           : in     vl_logic;
        l1              : out    vl_logic_vector(1 downto 0);
        l2              : out    vl_logic_vector(1 downto 0)
    );
end traffic;
