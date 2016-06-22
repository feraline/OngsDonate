package br.com.zephyrplace.ongsdonate;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Notice how you don't use the setContentView method here! Just
        // pass your layout to bottom bar, it will be taken care of.
        // Everything will be just like you're used to.
        setContentView(R.layout.activity_main);

    }

    public void openMenu(View v) {
        startActivity(new Intent(MainActivity.this, MenuActivity.class));
    }


    public void share(View v) {
        startActivity(new Intent(MainActivity.this, ShareActivity.class));
    }
}