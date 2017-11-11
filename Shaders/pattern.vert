#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
out vec2  	vST;		// texture coords
out vec3 vColor;

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 

	vec4 pos =  gl_Vertex * gl_ModelViewMatrix;
	vColor = vec3(.8, .7, .2); // set rgb from xyz!
	vec3 new_vertex = gl_Vertex.xyz;
	new_vertex.x = sin(gl_Vertex.x) * uTime;
	new_vertex.y = cos(gl_Vertex.y) / uTime;
	new_vertex.z = sin(gl_Vertex.z) * uTime;
	gl_Position = gl_ModelViewProjectionMatrix * vec4(new_vertex, 1);

}
