
--SetGameObject("Sphere2")
--BeginCommand("SERIAL",1)  -- First param as string ->(SERIAL or PARALLEL) |  second param ->  A unique group ID required
--MoveTo(5,0,0,1)
--MoveTo(2,0,0,2)
--MoveTo(10,11,0,3)
--MoveTo(-6,2,0,2)
--MoveTo(0,0,0,1)
--Endcommand(1)
--
--
--
--SetGameObject("Sphere3")
--BeginCommand("PARALLEL",2)  -- First param as string ->(SERIAL or PARALLEL) |  second param ->  A unique group ID required
--MoveTo(-10,0,0,2)
--MoveTo(-3,-2,1,2)
--Endcommand(2)

--BeginCommand("SERIAL",3) 
--
--SpawnObject("SphereTest")
--SetGameObject("SphereTest")
--OrientTo(0,50,0,3)
----MoveTo()
----FollowObject("Sphere2", 3, 1, 1, 5, 0,-2,0)   --(targetName, speed, acceleration, deceleration, distance, follow offset[x,y,z])
--Endcommand(3)


SetGameObject("SPACESHIP")
BeginCommand("SERIAL",3) 
MoveTo(1,1,0,0.2)
OrientTo(-40,0,0,0.2)
MoveTo(11,1,-30,.5)
OrientTo(40,0,0,0.1,1)
MoveTo(35,1,20,.5,1)
--OrientTo(-20,0,0,0.1,1)
MoveAlongAxisWithTime(1,5,20)
Endcommand(3)

-- ASTEROIDGROUP1 movement
SetGameObject("ASTEROIDGROUP1")
BeginCommand("SERIAL", 2)
MoveAlongAxisWithTime(1,5,-5)
Endcommand(2)

-- ASTEROIDGROUP2 movement
SetGameObject("ASTEROIDGROUP2")
BeginCommand("SERIAL", 2)
MoveAlongAxisWithTime(1,5,-10)
Endcommand(2)

-- ASTEROIDGROUP3 movement
SetGameObject("ASTEROIDGROUP3")
BeginCommand("SERIAL", 2)
MoveAlongAxisWithTime(1,5,-16)
Endcommand(2)


SetGameObject("ASTEROID1")
BeginCommand("PARALLEL", 2)
MoveTo(-40,-1,2,2)
OrientTo(360,90,0,5)

Endcommand(2)