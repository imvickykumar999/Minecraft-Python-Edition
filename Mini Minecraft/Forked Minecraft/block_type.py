#import number
import models.cube

class Block_type:
    def __init__(self, texture_manager, name = "unknown", block_face_textures = {"all": "cobblestone"}, model = models.cube):
        self.name = name
        
        # create members based on model attributes
        self.transparent = model.transparent
        self.is_cube = model.is_cube



        # replace data contained in numbers.py with model specific data

        self.vertex_positions = model.vertex_positions
        #self.indices = number.indices
        self.tex_coords = model.tex_coords.copy()
        self.shading_values = model.shading_values # set shading values
        
        
        def set_block_face(face, texture): # set a specific face of the block to a certain texture 
               
               # make sure we don't add inexistent faces
               if face > len(self.tex_coords) - 1:
                   return
                        
               self.tex_coords[face] = self.tex_coords[face].copy()

               for vertex in range(4):
                   self.tex_coords[face][vertex * 3 + 2] = texture

        for face in block_face_textures:
            texture = block_face_textures[face] # get that face's texture
            texture_manager.add_texture(texture) # add that texture to our texture manager (the texture manager will make sure it hasn't already been added itself)


            texture_index = texture_manager.textures.index(texture) # find that texture's index (texture's Z component in our texture array) so that we can modify the texture coordinates of each face appropriately
            
            if face == "all": # set the texture for all faces if "all" is specified
                set_block_face(0, texture_index)
                set_block_face(1, texture_index)
                set_block_face(2, texture_index)
                set_block_face(3, texture_index)
                set_block_face(4, texture_index)
                set_block_face(5, texture_index)
			
            elif face == "sides": # set the texture for only the sides if "sides" is specified
                set_block_face(0, texture_index)
                set_block_face(1, texture_index)
                set_block_face(4, texture_index)
                set_block_face(5, texture_index)
			
            else: # set the texture for only one of the sides if one of the sides is specified
                set_block_face(["right", "left", "top", "bottom", "front", "back"].index(face), texture_index)


