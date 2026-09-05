library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_decoder3zu8 is
end tb_decoder3zu8;

architecture sim of tb_decoder3zu8 is
   
    signal tb_a : std_logic_vector(2 downto 0);
    signal tb_y : std_logic_vector(7 downto 0);

begin 
   
   DUT: entity work.decoder3zu8(Behavioral)
port map (
       A => tb_a,
       Y => tb_y
      );
stim_proc: process
     
begin 
     tb_a <="000"; wait for 20 ns;
     tb_a <="001"; wait for 20 ns;
     tb_a <="010"; wait for 20 ns;
     tb_a <="011"; wait for 20 ns;
     tb_a <="100"; wait for 20 ns;
     tb_a <="101"; wait for 20 ns;
     tb_a <="110"; wait for 20 ns;
     tb_a <="111"; wait for 20 ns;
     wait;
       end process;
end sim;
     


