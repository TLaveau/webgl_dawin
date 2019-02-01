attribute vec3 position;
attribute vec4 color;
uniform mat4 perspective;
uniform mat4 translation;
uniform mat4 rotation;
varying vec4 vcolor;
void main() {
    gl_Position = perspective * translation * rotation * vec4( position[0], position[1], position[2], 1 );

    gl_PointSize = (position[0] + 1.0) * 20.0;
    vcolor = color;
}