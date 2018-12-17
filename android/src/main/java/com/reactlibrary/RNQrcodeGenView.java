package com.reactlibrary;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.support.v7.widget.AppCompatImageView;

import com.google.zxing.WriterException;

import androidmads.library.qrgenearator.QRGContents;
import androidmads.library.qrgenearator.QRGEncoder;


public class RNQrcodeGenView extends AppCompatImageView {

    private static final String TAG = "RNQrcodeGenView";

    private String mValue = "";

    public RNQrcodeGenView(Context context) {
        super(context);
        this.encode();
    }

    public void setValue(String value) {
        mValue = value;
        this.encode();
    }

    public void stop() {

    }

    private void encode() {
        Bitmap bitmap;
        QRGEncoder qrgEncoder = new QRGEncoder(mValue, null, QRGContents.Type.TEXT, 320);
        try {
            bitmap = qrgEncoder.encodeAsBitmap();
            this.setImageBitmap(bitmap);
        } catch (WriterException e) {
            Log.v(TAG, e.toString());
        }
    }
}
