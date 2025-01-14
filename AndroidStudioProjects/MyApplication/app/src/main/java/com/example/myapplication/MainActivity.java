package com.example.myapplication;

import static com.example.myapplication.R.*;

import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.GridView;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {
    GridView gridView;

    //displays items in a two-dimensional, scrollable grid.
    String[] gridItems = {
            "Rollno","Name","class","1","Nihira","4C","2","Rutva","3C"
    };


        @Override
        protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        gridView = findViewById(R.id.gridView);

        ArrayAdapter<String> adapter = new ArrayAdapter<>( this, android.R.layout.simple_list_item_1,gridItems);


        gridView.setAdapter(adapter);//Sets the adapter for the GridView, Linking the data to the GridView.

    }
}