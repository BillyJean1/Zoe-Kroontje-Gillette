Ionic Bluetooth
----------------
#### Hypothese 
Er kan middels Bluetooth in Ionic worden achterhaald hoe druk een gebied is.

###### Motivatie
De motivatie voor het doen van dit onderzoek komt voort uit de wens van de opdrachtgever van het project. Deze wil namelijk crowd- control gaan toepassen bij evenementen en pretparken. Voor crowd-control is het gegeven hoeveel mensen er aanwezig zijn in een bepaalde radius (tussen 1-10 meter, https://nl.wikipedia.org/wiki/Bluetooth) daarom van toegevoegde waarde, omdat dit wat zegt over hoe druk een gebied is.

#### Testopzet
De gestelde hypothese van dit onderzoek kan heel breed worden genomen aangezien Bluetooth complex in elkaar steekt. Maar omwille de tijd zal de hypothese zo eenvoudig mogelijk worden getest. Dit wordt gedaan door het bouwen van een ionic app die een simpele bluetooth toepassing bevat.

###### Verwacht test resultaat
De app die gebouwd wordt moet er toe in staat zijn te scannen naar BLE (Bluetooth Low Energy) devices, waarna de devices die deze vind zullen worden getoond in een simpele lijst. Van elk device wordt het id en de naam van het device (indien deze een naam heeft) weergegeven. De app moet te runnen zijn vanaf het Android platform.

###### Methode
Het behalen van het testresultaat wordt gedaan door het aanhouden van de volgende voorbeelden van Ionic native BLE plugin:
* https://ionicallyspeaking.com/2016/05/06/connecting-to-a-bluetooth-smart-sensor-with-ionic-2/ 
* https://ionicframework.com/docs/native/ble/

#### Resultaat
Het resultaat van het onderzoek is zoals beschreven in de verwachtingen. Dit ziet er als volgt uit:
<br><img src="https://i.imgur.com/7YaLNYr.png" width="300" height="400"><br>
In de afbeelding worden de id's van de gevonden devices weergegeven. De gevonden devices hebben schijnbaar geen naam, dus deze wordt voor de komma daarom ook niet getoond. De code hier achter is te vinden in de poc map onder 'IonicBluetooth'.

Het ophalen van alle BLE devices wordt gedaan door het volgende stukje code, die wordt aangeroepen bij het klikken op de 'scan' knop:
```
  startScanning() {
    BLE.startScan([]).subscribe(device => {
      this.zone.run(() => {
        this.devices.push(device);
        this.gettingDevices = false;
      });
      });
    this.gettingDevices = true;
  }
```
Deze code gebruikt de BLE plugin van ionic native om het scannen naar devices te starten. Tijdens het scannen hierna wordt er een laad icoontje getoond dus wordt de boolean 'gettingDevices' getoggled tijdens het scannen. Als er devices zijn gevonden dan worden deze in de NgZone in een device array gezet, welke getoond wordt in de ui van de app. Dit wordt in de NgZone gedaan omdat de ui anders niet update.

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst niet in volledigheid de hypothese. Dit komt omdat de app er alleen toe in staat is om BLE devices te vinden. BLE devices zouden smartwatches, apple pens of bluetooth boxen kunnen zijn bijvoorbeeld, iets dat maar een minderheid van de pretpark/evenement bezoekers (mee) zullen hebben. Hierdoor wordt maar een klein segment van de bezoekers gedekt. 

Het uitbreiden van de app met de mogelijkheid om zelf een signaal uit te zenden en andere devices op te zoeken die ook dit zelfde signaal uitzenden (dit signaal is dan in de vorm van het device id) zou er voor zorgen dat de functionaliteit meer bruikbaar zou worden voor het bewijzen van de hypothese. Dit zou er namelijk voor zorgen dat alle devices die dezelfde app hebben, binnen het bluetooth bereik van de zoekende device, kunnen worden gevonden.

De voorgestelde uitbreiding zal niet in de aankomende weken worden uitgewerkt tenzij deze wordt benut voor het project product.
