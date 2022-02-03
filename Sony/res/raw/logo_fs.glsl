/**
 * Copyright (C) 2018 Sony Mobile Communications Inc.
 * All rights, including trade secret rights, reserved.
 */
#version 300 es
precision mediump float;

uniform sampler2D uTexture;
uniform float uAlpha;

in vec2 uv;

out vec4 color;

void main() {
    color = texture(uTexture, uv) * uAlpha;
}
