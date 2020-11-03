package com.example.uitlibrary;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class Search_wed extends AppCompatActivity {

    WebView search_wed;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_search_wed);

        search_wed = (WebView) findViewById(R.id.search_wed);
        WebSettings webset = search_wed.getSettings(); //웹세팅
        webset.setJavaScriptEnabled(true);//자바스크립트 허용
        webset.setLoadWithOverviewMode(true);//컨텐츠가 웹뷰 보다 클경우 스크린크기에 맞춤
        search_wed.setWebChromeClient(new WebChromeClient());
        search_wed.loadUrl("http://210.119.107.114:9928/search/page/1");

        search_wed.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        });
    }
    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if ((keyCode == KeyEvent.KEYCODE_BACK) && search_wed.canGoBack()) {
            search_wed.goBack();
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }
}
