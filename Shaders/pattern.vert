#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
out vec2  	vST;		// texture coords
out vec3 vColor;
out  vec3  vN;		// normal vector
out  vec3  vL;		// vector from point to light
out  vec3  vE;		// vector from point to eye
vec3 LightPosition = vec3(  7., 7., 7. );

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;		// frequency

void
main( )
{ 

	vColor = vec3(.8, .7, .2); // set rgb from xyz!
	vec3 nVertex = gl_Vertex.xyz;
	
	/*nVertex.x = sin(gl_Vertex.x) * uTime;
	nVertex.y = cos(gl_Vertex.y) / uTime;
	nVertex.z = sin(gl_Vertex.z) * uTime;*/
	vST = gl_MultiTexCoord0.st;
	vec4 ECposition = gl_ModelViewMatrix * vec4( nVertex, 1. );
	vN = normalize( gl_NormalMatrix * gl_Normal );	// normal vector
	vL = LightPosition - ECposition.xyz;		// vector from the point
												// to the light position
	vE = vec3( 0., 0., 0. ) - ECposition.xyz;	// vector from the point
												// to the eye position 
	gl_Position = gl_ModelViewProjectionMatrix * vec4(nVertex, 1);

}
