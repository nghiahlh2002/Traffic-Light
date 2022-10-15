library verilog;
use verilog.vl_types.all;
entity \time__vlg_check_tst\ is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        b               : in     vl_logic;
        c               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end \time__vlg_check_tst\;
