-- Temp Screen
-- Version 0.5 Brad Kelley
-- setup for Trex500
local escTemp = 0
local battTemp = 0


local function background()
   escTemp = getValue("Tmp1")
   battTemp = getValue("Tmp2")
   
   end
   


local function run(event)
   background()
   print(event)
   
   lcd.clear()
   
   lcd.drawText(1,0,'Trex500 Temps',INVERS)
   
   lcd.drawText(1,15,'Batt Temp:',0)
   lcd.drawText(1,30,battTemp,DBLSIZE)
   
   lcd.drawText(90,15,'ESC Temp:',0)
   lcd.drawText(90,30,escTemp,DBLSIZE)
   
end


return { background=background, run=run }