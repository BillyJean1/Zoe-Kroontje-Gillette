import { Component, NgZone } from '@angular/core';
import { AlertController } from 'ionic-angular';
import {BLE} from 'ionic-native';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html',
  providers: [BLE, AlertController]
})
export class HomePage {
  devices = [];
  gettingDevices: Boolean;

  constructor(public zone: NgZone, private alertCtrl: AlertController) {
  }
  startScanning() {
    BLE.startScan([]).subscribe(device => {
      this.zone.run(() => {
        this.devices.push(device);
        this.gettingDevices = false;
      });
      });
    this.gettingDevices = true;
  }

  success = (data) => alert(data);
  fail = (error) => alert(error);
}
