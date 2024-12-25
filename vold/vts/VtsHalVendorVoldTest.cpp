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

#define LOG_TAG "vold_aidl_hal_test"

#include <android/system/vold/BnVoldCheckpointListener.h>
#include <android/system/vold/CheckpointingState.h>
#include <android/system/vold/IVold.h>
#include <binder/IServiceManager.h>
#include <gtest/gtest.h>
#include <utils/String16.h>

using ::android::defaultServiceManager;
using ::android::sp;
using ::android::String16;
using ::android::binder::Status;
using ::android::system::vold::BnVoldCheckpointListener;
using ::android::system::vold::CheckpointingState;
using ::android::system::vold::IVold;

const char KVoldName[] = "android.system.vold.IVold/default";

class TestListener : public BnVoldCheckpointListener {
   public:
    Status onCheckpointingComplete() final {
        ++called_;
        return Status::ok();
    }

    int timesCalled() { return called_; }

   private:
    int called_ = 0;
};

TEST(VoldAidlTest, PostBootAddListener) {
    auto manager = defaultServiceManager();
    auto binder = manager->waitForService(String16(KVoldName));
    auto vold = IVold::asInterface(binder);
    auto listener = sp<TestListener>::make();

    CheckpointingState state;
    vold->registerCheckpointListener(listener, &state);
    EXPECT_EQ(state, CheckpointingState::CHECKPOINTING_COMPLETE);
    EXPECT_EQ(listener->timesCalled(), 0);
}