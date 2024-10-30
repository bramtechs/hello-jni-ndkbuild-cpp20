#include "jni.h"
#include "android_native_app_glue.h"

#include <string>
#include <format>

extern "C" jstring Java_com_example_myapplication_NativeView_stringFromJNI(JNIEnv *env)
{
    std::string msg = std::format("C++20 on {} with {}!", "Android", "ndk-build");
    return env->NewStringUTF(msg.c_str());
}
