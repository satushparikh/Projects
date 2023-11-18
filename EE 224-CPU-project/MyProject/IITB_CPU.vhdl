
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IITB_CPU is
   port (CLK,reset: in std_logic);
end entity;

architecture Behave of IITB_CPU is

 type FSM_State is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25);
  signal state : FSM_State;
 

    
--   signal IR, T1, T2, T3,Mem_A1,Mem_D1,Mem_D2,A1,A2,A3,B1,B2,B3,Rf_D1,Rf_D2,RF_D3,Rf_Dout,Mem_Dout: std_logic_vector(15 downto 0);
  signal IR, T1, T2, T3: std_logic_vector(15 downto 0);


--   RF1: RF port map(CLK,RF_W,Read_S_1,Read_S_2,Write_S,Write_D,--inputs
                --    Read_D_1,Read_D_2);--outputs
   --signals used in RF portmapping
   signal RF_W : std_logic;
   signal Read_S_1,Read_S_2,Write_S : std_logic_vector(2 downto 0);
   signal Write_D,Read_D_1,Read_D_2 : std_logic_vector(15 downto 0);

  --signals used in ALU portmapping
  signal A1,B1,Output1,A2,B2,Output2 : std_logic_vector(15 downto 0);
  signal Opr1,Opr2                   : std_logic_vector(1 downto 0);
  signal Out1Bit_1,Out1Bit_2 : std_logic;

--   Mem1 : Mem port map(Address,Mem_Din,clk,Mem_W,Mem_Dout);
signal Address,Mem_Din, Mem_Dout : std_logic_vector(15 downto 0);
signal Mem_W : std_logic;
  -- signals used in Memory portmapping


  signal PC:std_logic_vector(15 downto 0):="0000000000000000";
--   signal RF_A1,RF_A2,Rf_A3 : std_logic_vector(2 downto 0);
--  signal Read_S_1,Read_S_2,Write_S : std_logic_vector(2 downto 0);
--  signal A4,B4,RF_W,Mem_Write : std_logic;
  signal C,Z:std_logic:='0';
  
  component ALU is
	port(Op: in std_logic_vector(1 downto 0);
		  A,B: in std_logic_vector(15 downto 0);
		  O: out std_logic_vector(15 downto 0);
		  Z: out std_logic);
  end component;
  
  component Memory_Data is 
        port (address,Mem_datain: in std_logic_vector(15 downto 0); CLK,Mem_wr: in std_logic;
              Mem_dataout: out std_logic_vector(15 downto 0));
  end component;
	component RF is
        port(CLK,RF_Write: in std_logic;
        Read_Select_1,Read_Select_2,Write_Select : in std_logic_vector(2 downto 0);
        Write_Data: in std_logic_vector(15 downto 0);
        Read_Data_1,Read_Data_2: out std_logic_vector(15 downto 0));
	end component; 
   
  
begin
    --   RF1: RF port map(CLK,RF_W,RF_A1,RF_A2,RF_A3,RF_D3,RF_D1,RF_D2);
      RF1: RF port map(CLK,RF_W,Read_S_1,Read_S_2,Write_S,Write_D,--inputs
                       Read_D_1,Read_D_2);--outputs
      
      Mem1 : Memory_Data port map(Address,Mem_Din,CLK,Mem_W,Mem_Dout);
      
	-- Op->Operation_1 , A_1,B_1,Output_1,Out1bit_1
	-- Op->Operation_2 , A_2,B_2,Output_2,Out1bit_2
  ALU1 : ALU port map(Opr1,A1,B1,Output1,Out1Bit_1);
  ALU2 : ALU port map(Opr2,A2,B2,Output2,Out1Bit_2);

  
