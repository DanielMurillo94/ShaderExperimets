// Compose a gradient that resembles a William Turner sunset
#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;

vec3 colorA = vec3(0.91, 0.87, 0.5);
vec3 colorB = vec3(0.7, 0.69, 0.67);
vec3 colorC = vec3(0.79, 0.19, 0.17);
vec2 redPoint = vec2(0.1, 0.3);
vec2 redPoint2 = vec2(0.4, 0.3);

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution;
    vec3 color = mix(colorA, colorB, st.x);

    float redMixIntensity = clamp(((1.0 - distance(st, redPoint)) - 0.5) * 2.0, 0.0, 1.0);
    color = mix(color, colorC, redMixIntensity);

    float redMixIntensity2 = clamp(((1.0 - distance(st, redPoint2)) - 0.5) * 2.0, 0.0, 1.0);
    color = mix(color, colorC, redMixIntensity2);

    gl_FragColor = vec4(color, 1.0);
}