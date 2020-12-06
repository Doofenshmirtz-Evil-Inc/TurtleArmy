-- INFO
-- Must use mining turtle with the following inventory.
-- Slot 1 = Ender Chest for Quarry Items Ender Chest
-- Slot 2 = Quarry Ender Chest
-- Slot 3 = Fuel Ender Chest
-- Slot 4 = Block Ender Chest
-- Slot 9 = 3 or more Chunk Loaders
function depositItems()
    -- Deposit Items
    --deposits enderchest
    turtle.select(1)
    turtle.place()
    turtle.select(5)
    turtle.drop(turtle.getItemCount()-1)
    turtle.select(1)
    turtle.dig()
    --deposits quarry()
    turtle.select(2)
    turtle.place()
    turtle.select(6)
    turtle.drop(turtle.getItemCount()-1)
    turtle.select(2)
    turtle.dig()

end

function fowardNum(blocks)
    for i=1, blocks do
        while turtle.detect() do
            turtle.select(10)
            turtle.dig()
        end
        turtle.forward()
    end
end

function downNum(blocks)
    for i=1, blocks do
        while turtle.detectDown() do
            turtle.select(10)
            turtle.digDown()
        end
        turtle.down()
    end
end

function upNum(blocks)
    for i=1, blocks do
        while turtle.detectUp() do
            turtle.select(10)
            turtle.digUp()
        end
        turtle.up()
    end
end

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



-- place chunk loaders
fowardNum(6)
upNum(1)
turtle.turnLeft()
while turtle.detect() do
    turtle.select(10)
    turtle.dig()
end
turtle.select(9)
turtle.place()
turtle.down()
turtle.turnLeft()
fowardNum(6)
upNum(1)
turtle.turnLeft()
while turtle.detect() do
    turtle.select(10)
    turtle.dig()
end
turtle.select(9)
turtle.place()
turtle.turnLeft()
turtle.down()
    

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

    --checks if turt needs blocks
    turtle.select(8)
    if turtle.getItemCount() < 10 then
        while turtle.detect() do
            turtle.select(10)
            turtle.dig()
        end
        turtle.select(4)
        turtle.place()
        turtle.select(8)
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.select(4)
        turtle.dig()
    end

    -- Right Quarry
    -- Check if quarry is done
    turtle.turnRight()
    turtle.turnRight()
    fowardNum(1)
    turtle.turnLeft()
    fowardNum(1)
    downNum(2)
    fowardNum(1)
    while turtle.detect() do
        turtle.select(10)
        turtle.dig()
    end
    turtle.select(8)
    turtle.place()

    -- spin x times
    for i=1, 5 do
        turtle.turnLeft()
        turtle.turnLeft()
        turtle.turnLeft()
        turtle.turnLeft()
    end

    if turtle.detect() == false then
        --keep checking until quarry done
        x = 0
        repeat
            if turtle.place() == false then
                turtle.turnLeft()
                turtle.turnLeft()
                turtle.select(8)
                if turtle.getItemCount() < 10 then
                    while turtle.detect() do
                        turtle.select(10)
                        turtle.dig()
                    end
                    turtle.select(4)
                    turtle.place()
                    turtle.select(8)
                    neededItems = 64 - turtle.getItemCount()
                    turtle.suck(neededItems)
                    turtle.select(4)
                    turtle.dig()
                end
                turtle.turnRight()
                turtle.turnRight()
            end    

            -- spin x times
            for i=1, 5 do
                turtle.turnLeft()
                turtle.turnLeft()
                turtle.turnLeft()
                turtle.turnLeft()
            end

            if turtle.detect() == true then
                x = 1
            end
        until (x == 1)
    end
    -- quarry is done:
    turtle.back()
    turtle.up()
    turtle.up()
    turtle.turnLeft()
    
    -- dumps trash
    turtle.select(10)
    if turtle.getItemCount() > 0 then
        for i=0, 6 do
            turtle.select(10+i)
            turtle.drop()
        turtle.select(7)
        turtle.drop()
        end
    end
    

    -- mine enderchest
    turtle.select(5)
    turtle.dig()
    turtle.forward()
    -- mine quarry
    turtle.select(6)
    turtle.digDown()
    -- mine chunk loader
    turtle.select(9)
    turtle.digUp()    

    turtle.turnLeft()
    fowardNum(1)
    turtle.turnRight()
    depositItems()

    -- place chunk loader
    fowardNum(12)
    upNum(1)
    turtle.turnRight()
    while turtle.detect() do
        turtle.select(10)
        turtle.dig()
    end
    turtle.select(9)
    turtle.place()
    turtle.turnRight()
    turtle.down()
    fowardNum(7)
    

    -- Left Quarry
    turtle.turnRight()
    fowardNum(1)
    downNum(2)
    fowardNum(1)
    while turtle.detect() do
        turtle.select(10)
        turtle.dig()
    end
    turtle.select(8)
    turtle.place()
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.turnLeft()
    if turtle.detect() == false then
        --keep checking until quarry done
        x = 0
        repeat
            turtle.place()
            turtle.turnLeft()
            turtle.turnLeft()
            turtle.turnLeft()
            turtle.turnLeft()
            if turtle.detect() == true then
                x = 1
            end
        until (x == 1)
    end
    -- quarry is done:
    turtle.back()
    turtle.up()
    turtle.up()
    turtle.turnRight()

    -- dumps trash
    turtle.select(10)
    if turtle.getItemCount() > 0 then
        for i=0, 6 do
            turtle.select(10+i)
            turtle.drop()
        turtle.select(7)
        turtle.drop()
        end
    end

    --mine enderchest
    turtle.select(5)
    turtle.dig()
    turtle.forward()
    --mine quarry
    turtle.select(6)
    turtle.digDown()
    --mine chunk loader
    turtle.select(9)
    turtle.digUp()    

    turtle.turnRight()
    fowardNum(1)
    turtle.turnLeft()
    depositItems()

    -- palce chunkloader
    fowardNum(12)
    upNum(1)
    turtle.turnLeft()
    while turtle.detect() do
        turtle.select(10)
        turtle.dig()
    end
    turtle.select(9)
    turtle.place()
    turtle.turnLeft()
    turtle.down()
    fowardNum(6)
    turtle.turnRight()
    turtle.turnRight()
end