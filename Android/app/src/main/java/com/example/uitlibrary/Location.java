package com.example.uitlibrary;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class Location extends AppCompatActivity {

    WebView location_Web;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_location);

        location_Web = (WebView) findViewById(R.id.location_Web);
        WebSettings webset = location_Web.getSettings(); //웹세팅
        webset.setJavaScriptEnabled(true);//자바스크립트 허용
        webset.setLoadWithOverviewMode(true);//컨텐츠가 웹뷰 보다 클경우 스크린크기에 맞춤
        location_Web.setWebChromeClient(new WebChromeClient());
        location_Web.loadUrl("https://library.hoseo.ac.kr/#/guide/map/aslib");

        location_Web.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        });
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if((keyCode == KeyEvent.KEYCODE_BACK)&&location_Web.canGoBack())
        {
            location_Web.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
