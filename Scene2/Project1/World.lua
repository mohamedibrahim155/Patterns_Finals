
SetGameObject("SPACESHIP")
BeginCommand("SERIAL",1)  -- First param as string ->(SERIAL or PARALLEL) |  second param ->  A unique group ID required
MoveTo(-1,5,-1,1.9,0.2,0.9)
MoveTo(13,1,-40, 1,0.8,0.2)
Endcommand(1)


SetGameObject("SPACESHIP")
BeginCommand("PARALLEL",1)  -- First param as string ->(SERIAL or PARALLEL) |  second param ->  A unique group ID required
OrientTo(70,90,-40,2,0.5,0.4)
WaitForSeconds(2)
OrientTo(60,70,-30,.3,0.1,0.5)
WaitForSeconds(.2)
OrientTo(-60,70,30,.9, 1,0.2)
Endcommand(1)

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


--SetGameObject("SPACESHIP")
--BeginCommand("SERIAL",3) 
--MoveTo(1,1,0,0.2)
--OrientTo(-40,0,0,0.2)
--MoveTo(11,1,-30,.5)
--OrientTo(40,0,0,0.1,1)
--MoveTo(35,1,20,.5,1)
----OrientTo(-20,0,0,0.1,1)
--MoveAlongAxisWithTime(1,5,20)
--Endcommand(3)

-- ASTEROIDGROUP1 movement



SetGameObject("ASTEROID1")
BeginCommand("PARALLEL", 2)
MoveTo(30,2,80,18)
OrientTo(-360,360,0,18)
Endcommand(2)

--SetGameObject("ASTEROID2")
--BeginCommand("PARALLEL", 2)
--MoveTo(-60,-1,-40,3.1)
--OrientTo(360,90,0,5)
--Endcommand(2)
--
--SetGameObject("ASTEROID4")
--BeginCommand("PARALLEL", 2)
--MoveAlongAxisWithTime(1,3,-35)
--OrientTo(360,90,0,5)
--Endcommand(2)
--
--SetGameObject("ASTEROID3")
--BeginCommand("PARALLEL", 2)
--MoveAlongAxisWithTime(1,3,-20)
--OrientTo(360,90,0,5)
--Endcommand(2)