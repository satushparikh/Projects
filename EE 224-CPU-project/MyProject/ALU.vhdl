 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity ALU is--Op->Operation , A,B,Output,Out1bit
	port(Op: in std_logic_vector(1 downto 0);
		  A,B: in std_logic_vector(15 downto 0);
		  O: out std_logic_vector(15 downto 0);
		  Z: out std_logic);
end entity;

architecture built of ALU is

begin

    process (Op,A,B)
    variable Sum,Diff : std_logic_vector(16 downto 0) := (others => '0');
    variable Bc,Ac : std_logic_vector(16 downto 0) := (others => '0');
    variable Nandn : std_logic_vector(15 downto 0) := (others => '0');
    variable Equality : std_logic:='0';

begin 
     --Op="00"  Sum  Carry
     --Op="01"  Diff Borrow_Last(X)
     --Op="10"  NAND X(DC)=0, in NAND we modify only Z flag
    --Op ="11"  X    Equality detector
   
    --  Sum <= std_logic_vector(unsigned(A)+unsigned(B));
   --error coming expression has 16 elements but must have 17 elements so changed to 
    Ac(15 downto 0) := A;
    Bc(15 downto 0) := B;
    Sum := std_logic_vector(unsigned(Ac)+unsigned(Bc));
     Nandn := A nand B;
     --Diff would always be positive
     -- we have only used subtraction
     -- for subtracting 1 from number >= 1
     Diff(15 downto 0):= std_logic_vector(unsigned(A) - unsigned(B(15 downto 0)) ); 
     Diff(16):= '0'; --subtraction would always be positive

     --16 bit output
     case Op is
        when "00" =>  --Op="00"  Sum  Carry
                O <= Sum(15 downto 0);
                Z<= Sum(16);
        when "01" =>--Op="01"  Diff Borrow_Last(X)
                O <=  Diff(15 downto 0);
                Z<= '0';
        
        when "10" =>--Op="10"  NAND X(DC)=0, in NAND we modify only Z flag
                O <= Nandn;
                Z<= '0';
        when "11" =>--Op ="11"  X    Equality detector
                O <= Sum(15 downto 0);
                Z<= Equality;

        end case;
         --Op="10"  NAND X(DC)=0, in NAND we modify only Z flag
        --  Sum(15 downto 0)  when (Op="11"); --Op ="11"  X    Equality detector
        
        -- realised that when else cannot be used inside process
        -- Equality<= '1' when (A=B) else 
        --             '0';
    
    end process;
end architecture built;
--syntax referred from
-- https://nandland.com/common-vhdl-conversions/#Numeric-Unsigned-To-Std_Logic_Vector





-- if(A=B) then
    --      Equality:='1';
    -- else 
    --      Equality:='0';
    -- end if;
    -- --1 bit output
    --  Z<= Sum(16) when (Op="00") else
    --     '0' when (Op="01") else
    --     '0' when (Op="10") else
    --      Equality when (Op="11"); 