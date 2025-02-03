#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

vec3 nothingcolor = vec3(0.0, 0.0, 0.0);
vec3 rageColor = vec3(1.0, 0.141, 0.200);
vec3 calmColor = vec3(0.3569, 0.4667, 0.5451);

void main() {
    vec3 color = vec3(0.0);
    
    if (u_time < 1.0) {
        float pct = u_time * u_time;
        color = mix(nothingcolor, rageColor, pct);
    }
    else {
        float pct = sin(u_time - 1.0);
        color = mix(rageColor, calmColor, pct);
    }
    gl_FragColor = vec4(color, 1.0);
}
