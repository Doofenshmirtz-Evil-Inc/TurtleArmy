while true do
    -- checks for refuel
    if turtle.getFuelLevel() < 500 then
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
        end
        turtle.select(3)
        turtle.place()
        turtle.select(7)
        turtle.refuel()
        turtle.suck()
        turtle.select(3)
        turtle.dig()
        turtle.turnLeft()
    else
    end

    -- check if turt needs pipes
    turtle.select(5)
    if turtle.getItemCount() < 20 then
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
            end
        turtle.select(1)
        turtle.place()
        turtle.select(5)
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.select(1)
        turtle.dig()
        turtle.turnLeft()
    else
    end

    -- check if turt needs quarries
    turtle.select(6)
    if turtle.getItemCount() < 3 then
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
            end
        turtle.select(2)
        turtle.place()
        turtle.select(6)
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.select(2)
        turtle.dig()
        turtle.turnLeft()
    else
    end

    -- check if turt needs chests
    turtle.select(8)
    if turtle.getItemCount() < 3 then
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
            end
        turtle.select(4)
        turtle.place()
        turtle.select(8)
        neededItems = 64 - turtle.getItemCount()
        turtle.suck(neededItems)
        turtle.select(4)
        turtle.dig()
        turtle.turnLeft()
    else
    end


    -- place segment
    turtle.turnRight()
    while turtle.detect() do
        turtle.select(9)
        turtle.dig()
    end     
    turtle.select(6) --select quarry
    turtle.place()
    
    -- place chest
    while turtle.detectUp() do
        turtle.select(9)
        turtle.digUp()
    end
    turtle.up()
    while turtle.detect() do
        turtle.select(9)
        turtle.dig()
    end
    turtle.select(8)
    turtle.place()
    -- dumps trash
    turtle.select(9)
    if turtle.getItemCount() > 0 then
        for i=0, 7 do
            turtle.select(9+i)
            turtle.drop()
        turtle.select(7)
        turtle.drop()
        end
    end
    turtle.down()

    turtle.turnRight()
    for i = 1, 6 do
        turtle.turnRight()
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
        end
        turtle.turnRight()
        turtle.turnRight()
        turtle.back()
        turtle.select(5) --select pipe
        turtle.place()
    end
    turtle.turnRight()
    while turtle.detect() do
        turtle.select(9)
        turtle.dig()
    end     
    turtle.select(6) --select quarry
    turtle.place()
    
    -- place chest
    while turtle.detectUp() do
        turtle.select(9)
        turtle.digUp()
    end
    turtle.up()
    while turtle.detect() do
        turtle.select(9)
        turtle.dig()
    end
    turtle.select(8)
    turtle.place()
    -- dumps trash
    turtle.select(9)
    if turtle.getItemCount() > 0 then
        for i=0, 7 do
            turtle.select(9+i)
            turtle.drop()
        turtle.select(7)
        turtle.drop()
        end
    end
    turtle.down()

    turtle.turnLeft()
    turtle.select(5) --select pipe
    for i = 1, 6 do
        turtle.turnRight()
        turtle.turnRight()
        while turtle.detect() do
            turtle.select(9)
            turtle.dig()
        end
        turtle.turnRight()
        turtle.turnRight()
        turtle.back()
        turtle.select(5) --select pipe
        turtle.place()
    end
    turtle.turnLeft()
    turtle.turnLeft()
end