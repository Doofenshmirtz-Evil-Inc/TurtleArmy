-- check if turtle can make it home

-- get current pos
x1 , y1, z1 = gps.locate( 2, false )

-- desired pos
x2=222
y2=70
z2=88

-- find change in
deltaX = x2-x1
deltaY = y1-y2
deltaZ = z1-z2
totalBlocks = math.abs(deltaX) + math.abs(deltaY) + math.abs(deltaZ)
print(totalBlocks)

-- get Fuel Level
fuelLevel = turtle.getFuelLevel()

if totalBlocks == fuelLevel then
    -- get fuel somehow
else
    -- continue whatever