```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
              rst : in  STD_LOGIC;
              count : out  INTEGER range 0 to 15); 
end entity;

architecture behavioral of counter is
  signal temp_count : INTEGER range 0 to 15 := 0;
begin
  process (clk, rst)
  begin
    if rst = '1' then
      temp_count <= 0;
    elsif rising_edge(clk) then
      temp_count <= (temp_count + 1) mod 16; -- Corrected line
    end if;
  end process;
  count <= temp_count;
end architecture;
```