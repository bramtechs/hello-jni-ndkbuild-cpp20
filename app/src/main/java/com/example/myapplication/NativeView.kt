package com.example.myapplication

import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity


class NativeView : AppCompatActivity() {
    companion object {
        init {
            System.loadLibrary("hello-jni");
        }
    }

    private external fun stringFromJNI(): String?

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.native_layout)
        val tv = findViewById<TextView>(R.id.textView)
        tv.text = stringFromJNI()
    }
}