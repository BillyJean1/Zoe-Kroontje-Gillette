Estimote
----------------
#### Hypothese 
Er kan in native Android een app worden gebouwd die Estimote beacons kan ontdekken.

###### Motivatie
De motivatie voor het doen van dit onderzoek komt voort uit het idee voor concept 1 van Billy Jean. Dit concept specificeerd namelijk het uitdelen van punten aan app gebruikers op basis van hun locatie en punten koppelen aan locaties gebaseerd op de drukte van deze locaties. Hierbij kunnen Estimote beacons van pas komen omdat deze een detectie radius hebben.
<br><img src="https://i.imgur.com/ohGRE3L.png" width="300" height="500"><br>

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het opstellen van een simpele applicatie die de Estimote android sdk gebruikt.

###### Verwacht test resultaat
De app die gebouwd wordt moet er toe in staat zijn om dichtbijzijnde beacons te detecteren en hier wat gegevens van weer te geven in een textview. 

###### Methode
Het behalen van het testresultaat wordt gedaan door het volgen van de tutorial stappen van de Estimote Android sdk:
* http://developer.estimote.com/android/tutorial/part-1-setting-up/
* http://developer.estimote.com/android/tutorial/part-2-background-monitoring/

Hierbij wordt een estimote location beacon, low energy beacon gebruikt om de applicatie te testen.
<br><img src="https://i.imgur.com/hFs32Np.jpg" width="300" height="500"><br>

#### Resultaat
Het resultaat is zoals beschreven in de test opzet. 
<br><img src="https://i.imgur.com/y82Hwk8.png" width="300" height="500"><br>
Hierbij wordt er als eerste in de oncreate methode van de applicatie een call gedaan naar de initialize methode van de estimote SDK. Hierbij worden een AppId en token gebruikt die zijn gegeven door cloud.estimote.com. 
```
EstimoteSDK.initialize(getApplicationContext(), "19fe7f5fbb97f5c3fc11c1a9", "3743f89b");
```

Hierna kan er worden gescand naar beacons door een BeaconManager aan te maken en te laten monitoren wat er in de buurt is.
```
        beaconManager = new BeaconManager(getApplicationContext());
        beaconManager.connect(new BeaconManager.ServiceReadyCallback() {
            @Override
            public void onServiceReady() {
                // UUID op null zorgt voor general detection
                beaconManager.startMonitoring(new BeaconRegion(
                        "monitored region",null, null, null));
            }
        });
```
Dit monitoren wordt in het bovenstaande voorbeeld zonder specifiek UUID gedaan omdat de beacon die voor het testen gebruikt wordt niet mijn eigendom is, waardoor ik het UUID van de beacon niet tot mijn beschikking heb.

Ten slotte worden er listeners opgezet om aan te geven wanneer je in de region van een beacon staat, of de region van een beacon verlaat.
```
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
```
Deze methoden gebruik ik om de tekst in het scherm (zie afbeelding) in te vullen met passende informatie. Hiervoor gebruik ik de 'getBeaconDescription(beacons)' methode die ik heb gemaakt, die simpelweg de beschrijvingen van alle nearby beacons in een string formaat terug geeft. 

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
