/*
 * Copyright (C) 2024 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package android.media.audio.common;

/**
 * List of usages to be used the values from 'AudioPolicyForcedConfig' in order
 * to force audio routing.
 *
 * {@hide}
 */
@Backing(type="int")
@SuppressWarnings(value={"redundant-name"})
@VintfStability
enum AudioPolicyForceUse {
    /**
     * Configures the audio device used for "communication" (telephony, VoIP) use cases.
     */
    COMMUNICATION = 0,
    /**
     * Configures the audio device used for media playback.
     */
    MEDIA = 1,
    /**
     * Configures the audio device used for recording.
     */
    RECORD = 2,
    /**
     * Specifies whether the phone is currently placed into a dock. The value of
     * 'AudioPolicyForcedConfig' specifies the kind of the dock.
     */
    DOCK = 3,
    /**
     * Specifies whether enforcing of certain sounds is enabled, for example,
     * enforcing of the camera shutter sound.
     */
    SYSTEM = 4,
    /**
     * Specifies whether sending of system audio via HDMI is enabled.
     */
    HDMI_SYSTEM_AUDIO = 5,
    /**
     * Configures whether support for encoded surround formats is enabled for
     * applications.
     */
    ENCODED_SURROUND = 6,
    /**
     * Configures whether in muted audio mode ringing should also be sent to a BT device.
     */
    VIBRATE_RINGING = 7,
}
