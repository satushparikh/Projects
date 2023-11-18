

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use ieee.numeric_std.all;

entity RF is
	port(CLK,RF_Write: in std_logic;
	      Read_Select_1,Read_Select_2,Write_Select : in std_logic_vector(2 downto 0);
		  Write_Data: in std_logic_vector(15 downto 0);
		  Read_Data_1,Read_Data_2: out std_logic_vector(15 downto 0));
end entity;
--A1,A2,A3 are address lines,D stands for Data
--Read_Select_1 :A1
--Read_Select_2 :A2
--Write_Select : A3
architecture Behave of RF is

	signal R0,R1,R2,R3,R4,R5,R6,R7:std_logic_vector(15 downto 0);
	begin
	
		with Read_Select_1 select Read_Data_1<=
		R0 when "000",
		R1 when "001",
		R2 when "010",
		R3 when "011",
		R4 when "100",
		R5 when "101",
		R6 when "110",
		R7 when "111";
       
		with Read_Select_2 select Read_Data_2<=
		R0 when "000",
		R1 when "001",
		R2 when "010",
		R3 when "011",
		R4 when "100",
		R5 when "101",
		R6 when "110",
		R7 when "111";

	 
		
			  
process (RF_Write,Write_Data,Write_Select,clk)
begin
	if(RF_Write='1') then
	 
		case Write_Select is
			when "000" =>
					 R0<=Write_Data;
			when "001" =>
					 R1<=Write_Data;
			when "010" =>
					 R2<=Write_Data;
			when "011" =>
					 R3<=Write_Data;
			when "100" =>
					 R4<=Write_Data;
			when "101" =>
					 R5<=Write_Data;
			when "110" =>
					 R6<=Write_Data;
			when "111" =>
					 R7<=Write_Data;
			when others => NULL;
		end case;
		end if;
	end process;
	
	end Behave;
		 
				
				
				
				
				
				
				
	 
					
					
					
					
					
					
					
					
					--	signal R0,R1,R2,R3:std_logic_vector(15 downto 0);
					--	signal R0:std_logic_vector(15 downto 0) :="0000000000000011";
					--	signal R1:std_logic_vector(15 downto 0) :="0000000000000011";
					--	signal R2:std_logic_vector(15 downto 0) :="0000000000000000";
					--	signal R3:std_logic_vector(15 downto 0) :="0000000000000001";
					--	signal R4:std_logic_vector(15 downto 0) :="0000000000000000";
					--	signal R5:std_logic_vector(15 downto 0) :="0000000000000001";
					--	signal R6:std_logic_vector(15 downto 0) :="0000000000000010";
					--	signal R7:std_logic_vector(15 downto 0) :="0000000000000011";
					-- signal R7:std_logic_vector(15 downto 0) :="0000000000000000";
					-- signal R4,R5,R6,R7:std_logic_vector(15 downto 0);