#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

vec4 color1 = vec4(0.8902, 0.3137, 0.2275, 0.12);
vec4 color2 = vec4(0.8471, 0.7922, 0.2039, 0.37);
vec4 color3 = vec4(0.2275, 0.8745, 0.1804, 0.62);
vec4 color4 = vec4(0.1765, 0.4431, 0.8196, 0.87);

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    vec3 color = vec3(color1);
    color = mix(vec3(color2), color, 1.0 - distance(color1.w, st.x));
    color = mix(vec3(color3), color, 1.0 - distance(color2.w, st.x));
    color = mix(vec3(color4), color, 1.0 - distance(color3.w, st.x));
    gl_FragColor = vec4(color, 1.0);
}