// Fragment Shader

static const char* EmitterFS = STRINGIFY
(

// Varying
varying highp vec3      v_pColorOffset;
varying highp float     v_Growth;
varying highp float     v_Decay;

// Uniforms
uniform highp float     u_Time;
uniform sampler2D       u_Texture;
uniform highp vec3      u_eColorStart;
uniform highp vec3      u_eColorEnd;

 void main(void)
{
    // Texture
    highp vec4 texture = texture2D(u_Texture, gl_PointCoord);
    
    // Color
    highp vec4 color = vec4(1.0);
    
    // If blast is growing
    if(u_Time < v_Growth)
    {
        color.rgb = u_eColorStart;
    }
    
    // Else if blast is decaying
    else
    {
        highp float time = (u_Time - v_Growth) / v_Decay;
        color.rgb = mix(u_eColorStart, u_eColorEnd, time);
    }
    
    color.rgb += v_pColorOffset;
    color.rgb = clamp(color.rgb, vec3(0.0), vec3(1.0));
    
    // Required OpenGL ES 2.0 outputs
    gl_FragColor = texture * color;
}

);