--  process( CLK)
   process(reset,CLK,State,T1,T2,T3,PC,IR,C,Z)
  
     variable n_PC, n_T1, n_T2, n_T3 : std_logic_vector(15 downto 0);
	 variable n_state : FSM_State;
     variable  multiple: std_logic_vector(15 downto 0):=(others=>'0');
	  
  begin
	  n_T1:=T1;
	  n_T2:=T2;
	  n_T3:=T3;
     case State is
	  
        when S0 =>
            Mem_w <= '0';
            Address <= PC;
            Mem_Din <= "0000000000000000";
            IR <= Mem_Dout;
            Opr1 <= "00";--add
            A1 <= PC;
            B1 <= "0000000000000001";
            n_PC := Output1;

            --if-else conditions for next states
            if(IR(15 downto 12) = "0011") then 
                n_state := S17;--for LHI
            else 
                n_state := S1;-- for all other instructions
            end if;


        when S1 =>
            RF_W <= '0';
            Read_S_1 <= IR(11 downto 9);
            Read_S_2 <= IR(8 downto 6);
            Write_S <= "000";
            Write_D <= "0000000000000000";
            n_T1 := Read_D_1;
            n_T2 := Read_D_2;
     
            --if-else conditions IR(15 to 12) and IR(1 to 0); carry and zero conditions
           --ADD,ADC,ADZ
            if(IR(15 downto 12) = "0000") then
                 
                 if (IR(1 downto 0)="00") then
                    n_state := S2;
                 elsif (IR(1 downto 0)="10") then
                        if(C='1') then 
                          n_state := S2;
                        else 
                          n_state:=S0;
                        end if;
                 elsif (IR(1 downto 0)="01") then
                        if(Z='1') then 
                          n_state := S2;
                        else 
                          n_state:=S0;
                        end if;
                end if ;
            --NDU,NDC,NDZ
            elsif (IR(15 downto 12) = "0010") then
                 if (IR(1 downto 0)="00") then
                    n_state := S6;
                 elsif (IR(1 downto 0)="10") then
                        if(C='1') then 
                          n_state := S6;
                        else 
                          n_state:=S0;
                        end if;
                 elsif (IR(1 downto 0)="01") then
                        if(Z='1') then 
                          n_state := S6;
                        else 
                          n_state:=S0;
                        end if;
                end if ;
            --ADI
            elsif (IR(15 downto 12) = "0001") then
                    n_state:=S7;
            
            --BEQ:
            elsif (IR(15 downto 12) = "1100") then
                n_state:=S10;
            --JAL AND JLR BOTH GOES TO S11
            elsif ((IR(15 downto 12) = "1000") OR (IR(15 downto 12) = "1001") ) then
                n_state:=S11;

            --LW AND SW
            elsif ((IR(15 downto 12) = "0100") OR (IR(15 downto 12) = "0101") ) then
                n_state:=S18;
            --LM
            elsif (IR(15 downto 12) = "0110") then
                n_state:=S21;
           
            --SM
            elsif (IR(15 downto 12) = "0111") then
                n_state:=S23;
            else n_state:=S0;

            end if;
            
        when S2 =>
            Opr1 <="00"; --add
            A1 <= T1;
            B1 <= T2;
            n_T1 := Output1;
            C <= Out1Bit_1;

            --if-else conditions 
            if ((IR(15 downto 12)="0000")) then
                n_state:=S3;
         
            else n_state:=S0;--ideally this should never be executed,but just keeping
            end if ;

        when S3 =>
            Opr2 <= "11";--zero detection
            A2 <= T1;
            B2 <= "0000000000000000";
            Z <= Out1Bit_2;
            
            --if-else conditions
            -- ADI S8||| ADD,ADC,ADZ,NDC,NDZ,NDU,LW S4
            if ((IR(15 downto 12)="0001")) then
                n_state:=S8;
            else n_state:=S4;--ideally this should never be executed,but just keeping
            end if ;

        when S4 =>
            RF_W <= '1';
            Write_S <= IR(5 downto 3);
            Write_D <= T1;
            Read_S_1 <= "000";
            Read_S_2 <= "000";

            n_state := S5;

        when S5 =>
        -- ((IR(15 downto 12) = "0000")or(IR(15 downto 12) = "0001")or(IR(15 downto 12) = "0010"))
            -- if((IR(15 downto 12) = "0000" or "0001" or "0010") and (IR(5 downto 3) = "111")) then
