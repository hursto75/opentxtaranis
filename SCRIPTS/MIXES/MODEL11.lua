– Hello World, Taranis style
– by Super Duper Student 6/29/2014
--This script will allow the user to define an input and then return
-- the same input and also the inverse.
 
local inputs = { {“Your Val”, SOURCE } }
 
local outputs = { “Val”, “Inv” }
 
local function run_sub( yourval )
            — Return: We are going to get the negative of the input value and return both
           local invval = yourval*-1
 
            return yourval, invval
end
 
– Return statement
return { run=run_sub, output=outputs, input=inputs}