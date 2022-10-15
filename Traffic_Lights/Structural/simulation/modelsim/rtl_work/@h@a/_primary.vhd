library verilog;
use verilog.vl_types.all;
entity HA is
    port(
        c               : in     vl_logic;
        q               : in     vl_logic;
        cc              : out    vl_logic;
        d               : out    vl_logic
    );
end HA;
