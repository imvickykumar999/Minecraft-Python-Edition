
class Scene(Entity):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        Entity(parent=self, position=Vec3(0.599168, 0.686337, -1.45379), rotation=Vec3(24.7479, 34.8705, -11.7304), scale=Vec3(1.97133, 1.36934, 3.045), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(-6.45622, -0.0240115, 1.68942), rotation=Vec3(-16.9971, 28.8069, 7.63839), scale=Vec3(15.677, 15.677, 15.677), model='plane', shader='lit_with_shadows_shader', texture='grass', color='#ffefefff', )
        Entity(parent=self, position=Vec3(3.67346, 0, -1.68576), rotation=Vec3(3.20861, 36.4547, -51.5643), model='cube', shader='lit_with_shadows_shader', color=color.orange, collider='box', )
        Entity(parent=self, position=Vec3(1.40786, -0.107902, 3.69981), scale=Vec3(1.12607, 0.782195, 1.73937), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(2.76964, -0.107902, 3.69981), scale=Vec3(1.12607, 0.782195, 1.73937), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(4.1147, -0.107902, 3.69981), scale=Vec3(1.12607, 0.782195, 1.73937), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(4.1147, 1.30049, 3.69981), scale=Vec3(0.720138, 2.449, 1.11235), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(4.1147, 2.60157, 3.69981), scale=Vec3(0.882537, 0.411635, 1.36319), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(5.48133, -0.107902, 3.69981), scale=Vec3(1.12607, 0.782195, 1.73937), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(5.48133, 1.30049, 3.69981), scale=Vec3(0.720138, 2.449, 1.11235), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(5.48133, 2.60157, 3.69981), scale=Vec3(0.895863, 0.417851, 1.38378), model='cube', shader='lit_with_shadows_shader', color='#c9957aff', collider='box', )
        Entity(parent=self, position=Vec3(8.34962, -0.105901, 4.12458), rotation=Vec3(-16.2241, 42.4637, -86.0656), scale=Vec3(1.12607, 0.782196, 1.73937), model='cube', shader='lit_with_shadows_shader', color='#c1a07aff', collider='box', )
        Entity(parent=self, position=Vec3(0, 0, 0), rotation=Vec3(-61.9394, 36.3379, -90.5718), scale=Vec3(6.84665, 4.08809, 3.89381), model='cube', shader='lit_with_shadows_shader', color='#c1a07aff', collider='box', )
        Entity(parent=self, position=Vec3(6.32048, 0.0726001, 5.91117), rotation=Vec3(-16.2241, 42.4637, -86.0656), scale=Vec3(1.12607, 0.782196, 1.73937), model='cube', shader='lit_with_shadows_shader', color='#c1a07aff', collider='box', )
