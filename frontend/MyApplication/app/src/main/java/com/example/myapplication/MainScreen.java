package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;

public class MainScreen extends AppCompatActivity {
    CardView otc, presc;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main_screen);

        otc = (CardView)findViewById(R.id.otcCard);
        presc = (CardView)findViewById(R.id.prescCard);
    }
    public void otcpage(View v){
        Intent jump = new Intent(MainScreen.this,otcDrugs.class);
        startActivity(jump);
    }
    public void prescpage(View v){
        Intent jump = new Intent(MainScreen.this,prescriptionDrugs.class);
        startActivity(jump);
    }
}