#version 330 // specify we are indeed using modern opengl

out vec4 fragment_colour; // output of our shader

uniform sampler2DArray texture_array_sampler; // create our texture array sampler uniform

in vec3 local_position;  // interpolated vertex position
in vec3 interpolated_tex_coords; // interpolated texture coordinates
in float interpolated_shading_value; // interpolated shading value


void main(void) {
	//fragment_colour = texture(texture_array_sampler, interpolated_tex_coords) * interpolated_shading_value; // sample our texture array with the interpolated texture coordinates
	vec4 texture_colour = texture(texture_array_sampler, interpolated_tex_coords);
	fragment_colour = texture_colour * interpolated_shading_value;

	if (texture_colour.a == 0.0) { // discard if texel's alpha component is 0 (texel is transparent)
		discard;
	}
}


//fragment shaders runs on each pixels and computes 
//colours based on the interpolated vaules by vertex 
//shader and outputs to screen

//material to read
//Shaders: https://learnopengl.com/Getting-started/Shaders
//Also shaders: https://antongerdelan.net/opengl/shaders.html
//Ricardo Milos: https://www.urbandictionary.com/define.php?term=Ricardo+Milos
//