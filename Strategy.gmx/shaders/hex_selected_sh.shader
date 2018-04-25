//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;

    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

void main()
{
    vec4 baseColor = texture2D( gm_BaseTexture, v_vTexcoord );
    vec3 mixColor = mix(baseColor.xyz, vec3(1.0, 1.0, 0.0), 0.5);
    gl_FragColor =  vec4(mixColor, baseColor.w);
}

