fill -12 22 24 -12 23 24 air destroy
particle cloud -11.5 23.0 24.5 0.7 0.8 0.9 0.1 20
playsound entity.generic.explode master @a -11.5 23.0 24.5 1.75 1
schedule function game:mushroom_gate/frame/3 8s