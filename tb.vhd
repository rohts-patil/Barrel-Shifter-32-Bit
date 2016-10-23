LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BARREL
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic_vector(4 downto 0);
         Y : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := X"00000001";
   signal sel : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal Y : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BARREL PORT MAP (
          A => A,
          sel => sel,
          Y => Y
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      sel<="00001";
		wait for 20 ns;	
     
		sel<="00010";
		wait for 20 ns;
			
      
		sel<="00011";
		wait for 20 ns;	
     
		sel<="00100";
		wait for 20 ns;	
     
		sel<="00101";
		wait for 20 ns;	
      
		sel<="00110";
		wait for 20 ns;	
      
		sel<="00111";
      

      -- insert stimulus here 

      wait;
   end process;

END;
