library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        clk             : in     vl_logic;
        RST_N           : in     vl_logic;
        r1              : out    vl_logic;
        r2              : out    vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        g1              : out    vl_logic;
        g2              : out    vl_logic;
        \_time\         : out    vl_logic_vector(5 downto 0);
        state           : out    vl_logic_vector(1 downto 0);
        next_state      : out    vl_logic_vector(1 downto 0)
    );
end traffic;
