----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:52:28 07/10/2015 
-- Design Name: 
-- Module Name:    mixcolumn32 - Behavioral 
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



entity mixcolumn32 is
Port ( i1,i2,i3,i4: in STD_LOGIC_VECTOR (7 downto 0);
       data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end mixcolumn32;

architecture Behavioral of mixcolumn32 is

begin

data_out(7)<=i1(6) xor i2(6) xor i2(7) xor i3(7) xor i4(7);

data_out(6)<=i1(5) xor i2(5) xor i2(6) xor i3(6) xor i4(6);

data_out(5)<=i1(4) xor i2(4) xor i2(5) xor i3(5) xor i4(5);

data_out(4)<=i1(3) xor i1(7) xor i2(3) xor i2(4) xor i2(7) xor i3(4) xor i4(4);

data_out(3)<=i1(2) xor i1(7) xor i2(2) xor i2(3) xor i2(7) xor i3(3) xor i4(3);

data_out(2)<=i1(1) xor i2(1) xor i2(2) xor i3(2) xor i4(2);

data_out(1)<=i1(0) xor i1(7) xor i2(0) xor i2(1) xor i2(7) xor i3(1) xor i4(1);

data_out(0)<=i1(7) xor i2(7) xor i2(0) xor i3(0) xor i4(0);

end Behavioral;