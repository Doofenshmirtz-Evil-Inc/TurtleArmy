turtle.select(2)
turtle.refuel()
function fowardNum(blocks)
    for i=1, blocks do
        turtle.forward()
    end
end

turtle.select(1)

fowardNum(63)
turtle.place()

turtle.turnLeft()
turtle.turnLeft()

fowardNum(63)

turtle.turnLeft()
fowardNum(63)
turtle.place()

turtle.turnLeft()
turtle.turnLeft()

fowardNum(62)
turtle.place()

turtle.turnLeft()
turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.forward()
turtle.turnLeft()
print("done master!")