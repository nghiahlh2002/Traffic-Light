library verilog;
use verilog.vl_types.all;
entity traffic_vlg_check_tst is
    port(
        l1              : in     vl_logic_vector(1 downto 0);
        l2              : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end traffic_vlg_check_tst;
