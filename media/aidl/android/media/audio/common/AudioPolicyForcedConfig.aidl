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
 * List of forced configurations aka device categories to be used in addition to the force use
 * in order to force the audio routing. This is the "destination" for 'AudioPolicyForceUse'.
 *
 * {@hide}
 */
@Backing(type="int")
@SuppressWarnings(value={"redundant-name"})
@VintfStability
enum AudioPolicyForcedConfig {
    /**
     * The 'NONE' value can be used with all uses from 'AudioPolicyForceUse'.
     */
    NONE = 0,
    /**
     * The following configurations are used with 'AudioPolicyForceUse.COMMUNICATION',
     * '.MEDIA', and '.RECORD'.
     *
     * BT_SCO is also used with 'AudioPolicyForceUse.VIBRATE_RINGING' to specify that
     * in addition to vibration the ringing should be played via the BT SCO device.
     */
    SPEAKER = 1,
    HEADPHONES = 2,
    BT_SCO = 3,
    BT_A2DP = 4,
    WIRED_ACCESSORY = 5,
    /**
     * The '*_DOCK' values are for 'AudioPolicyForceUse.DOCK'.
     */
    BT_CAR_DOCK = 6,
    BT_DESK_DOCK = 7,
    ANALOG_DOCK = 8,
    DIGITAL_DOCK = 9,
    /**
     * BT A2DP sink is not preferred to the speaker or a wired headset. Used for
     * 'AudioPolicyForceUse.MEDIA'.
     */
    NO_BT_A2DP = 10,
    /**
     * Used with 'AudioPolicyForceUse.SYSTEM' to indicate that sound enforcement is enabled.
     */
    SYSTEM_ENFORCED = 11,
    /**
     * Used with 'AudioPolicyForceUse.HDMI_SYSTEM_AUDIO' to indicate that sending
     * of system audio to HDMI is enabled.
     */
    HDMI_SYSTEM_AUDIO_ENFORCED = 12,
    /**
     * The '*_ENCODED_SURROUND' values are for 'AudioPolicyForceUse.ENCODED_SURROUND'.
     */
    ENCODED_SURROUND_NEVER = 13,
    ENCODED_SURROUND_ALWAYS = 14,
    ENCODED_SURROUND_MANUAL = 15,
    /**
     * Used with 'AudioPolicyForceUse.VIBRATE_RINGING' to specify that in addition to
     * vibration the ringing should be played via the BT BLE device.
     */
    BT_BLE = 16,
}
