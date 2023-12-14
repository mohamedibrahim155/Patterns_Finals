
scne1time =5

function Scene2()
	-- body

    
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
      OrientTo(-60,70,30,.9, 0.5,0.2)
      Endcommand(1)

    
    
      SetGameObject("ASTEROID1")
      BeginCommand("PARALLEL", 2)
      MoveTo(30,2,80,18)
      OrientTo(-360,360,0,18)
      Endcommand(2)
      
      
      SetGameObject("Fighter")
      BeginCommand("SERIAL",2) 
      
      WaitForSeconds(2)
      
      MoveTo(-1,5,-5,1.9)
      MoveTo(13,1,-29, 1)
    
    
    
      Endcommand(2)
      
      
      SetGameObject("Fighter")
      BeginCommand("PARALLEL",2) 
      
      WaitForSeconds(2)
      OrientTo(90,-60,0,2)
      WaitForSeconds(2)
      OrientTo(70,-60,0,.3)
      WaitForSeconds(.2)
      OrientTo(70,-10,30,.3)
      
      Endcommand(2)
    
    --------------------------------------
    
    
      SetGameObject("FighterTwo")
      BeginCommand("SERIAL",2) 
      
      WaitForSeconds(2)
      MoveTo(0,-1,-13,1.9)
      
      MoveTo(13,-1,-29, 1)
    
    
    
     Endcommand(2)
     
     
     SetGameObject("FighterTwo")
     BeginCommand("PARALLEL",2) 
     
     WaitForSeconds(2)
     OrientTo(90,-60,0,2)
     WaitForSeconds(2)
     OrientTo(70,-60,0,.3)
     WaitForSeconds(.2)
     OrientTo(70,-10,30,.3)
     
     Endcommand(2)
     
     ------------------------------------------
     
     SetGameObject("FighterThree")
     BeginCommand("SERIAL",2) 
     
     WaitForSeconds(2)
     
     MoveTo(-1,2,-2, 1.9)
     MoveTo(13,2,-29, 1)
     
     
     
     Endcommand(2)
     
     
     SetGameObject("FighterThree")
     BeginCommand("PARALLEL",2) 
     
     WaitForSeconds(2)
     OrientTo(90,-60,0,2)
     WaitForSeconds(2)
     OrientTo(70,-60,0,.3)
     WaitForSeconds(.2)
     OrientTo(70,-10,30,.3)
     
     Endcommand(2)
     
     
     SetGameObject("FighterFour")
     BeginCommand("SERIAL",2) 
     
     WaitForSeconds(2)
     
     MoveTo(-1,5,-9,1.9)
     MoveTo(13,5,-29, 1)
     
     

     Endcommand(2)


     SetGameObject("FighterFour")
     BeginCommand("PARALLEL",2) 
     
     WaitForSeconds(2)
     OrientTo(90,-60,0,2)
     WaitForSeconds(2)
     OrientTo(70,-60,0,.3)
     WaitForSeconds(.2)
     OrientTo(70,-10,30,.3)
     
     Endcommand(2)
 end


--Scene1()
Scene2()