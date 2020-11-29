function fowardNum(blocks)
  for i=1, blocks do
    while turtle.detect() do
      turtle.dig()
        end        
    turtle.forward()
  end
end

turtle.refuel()

x1 , y1, z1 = gps.locate( 2, false )

-- desired pos
x2=222
y2=70
z2=88

-- find change in
deltaX = x2-x1
deltaY = y2-y1
deltaZ = z1-z2
print(deltaX,deltaY,deltaZ)

-- go to X
if deltaX > 0 then
  turtle.turnRight()
  fowardNum(deltaX)
  turtle.turnLeft()
elseif deltaX < 0 then
  turtle.turnLeft()
  fowardNum(math.abs(deltaX))
  turtle.turnRight()
end

-- go to Z
if deltaZ > 0 then
  fowardNum(deltaZ)
elseif deltaZ < 0 then
  turtle.turnLeft()
  turtle.turnLeft()
  fowardNum(math.abs(deltaZ))
  turtle.turnLeft()
  turtle.turnLeft()
end

-- go to Y
if deltaY > 0 then
  for i=1, deltaY do
    while turtle.detectUp() do
      turtle.digUp()
        end        
    turtle.up()
  end
elseif deltaY < 0 then
  for i=1, math.abs(deltaY) do
    while turtle.detectDown() do
      turtle.digDown()
        end        
    turtle.down()
  end
end

