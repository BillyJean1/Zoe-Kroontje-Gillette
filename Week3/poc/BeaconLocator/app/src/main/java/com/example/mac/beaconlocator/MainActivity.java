package com.example.mac.beaconlocator;

import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;

import com.estimote.coresdk.common.config.EstimoteSDK;
import com.estimote.coresdk.common.requirements.SystemRequirementsChecker;
import com.estimote.coresdk.observation.region.beacon.BeaconRegion;
import com.estimote.coresdk.recognition.packets.Beacon;
import com.estimote.coresdk.service.BeaconManager;

import java.util.List;


public class MainActivity extends AppCompatActivity {


    private BeaconManager beaconManager;
    private TextView beaconText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //  To get your AppId and AppToken you need to create new application in Estimote Cloud.
        EstimoteSDK.initialize(getApplicationContext(), "19fe7f5fbb97f5c3fc11c1a9", "3743f89b");
// Optional, debug logging.
        EstimoteSDK.enableDebugLogging(true);

        beaconText = (TextView) findViewById(R.id.beaconText) ;

        beaconManager = new BeaconManager(getApplicationContext());
        beaconManager.connect(new BeaconManager.ServiceReadyCallback() {
            @Override
            public void onServiceReady() {
                // UUID op null zorgt voor general detection
                beaconManager.startMonitoring(new BeaconRegion(
                        "monitored region",null, null, null));
            }
        });

        beaconManager.setMonitoringListener(new BeaconManager.BeaconMonitoringListener() {

            @Override
            public void onEnteredRegion(BeaconRegion beaconRegion, List<Beacon> beacons) {
               beaconText.setText("Beacons found: " + getBeaconDescription(beacons));
            }

            @Override
            public void onExitedRegion(BeaconRegion region) {
                beaconText.setText("No beacons found");
            }
        });
    }

    @Override
    protected void onResume() {
        super.onResume();

        SystemRequirementsChecker.checkWithDefaultDialogs(this);
    }

    public String getBeaconDescription(List<Beacon> beacons){
        String beaconString = "";
        for(Beacon beacon: beacons){
            beaconString += beacon.toString();
        }
        return beaconString;
    }
}

