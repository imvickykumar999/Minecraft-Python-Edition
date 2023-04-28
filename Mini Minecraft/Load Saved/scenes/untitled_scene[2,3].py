
class Scene(Entity):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        Entity(parent=self, position=Vec3(2.1786, -3.58099, 6.256), scale=Vec3(1, 1.6039, 1), model='cube', origin=Vec3(0, -0.5, 0), shader='lit_with_shadows_shader', color=color.white, collider='box', )
        Entity(parent=self, position=Vec3(-0.9924, 0.032, 5.2352), model='cube', origin=Vec3(0, -0.5, 0), shader='lit_with_shadows_shader', color=color.white, collider='box', )
        Entity(parent=self, position=Vec3(1.2385, -3.58199, 6.6089), scale=Vec3(1, 1.6039, 1), model='cube', origin=Vec3(0, -0.5, 0), shader='lit_with_shadows_shader', color=color.white, collider='box', )
        Entity(parent=self, position=Vec3(0.1564, 0.032, 6.6415), model='cube', origin=Vec3(0, -0.5, 0), shader='lit_with_shadows_shader', color=color.white, collider='box', )
        Entity(parent=self, position=Vec3(-1.9521, 0.032, 6.7786), model='cube', origin=Vec3(0, -0.5, 0), shader='lit_with_shadows_shader', color=color.white, collider='box', )
        Entity(parent=self, position=Vec3(9.53654, -3.9966, 0.525977), rotation=Vec3(-11.7891, 37.9694, 4.4852), scale=Vec3(2.52287, 2.40305, 2.52287), model='cube', origin=Vec3(0, -0.5, 0), shader='lit_with_shadows_shader', color=color.white, collider='box', )
