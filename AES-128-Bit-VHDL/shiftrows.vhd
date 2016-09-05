----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:48 07/09/2015 
-- Design Name: 
-- Module Name:    shiftrows - Behavioral 
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



entity shiftrows is
Port ( a : in  STD_LOGIC_VECTOR (127 downto 0);
           c : out  STD_LOGIC_VECTOR (127 downto 0));
end shiftrows;

architecture Behavioral of shiftrows is
signal p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15:std_logic_vector(7 downto 0);
begin
p15<=a(7 downto 0);	 
 p11<=a(39 downto 32);		 
 p7<=a(71 downto 64);		 
 p3<=a(103 downto 96);	
	 
 p14<=a(15 downto 8);
 p10<=a(47 downto 40);
 p6<=a(79 downto 72);	
 p2<=a(111 downto 104);
	
 p13<=a(23 downto 16);	
 p9<=a(55 downto 48);	
 p5<=a(87 downto 80);	
 p1<=a(119 downto 112);	

 p12<=a(31 downto 24);	
 p8<=a(63 downto 56);	
 p4<=a(95 downto 88);	
 p0<=a(127 downto 120);	

C<=p0&p5&p10&p15&p4&p9&p14&p3&p8&p13&p2&p7&p12&p1&p6&p11;	

end Behavioral;