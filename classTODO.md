Class structure
===============

## Non-static objects

###Entity 

Variables:
- x
- y
- width
- height
- image
- layer

Methods:
- move()
- destroy()
- getCenter()
- initialize(x,y,w,h)
- animate(png)
- update()
- draw()

###Entity -> Player 

Variables:
- item[]
- speed 

Methods:
- placeItem()
- pickUpItem(item)


###Entity -> Enemies

Variables:
- speed 

(*
 *###Entity -> Traps
 *
 *###Entity -> ItemEntity
 *
 *Variables:
 *- 
 *
 *Methods:
 *)


##World

###World

Variables:
- layout[][]
- XSIZE
- YSIZE

Methods:

- swap()
- update()
- initialize()

###Tile

Variables:

- image
- layer
