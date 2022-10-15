library verilog;
use verilog.vl_types.all;
entity traffic is
    generic(
        INIT            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        STATE1          : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        STATE2          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        STATE3          : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        STATE4          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        START           : in     vl_logic;
        RST_N           : in     vl_logic;
        l1              : out    vl_logic_vector(1 downto 0);
        l2              : out    vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of INIT : constant is 1;
    attribute mti_svvh_generic_type of STATE1 : constant is 1;
    attribute mti_svvh_generic_type of STATE2 : constant is 1;
    attribute mti_svvh_generic_type of STATE3 : constant is 1;
    attribute mti_svvh_generic_type of STATE4 : constant is 1;
end traffic;
