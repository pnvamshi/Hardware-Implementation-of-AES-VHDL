----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:27:23 07/09/2015 
-- Design Name: 
-- Module Name:    addroundkey - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity addroundkey is
port(
k_in : in std_logic_vector (127 downto 0);
m_in : in  std_logic_vector (127 downto 0);
add_out : out std_logic_vector (127 downto 0));
end addroundkey;

architecture Behavioral of addroundkey is

begin
add_out <= k_in xor m_in;

end Behavioral;

