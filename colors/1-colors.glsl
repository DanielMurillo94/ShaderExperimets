#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 resolution;
uniform float u_time;

vec3 colorA = vec3(0.149, 0.141, 0.912);
vec3 colorB = vec3(1.0, 0.833, 0.224);

void main() {
    gl_FragColor = vec4(colorA, 1.0);
}
