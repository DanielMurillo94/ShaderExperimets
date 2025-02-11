#ifdef GL_ES
precision mediump float;
#endif

uniform vec2 u_resolution;
uniform float u_time;

vec3 groundDay = vec3(0.7569, 0.8275, 0.349);
vec3 skyDay = vec3(0.6941, 0.8745, 0.8431);

vec3 groundNight = vec3(0.2745, 0.1922, 0.0);
vec3 skyNight = vec3(0.0039, 0.0431, 0.1882);

void main() {
    vec2 st = gl_FragCoord.xy / u_resolution.xy;
    vec3 groundColor = mix(groundNight, groundDay,  smoothstep(0.0, 15.0, u_time));
    vec3 skyColor = mix(skyNight, skyDay,  smoothstep(0.0, 15.0, u_time));
    vec3 color = mix(groundColor, skyColor, smoothstep(0.4, 0.5, st.y));

    gl_FragColor = vec4(color, 1.0);
}