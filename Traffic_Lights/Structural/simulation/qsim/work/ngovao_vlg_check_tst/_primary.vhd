library verilog;
use verilog.vl_types.all;
entity ngovao_vlg_check_tst is
    port(
        a               : in     vl_logic_vector(15 downto 0);
        q               : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end ngovao_vlg_check_tst;
