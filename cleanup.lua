function depositItems()
    -- Deposit Items
    --deposits enderchest
    turtle.select(1)
    turtle.place()
    turtle.select(4)
    turtle.drop()
    turtle.select(1)
    turtle.dig()
    --deposits quarry()
    turtle.select(2)
    turtle.place()
    turtle.select(8)
    turtle.drop()
    turtle.select(2)
    turtle.dig()
end

function fowardNum(blocks)
    for i=1, blocks do
        turtle.forward()
    end
end
    

while true do
    -- checks for refuel
    if turtle.getFuelLevel() < 500 then
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
        end
        turtle.select(3)
        turtle.place()
        turtle.select(7)
        turtle.suck()
        turtle.refuel()
        turtle.select(3)
        turtle.dig()
    else
    end
    
    -- picks up enderchest & quarry (right side)
    turtle.turnRight()
    turtle.select(4)
    turtle.dig() --mines ender chest
    turtle.forward()
    turtle.select(8)
    turtle.digDown() --mines quarry
    turtle.back()
    turtle.turnLeft()
    depositItems()

    fowardNum(6)

    for i=1, 8 do  
        turtle.turnRight()
        turtle.turnRight()
        turtle.turnRight()
        turtle.turnRight()
    end

    -- picks up enderchest & quarry (left side)
    turtle.turnLeft()
    turtle.select(4)
    turtle.dig() --mines ender chest
    turtle.forward()
    turtle.select(8)
    turtle.digDown() --mines quarry
    turtle.back()
    turtle.turnRight()
    depositItems()

    fowardNum(6)

    for i=1, 8 do  
        turtle.turnRight()
        turtle.turnRight()
        turtle.turnRight()
        turtle.turnRight()
    end

end