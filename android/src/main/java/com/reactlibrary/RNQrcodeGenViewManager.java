package com.reactlibrary;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;

public class RNQrcodeGenViewManager extends SimpleViewManager<RNQrcodeGenView> {

    public static final String REACT_CLASS = "RNQrcodeGen";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    protected RNQrcodeGenView createViewInstance(ThemedReactContext context) {
        return new RNQrcodeGenView(context);
    }

    @Override
    public void onDropViewInstance(RNQrcodeGenView view) {
        view.stop();
        super.onDropViewInstance(view);
    }

    @ReactProp(name = "value")
    @SuppressWarnings("unused")
    public void setValue(RNQrcodeGenView view, String value) {
        view.setValue(value);
    }
}