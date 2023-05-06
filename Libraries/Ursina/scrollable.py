from ursina import *

class Scrollable():

    def __init__(self, **kwargs):
        super().__init__()
        self.max = inf
        self.min = -inf
        self.scroll_speed = .05
        self.scroll_smoothing = 16
        self.axis = 'y'
        self.target_value = None

        for key, value in kwargs.items():
            setattr(self, key, value)

    def update(self):
        # lerp position
        if self.target_value:
            setattr(self.entity, self.axis, lerp(getattr(self.entity, self.axis), self.target_value, time.dt * self.scroll_smoothing))

    def input(self, key):
        if not mouse.hovered_entity:
            return

        if not self.target_value:
            self.target_value = getattr(self.entity, self.axis)

        if self.entity.hovered or mouse.hovered_entity.has_ancestor(self.entity):
            # print(key)
            if key == 'scroll up':
                self.target_value -= self.scroll_speed
            if key == 'scroll down':
                self.target_value += self.scroll_speed

            self.target_value = max(min(self.target_value, self.max), self.min)

lyrics = ''' 
LYRICS

Fly me to the moon
Let me play up there with those stars
Let me see what spring is like on Jupiter and Mars
In other words, hold my hand
In other words, baby, kiss me
Fill my heart with song
And let me sing forever more
You are all I long for
All I worship and adore
In other words (in other words)
Please be true
In other words
I'm in love with you
In other words, hold my hand
In other words, baby, kiss me
Fill my heart with song
Let me sing forever more
You are all I long for
All I worship and adore
In other words
Please be true
In other words
In other words
In other words (in other words)
I, I
I love (I love)
I love you
'''

if __name__ == '__main__':
    '''
    This will make target entity move up or down when you hover the entity/its children
    while scrolling the scroll wheel.
    '''

    app = Ursina()
    Audio('Fly me to the moon Lyrics.mp3', loop = False, autoplay = True).play()
    
    p = Button(model='quad', scale=(.8, 1), collider='box')
    for i,j in enumerate(lyrics.split('\n')):
        Button(parent=p , scale_y=.05, text=j, origin_y=.5, y=.5-(i*.05))

    p.add_script(Scrollable())
    app.run()
