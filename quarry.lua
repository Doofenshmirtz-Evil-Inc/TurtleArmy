-- INFO
-- Must use mining turtle with the following inventory.
-- Slot 1 = Pipe Ender Chest
-- Slot 2 = Quarry Ender Chest
-- Slot 3 = Fuel Ender Chest
-- Slot 4 = Ender Chest for Quarry Items Ender Chest
-- Slot 9 = Block Ender Chest
-- Slot 11 = 3 or more Chunk Loaders

function placeQuarry()
    turtle.turnRight()
    while turtle.detect() do
        turtle.select(12)
        turtle.dig()
    end     
    turtle.forward()

    -- check if there's a block to palce quarry on
    if turtle.detectDown() == false then
        turtle.select(10)
        turtle.placeDown()
    end
    -- place chest
    while turtle.detectUp() do
        turtle.select(11)
        turtle.digUp()
    end
    turtle.select(8)
    turtle.placeUp()

    -- dumps trash
    turtle.select(11)
    if turtle.getItemCount() > 0 then
        for i=1, 5 do
            turtle.select(11+i)
            turtle.dropUp()
        turtle.select(7)
        turtle.dropUp()
        end
    end
    turtle.back()

    -- place quarry
    turtle.select(6) --select quarry
    turtle.place()

    --grab chunk loader
    turtle.turnRight()
    turtle.turnRight()
    turtle.select(11)
    turtle.dig()
end

function placePipe()
    -- Place Pipes
    for i = 1, 6 do
        turtle.turnRight()
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.turnRight()
        turtle.turnRight()
        turtle.back()
        turtle.select(5) --select pipe
        turtle.place()
    end
end

function fowardNum(blocks)
    for i=1, blocks do
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.forward()
    end
end

-- checks for refuel
if turtle.getFuelLevel() < 500 then
    while turtle.detect() do
        turtle.select(12)
        turtle.dig()
    end
    turtle.select(3)
    turtle.place()
    turtle.select(7)        
    neededItems = 64 - turtle.getItemCount()
    turtle.suck(neededItems)
    turtle.refuel()
    turtle.select(3)
    turtle.dig()
else
end

--palce chunk loaders
turtle.turnLeft()
while turtle.detect() do
    turtle.select(12)
    turtle.dig()
end
turtle.select(11)
turtle.place()
turtle.turnRight()
fowardNum(6)
turtle.turnRight()
while turtle.detect() do
    turtle.select(12)
    turtle.dig()
end
turtle.select(11)
turtle.place()
turtle.turnRight()
fowardNum(6)
turtle.turnRight()
turtle.turnRight()

while true do
    -- checks for refuel
    if turtle.getFuelLevel() < 500 then
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.select(3)
        turtle.place()
        turtle.select(7)        
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.refuel()
        turtle.select(3)
        turtle.dig()
    else
    end

    -- check if turt needs pipes
    turtle.select(5)
    if turtle.getItemCount() < 20 then
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.select(1)
        turtle.place()
        turtle.select(5)
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.select(1)
        turtle.dig()
    else
    end

    -- check if turt needs quarries
    turtle.select(6)
    if turtle.getItemCount() < 3 then
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.select(2)
        turtle.place()
        turtle.select(6)
        neededItems = 64 - turtle.getItemCount()
        if turtle.suck(neededItems) == false then
            x=0
            repeat
                if turtle.suck(neededItems) == true then
                    x = 1
                end
            until (x == 1)
        end
        turtle.select(2)
        turtle.dig()
    else
    end

    -- check if turt needs chests
    turtle.select(8)
    if turtle.getItemCount() < 3 then
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.select(4)
        turtle.place()
        turtle.select(8)
        neededItems = 64 - turtle.getItemCount()
        if turtle.suck(neededItems) == false then
            x=0
            repeat
                if turtle.suck(neededItems) == true then
                    x = 1
                end
            until (x == 1)
        end
        turtle.select(4)
        turtle.dig()
    else
    end

    --checks if turt needs blocks
    turtle.select(10)
    if turtle.getItemCount() < 10 then
        while turtle.detect() do
            turtle.select(12)
            turtle.dig()
        end
        turtle.select(9)
        turtle.place()
        turtle.select(10)
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.select(9)
        turtle.dig()
    end

    -- Place Right Side
    placeQuarry()
    turtle.turnLeft()

    -- Place Pipes
    placePipe()

    --place next chunkloader
    turtle.turnLeft()
    turtle.turnLeft()
    fowardNum(6)
    turtle.turnLeft()
    while turtle.detect() do
        turtle.select(12)
        turtle.dig()
    end
    turtle.select(11)
    turtle.place()
    turtle.turnLeft()
    fowardNum(6)
    
    --Place Left Side
    placeQuarry()
    turtle.turnRight()
   
    -- Place Pipes
    placePipe()

    --place next chunkloader
    turtle.turnLeft()
    turtle.turnLeft()
    fowardNum(6)
    turtle.turnRight()
    while turtle.detect() do
        turtle.select(12)
        turtle.dig()
    end
    turtle.select(11)
    turtle.place()
    turtle.turnRight()
    fowardNum(6)


    turtle.turnLeft()
    turtle.turnLeft()
end