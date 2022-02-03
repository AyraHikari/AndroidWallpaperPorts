/**
 * Copyright (C) 2017 Sony Mobile Communications Inc.
 * All rights, including trade secret rights, reserved.
 */
#version 300 es
precision mediump float;

uniform mat4 uTransform;
uniform mat4 uUvTransform;

in vec4 inPosition;
in vec2 inUV;

out vec2 uv;

void main() {
    uv = (uUvTransform * vec4(inUV.x, inUV.y, 0, 1)).xy;
    gl_Position = uTransform * inPosition;
}
