local function run(event)
   lcd.clear()
   lcd.drawText(7,2,event,0)
end

return { run=run }