if(((IR(15 downto 12) = "0000")or(IR(15 downto 12) = "0001")or(IR(15 downto 12) = "0010"))and(IR(5 downto 3)="111")) then
                n_PC := T1;
            elsif((IR(15 downto 12) = "0011") and (IR(11 downto 9) = "111")) then
                n_PC := T1;
            else
                RF_W <= '1';
                Write_S <= "111";
                Write_D <= PC;
            end if;

            n_state := S0;

        when S6 =>
            Opr1 <="10"; --nand
            A1 <= T1;
            B1 <= T2;
            n_T1 := Output1;

            n_state := S3;

        when S7 =>
            Opr1 <="00"; --add
            A1 <= T1;
            B1(5 downto 0) <= IR(5 downto 0);
            if (IR(5) = '1') then
                B1(15 downto 6) <= "1111111111";
            else
                B1(15 downto 6) <= "0000000000";
            end if;
            n_T1 := Output1;
            C <= Out1Bit_1;

            n_state := S3;

        when S8 =>
            RF_W <= '1';
            Write_S <= IR(8 downto 6);
            Write_D <= T1;
            Read_S_1 <= "000";
            Read_S_2 <= "000";

            n_state := S9;

        when S9 =>
            if(IR(8 downto 6) = "111") then
                n_PC := T1;
            else
                RF_W <= '1';
                Write_S <= "111";
                Write_D <= PC;
            end if;

            n_state := S0;

        when S10 =>
            Opr1 <="11"; --equality checker
            A1 <= T1;
            B1 <= T2;
            if(Out1Bit_1 = '0') then
                n_state := S0;
            else
                n_state := S11;
            end if;
        
        when S11 => 
            Opr1 <="01"; --subtraction
            A1 <= PC;
            B1 <= X"0001"; --subtracting 1
            --syntax courtesy
            --https://rti.etf.bg.ac.rs/rti/ri5rvl/tutorial/TUTORIAL/IEEE/HTML/1076_13.HTM#:~:text=13.7%20Bit%20string%20literals&text=A%20letter%20in%20a%20bit,restricted%20to%200%20and%201.
            n_PC := Output1;

            --if-else condition BEQ(12), JAL(14), JLR(14)
            if (IR(15 downto 12) = "1100") then
                n_state:=S12;
            --JAL AND JLR BOTH GOES TO S14
            else
                n_state:=S14;
            end if;

        when S12 =>
            Opr1 <="00"; --add
            A1 <= PC;
            B1(5 downto 0) <= IR(5 downto 0);
            if (IR(5) = '1') then
                B1(15 downto 6) <= "1111111111";
            else
                B1(15 downto 6) <= "0000000000";
			end if;
            n_PC := Output1;

            n_state := S13;

        when S13 =>
            RF_W <= '1';
            Write_S <= "111";
            Write_D <= PC;

            n_state := S0;

        when S14 =>
            RF_W <= '1';
            Write_S <= IR(11 downto 9);
            Write_D <= PC;

            --if-else S15 for JAL | S16 for JLR
            if (IR(15 downto 12) = "1000") then
                n_state:=S15;
            --JAL AND JLR BOTH GOES TO S14
            elsif (IR(15 downto 12) = "1001")then
                n_state:=S16;

            else n_state:= S0;--actually this should never come to else execution
            end if;

        when S15 =>
            Opr1 <="00"; --add
            A1 <= PC;
            B1(8 downto 0) <= IR(8 downto 0);
            if (IR(8) = '1') then
                B1(15 downto 9) <= "1111111";
            else
                B1(15 downto 9) <= "0000000";
			end if;
            n_PC := Output1;

            n_state := S13;

        when S16 =>
            n_PC := T2;

            n_state := S13;

        when S17 =>
            n_T3(15 downto 7) := IR(8 downto 0);
            n_T3(6 downto 0) := "0000000";

            n_state := S24;



        when S18 =>
            Opr1 <="00"; --add
            A1 <= T2;
            B1(5 downto 0) <= IR(5 downto 0);
            if (IR(5) = '1') then
                B1(15 downto 6) <= "1111111111";
            else
                B1(15 downto 6) <= "0000000000";
			end if;
            n_T2 := Output1;

            -- S19 for LW | S20 for SW
            if (IR(15 downto 12) = "0100") then
                n_state:=S19;
            --JAL AND JLR BOTH GOES TO S14
            elsif (IR(15 downto 12) = "0101")then
                n_state:=S20;
                
            else n_state:= S0;--actually this should never come to else execution
            end if;

        when S19 =>
            Mem_W <= '0';
            Address <= T2;
            Mem_Din <= "0000000000000000";
            n_T1 := Mem_Dout;

            n_state := S3;

        when S20 =>
            Mem_W <= '1';
            Address <= T2;
            Mem_Din <= T1;
            RF_W <= '1';
            Write_S <= "111";
            Write_D <= PC;

            n_state := S0;

        when S21 =>
            multiple := T1;
            for i in 0 to 7 loop
                if(IR(i) = '1') then
                    Mem_W <= '0';
                    Address <= multiple;
                    Mem_Din <= "0000000000000000";
                    RF_W <= '1';
                    --implementing this function using numeric_std and not std_logic because later has problems
                    Write_S <= std_logic_vector(to_unsigned(i,Write_S'length));
                     -- conv_std_logic_vector(i, Write_S'length)
-- https://nandland.com/common-vhdl-conversions/#Numeric-Integer-To-Std_Logic_Vector
-- Convert from Integer to Std_Logic_Vector using Numeric_Std
                    Write_D <= Mem_Dout;
                    --increasing multiple
                    Opr1 <="00"; --add
                    A1 <= multiple;
                    B1 <= "0000000000000001";
                    multiple := Output1;
                end if;
            end loop;

            n_state := S22;

        when S22 =>
            if(IR(7) = '1') then
                RF_W <= '0';
                Read_S_1 <= "111";
                n_PC := Read_D_1;
            else
                RF_W <= '1';
                Write_S <= "111";
                Write_D <= PC;
            end if;

            n_state := S0;

        when S23 =>
            multiple := T1;
            for i in 0 to 7 loop
                if(IR(i) = '1') then
                    RF_W <= '0';
                    Read_S_1 <= std_logic_vector(to_unsigned(i,Read_S_1'length));
                    -- conv_std_logic_vector(i, Write_S'length) 
                    Mem_W <= '1';
                    Address <= multiple;
                    Mem_Din <= Read_D_1;
                    
                    --increasing multiple
                    Opr1 <="00"; --add
                    A1 <= multiple;
                    B1 <= "0000000000000001";
                    multiple := Output1;
                end if;
            end loop;
            
            RF_W <= '1';
            Write_S <= "111";
            Write_D <= PC;

            n_state := S0;
         
         when S24 =>
            RF_w <= '1';
            Write_S <= IR(11 downto 9);
            Write_D <= T3;
            Read_S_1 <= "000";
            Read_S_2 <= "000";
				
				n_state := S25;
				
		when S25 =>
				if(IR(11 downto 9) = "111") then
					n_PC := T3;
				else 
					RF_w <= '1';
            Write_S <= "111";
            Write_D <= PC;
            Read_S_1 <= "000";
            Read_S_2 <= "000";
				end if;

            n_state := S0;
        

        when others => null;

            
            end case;

 	
	if(CLK'event and CLK = '1') then
          if(reset = '1') then
             State <= S0;
          else
             State <= n_state;
--				 T1 <= n_T1;
				 T2 <= n_T2;
				 T3 <= n_T3;
				 PC <= n_PC; 
          end if;
     end if;		
		 
  end process;

end Behave;


--         when S17 =>
--             T1(15 downto 7) <= IR(8 downto 0);
--             T1(6 downto 0) <= "0000000";
--             RF_w <= '1';
--             Write_S <= IR(11 downto 9);
--             Write_D <= T1;
--             Read_S_1 <= "000";
--             Read_S_2 <= "000";

--             n_state := S0;

-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity IITB_CPU is
--    port (CLK,reset: in std_logic);
-- end entity;

-- architecture Behave of IITB_CPU is

--  type FSM_State is (S0,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,S21,S22,S23,S24,S25,S26,S27,S28);
--   signal state : FSM_State;
 
    
--   signal IR, T1, T2, T3,Mem_A1,Mem_D1,Mem_D2,A1,A2,A3,B1,B2,B3,Rf_D1,Rf_D2,RF_D3,Rf_Dout,Mem_Dout: std_logic_vector(15 downto 0);
--   signal PC:std_logic_vector(15 downto 0):="0000000000000000";
--   signal A0,B0 : std_logic_vector(1 downto 0);
--   signal RF_A1,RF_A2,Rf_A3 : std_logic_vector(2 downto 0);
--   signal A4,B4,RF_Write,Mem_Write : std_logic;
--   signal C,Z:std_logic:='0';
--   signal Write_S : std_logic_vector (2 downto 0);
--   component ALU is
-- 	port(Op: in std_logic_vector(1 downto 0);
-- 		  A,B: in std_logic_vector(15 downto 0);
-- 		  O: out std_logic_vector(15 downto 0);
-- 		  Z: out std_logic);
--   end component;
  
-- 	component RF is
--         port(CLK,RF_Write: in std_logic;
--         Read_Select_1,Read_Select_2,Write_Select : in std_logic_vector(2 downto 0);
--         Write_Data: in std_logic_vector(15 downto 0);
--         Read_Data_1,Read_Data_2: out std_logic_vector(15 downto 0));
-- 	end component; 
   
--   component Mem is 
--         port (address,Mem_datain: in std_logic_vector(15 downto 0); clk,Mem_wr: in std_logic;
--               Mem_dataout: out std_logic_vector(15 downto 0));

--   end component;
  
-- begin
-- 	-- Op->Operation_1 , A_1,B_1,Output_1,Out1bit_1
-- 	-- Op->Operation_2 , A_2,B_2,Output_2,Out1bit_2
--   ALU1 : ALU port map(Opr1,A1,B1,Output1,Out1Bit_1);
--   ALU2 : ALU port map(Opr2,A2,B2,Output2,Out1Bit_2);

  
-- --   RF1: RF port map(CLK,RF_Write,RF_A1,RF_A2,RF_A3,RF_D3,RF_D1,RF_D2);
--   RF1: RF port map(CLK,RF_Write,ReadS_1,ReadS_2,Write_S,Write_D,--inputs
--                    ReadD_1,ReadD_2);--outputs
  
--   Mem1 : Mem port map(Address,Mem_Din,clk,Mem_W,Mem_Dout);
  
--   process(reset,CLK,State,T1,T2,T3,PC,IR,C,Z)
  
--      variable n_PC, n_T1, n_T2, n_T3 : std_logic_vector(15 downto 0);
-- 	  variable n_state : FSM_State;
	  
--   begin
-- 	  n_T1:=T1;
-- 	  n_T2:=T2;
-- 	  n_T3:=T3;
--      case State is
	  
--        when S0 =>

    	 
		 
		 
       
	
--        when others => null;

-- 			end case;
-- 		if(clk'event and clk = '1') then
--           if(reset = '1') then
--              State <= S0;
--           else
--              State <= n_state;
-- 				 T1 <= n_T1;
-- 				 T2 <= n_T2;
-- 				 T3 <= n_T3;
-- 				 PC <= n_PC; 
--           end if;
--      end if;		
		 
--   end process;

-- end Behave;



