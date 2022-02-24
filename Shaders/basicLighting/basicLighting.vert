#version 330 core
layout (location = 0) in vec3 pos_in;
layout (location = 1) in vec3 norm_in;

out vec3 norm;

uniform mat4 PVM;

void main()
{
	gl_Position = PVM * vec4(pos_in, 1.0);
	norm = norm_in;
}