#version 330 compatibility

uniform float	uTime;		// "Time", from Animate( )
in vec2  	vST;		// texture coords
in vec3 vColor;	
void
main( )
{
	//vec3 myColor = vec3( 1., 0.1, 0.1 );
	///*if( ??? )
	//{
	//	myColor = vec3( ??? );
	//}*/
	//gl_FragColor = vec4( myColor,  1. );
	gl_FragColor = vec4( vColor, 1. );
}
