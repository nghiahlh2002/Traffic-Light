library verilog;
use verilog.vl_types.all;
entity ngora is
    port(
        state           : in     vl_logic_vector(2 downto 0);
        l1              : out    vl_logic_vector(1 downto 0);
        l2              : out    vl_logic_vector(1 downto 0)
    );
end ngora;
