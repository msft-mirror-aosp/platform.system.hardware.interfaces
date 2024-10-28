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
 * List of usages to be used in addition to forced config in order to force the audio routing.
 *
 * {@hide}
 */
@Backing(type="int")
@SuppressWarnings(value={"redundant-name"})
@VintfStability
enum AudioPolicyForceUse {
    COMMUNICATION = 0,
    MEDIA = 1,
    RECORD = 2,
    DOCK = 3,
    SYSTEM = 4,
    HDMI_SYSTEM_AUDIO = 5,
    ENCODED_SURROUND = 6,
    VIBRATE_RINGING = 7,
}