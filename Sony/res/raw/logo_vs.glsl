/**
 * Copyright (C) 2018 Sony Mobile Communications Inc.
 * All rights, including trade secret rights, reserved.
 */
#version 300 es
precision mediump float;

uniform mat4 uViewProjection;

uniform vec2 uPosition;

in vec4 inPosition;
in vec2 inUV;

out vec2 uv;

void main() {
    uv = inUV;
    gl_Position = uViewProjection * (inPosition + vec4(uPosition, 0,0));
}
