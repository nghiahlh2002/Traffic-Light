library verilog;
use verilog.vl_types.all;
entity traffic_vlg_check_tst is
    port(
        \_time\         : in     vl_logic_vector(5 downto 0);
        g1              : in     vl_logic;
        g2              : in     vl_logic;
        next_state      : in     vl_logic_vector(1 downto 0);
        r1              : in     vl_logic;
        r2              : in     vl_logic;
        state           : in     vl_logic_vector(1 downto 0);
        y1              : in     vl_logic;
        y2              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end traffic_vlg_check_tst;
