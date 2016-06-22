package br.com.zephyrplace.ongsdonate;

import android.animation.Animator;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;

import io.codetail.animation.ViewAnimationUtils;

public class ShareActivity extends AppCompatActivity {
    private FrameLayout rootLayout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        overridePendingTransition(R.anim.do_not_move, R.anim.slide_out_top);
        setContentView(R.layout.activity_share);
        rootLayout = (FrameLayout) findViewById(R.id.root_layout);
        if (savedInstanceState == null) {
            rootLayout.setVisibility(View.INVISIBLE);

            ViewTreeObserver viewTreeObserver = rootLayout.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
                    @Override
                    public void onGlobalLayout() {
                        circularRevealActivity();
                        rootLayout.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                });
            }
        }

    }

    private void circularRevealActivity() {
        int cx = rootLayout.getWidth();
        int cy = rootLayout.getHeight();
        float finalRadius = Math.max(rootLayout.getWidth(), rootLayout.getHeight());
        // create the animator for this view (the start radius is zero)
        Animator circularReveal = ViewAnimationUtils.createCircularReveal(rootLayout, cx, cy, 0, finalRadius);
        circularReveal.setDuration(285);
        // make the view visible and start the animation
        rootLayout.setVisibility(View.VISIBLE);
        circularReveal.start();
    }

    public void closeMenu(View v){
        finish();
    }
}
