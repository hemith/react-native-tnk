package com.reactnativetnk;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

import com.tnkfactory.ad.TnkSession;

import android.util.Log;

public class TnkModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public TnkModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "Tnk";
    }

    @ReactMethod
    public void applicationStarted(String name) {
      Log.d("tnkad", "applicationStarted. " + name);
       TnkSession.applicationStarted(this.reactContext);
    }

    @ReactMethod
    public void init(String name) {
      Log.d("tnkad", "applicationStarted. " + name);
       TnkSession.applicationStarted(this.reactContext);
    }

    @ReactMethod
    public void actionCompleted(String actionName) {
    	 Log.d("tnkad", "actionCompleted. " + actionName);
       TnkSession.actionCompleted(this.reactContext, actionName);
    }
}
