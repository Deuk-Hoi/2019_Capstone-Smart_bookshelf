package com.example.uitlibrary;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class Library_web extends AppCompatActivity {

    WebView pcweb;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_library_web);

        pcweb = (WebView) findViewById(R.id.pcweb);
        WebSettings webset = pcweb.getSettings(); //웹세팅
        webset.setJavaScriptEnabled(true);//자바스크립트 허용
        webset.setLoadWithOverviewMode(true);//컨텐츠가 웹뷰 보다 클경우 스크린크기에 맞춤
        pcweb.setWebChromeClient(new WebChromeClient());
        pcweb.loadUrl("http://210.119.107.114:9928/");

        pcweb.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        });
    }
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK) && pcweb.canGoBack()) {
            pcweb.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
