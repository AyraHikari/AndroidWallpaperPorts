/**
 * Copyright (C) 2017 Sony Mobile Communications Inc.
 * All rights, including trade secret rights, reserved.
 */
#version 300 es
#extension GL_OES_EGL_image_external_essl3 : require
precision mediump float;

uniform sampler2D uBackupTexture;
uniform float uCrossFade;

uniform samplerExternalOES uTexture;
in vec2 uv;

out vec4 color;

void main() {
    color = texture(uTexture, uv) * (1.0f - uCrossFade) + texture(uBackupTexture, uv) * uCrossFade;
}
