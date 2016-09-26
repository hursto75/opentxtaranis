-- Headspeed Calc
-- Version 0.5 Brad Kelley
-- setup for Trex500
local maingear = 162
local piniongear = 14
local rpm = 18000
local gearratio = 0
local headspeed = 0

local function init()
   gearratio = math.floor((maingear / piniongear) * 100 ) / 100 
   rpm = getValue("RPM")
end


local function background()
   rpm = getValue("RPM")
   
   headspeed = math.floor((rpm / gearratio) * 100 ) / 100

   end
   


local function run(event)
   background()
   print(event)
   
   lcd.drawText(1,0,'Trex500 Headspeed',INVERS)
   
   lcd.drawText(1,15,'Main Gear:',SMLSIZE)
   lcd.drawText(60,15,maingear,SMLSIZE)
   
   lcd.drawText(1,22,'Pinion Gear:',SMLSIZE)
   lcd.drawText(60,22,piniongear,SMLSIZE)
   
   lcd.drawText(1,29,'Gear Ratio:',SMLSIZE)
   lcd.drawText(60,29,gearratio,SMLSIZE)
   
   lcd.drawText(1,43,'RPM:',SMLSIZE)
   lcd.drawText(40,43,rpm,SMLSIZE)
      
   lcd.drawText(90,15,'Head Speed:',0)
   lcd.drawText(90,30,headspeed,DBLSIZE)
   
end


return { init=init, background=background, run=run }