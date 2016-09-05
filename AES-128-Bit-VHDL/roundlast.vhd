----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:57:39 07/10/2015 
-- Design Name: 
-- Module Name:    roundlast - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity roundlast is
Port ( roundlastin : in  STD_LOGIC_VECTOR (127 downto 0);
       keylastin : in  STD_LOGIC_VECTOR (127 downto 0);
		 garbage: in std_logic_vector(7 downto 0);
       roundlastout : out  STD_LOGIC_VECTOR (127 downto 0));
end roundlast;

architecture Behavioral of roundlast is

component subbytes is
    Port ( p_in : in  STD_LOGIC_VECTOR (127 downto 0);
           s_out : out  STD_LOGIC_VECTOR (127 downto 0));
end component;

component shiftrows is
    Port ( a : in  STD_LOGIC_VECTOR (127 downto 0);
           c : out  STD_LOGIC_VECTOR (127 downto 0));
end component;

component KeyGenerator is
Port ( a  :in  STD_LOGIC_VECTOR (127 downto 0);
           rcon  :  in  STD_LOGIC_VECTOR (7 downto 0);
           b  :  out  STD_LOGIC_VECTOR (127 downto 0));
end component;

signal subout,shiftout,keyout:std_logic_vector(127 downto 0);
begin

q1: KeyGenerator port map (keylastin,garbage,keyout);

q2:subbytes port map(roundlastin,subout);
	
q3:shiftrows  port map(subout,shiftout);

roundlastout <= shiftout xor keyout;


end Behavioral;

