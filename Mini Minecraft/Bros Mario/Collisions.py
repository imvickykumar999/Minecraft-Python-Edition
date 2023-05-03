
from ursina import *
from random import randint

def update():
    global dx

    R=randint(0,255)
    G=randint(0,255)
    B=randint(0,255)

    ball.x += dx
    hit_info = ball.intersects()

    if hit_info.hit:
        dx =- dx # bounce back
        
        ball .color = color.rgb(R,G,B)
        box_2.color = color.rgb(B,R,G)
        box_1.color = color.rgb(G,B,R)

    if hit_info.entity in boxes:
        # destroy(hit_info.entity)
        pass


app = Ursina()
boxes=[]

ball = Entity(
            model='sphere',
            scale=.5,
            position=(0,0,0),
            collider='box',
        )

box_1 = Entity( 
            model='cube',
            color=color.cyan,
            texture='white_cube',
            scale=(2,4,2),
            position=(4,0,0),
            collider='box',
        )

box_2 = duplicate(box_1, x=-4)
boxes.append(box_1)
boxes.append(box_2)

dx=.03
app.run()
