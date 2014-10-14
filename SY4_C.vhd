----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:25 07/02/2014 
-- Design Name: 
-- Module Name:    SY4_C - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library UNISIM;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SY4_C is
    Port ( K0 : in  STD_LOGIC_VECTOR (7 downto 0);
           K1 : in  STD_LOGIC_VECTOR (7 downto 0);
           K2 : in  STD_LOGIC_VECTOR (7 downto 0);
           K3 : in  STD_LOGIC_VECTOR (7 downto 0);
           K4 : in  STD_LOGIC_VECTOR (7 downto 0);
			  D  : inout  STD_LOGIC_VECTOR (15 downto 0);
			  A  : out  STD_LOGIC_VECTOR (15 downto 0);
           S0 : out  STD_LOGIC_VECTOR (7 downto 0);
           S1 : out  STD_LOGIC_VECTOR (7 downto 0);
           S3 : out  STD_LOGIC_VECTOR (7 downto 0);
           S4 : out  STD_LOGIC_VECTOR (7 downto 0);
			  CS,WR,RD,BH,BL:out std_logic);
         
end SY4_C;

architecture Behavioral of SY4_C is

begin
	D<=K1&K0 when ((K4(4) ='0') and ((K4(7))='0'))
	else "ZZZZZZZZZZZZZZZZ";
	A<=K3&K2;
	RD<=K4(0) or K4(7);
	WR<=K4(4) or K4(7);
	CS<=K4(1) or K4(7);
	BH<=K4(2) or K4(7);
	BL<=K4(3) or K4(7);
	S0<=D(7 downto 0);
	S1<=D(15 downto 8);
	S3<=K2;
	S4<=K3;

end Behavioral;

