#version 330 compatibility

uniform float	uTime, uKa;		// "Time", from Animate( )
in vec2  	vST;		// texture coords
in vec3 vColor;	
in float uS0, uT0, uSize;
void
main( )
{
	vec3 myColor = vec3( 1., 0.1, 0.1 );
	
	if( uS0-uSize/2. <= vST.s && vST.s <= uS0+uSize/2. &&
		uT0-uSize/2. <= vST.t && vST.t <= uT0+uSize/2. )
	{
		myColor = vec3( 1., 0., 0. );
	}
	vec3 ambient = uKa * myColor;
	gl_FragColor = vec4( myColor, 1. );
}