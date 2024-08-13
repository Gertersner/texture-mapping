#version 330 core

out vec4 fColor;

in vec2 s_texture_coord;
in vec4 s_color;

uniform sampler2D u_sampler;
uniform int u_surface_effect;
uniform vec4 u_diffuse_color;

void main()
{
    if (u_surface_effect == 0) {
        fColor = s_color;
    } else if (u_surface_effect == 1) {
        fColor = u_diffuse_color;
    } else if (u_surface_effect == 2) {
        fColor = texture(u_sampler, s_texture_coord);
    } else if (u_surface_effect == 3) {
        fColor = mix(s_color, texture(u_sampler, s_texture_coord), 0.5);
    } else if (u_surface_effect == 4) {
        fColor = mix(s_color, u_diffuse_color, 0.5);
    } else {
        fColor = vec4(0, 0, 1, 1);
    }
}
