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
![screen](https://i.imgur.com/7YaLNYr.png)

De app die is voortgekomen uit het testen bewijst niet in volledigheid de hypothese omdat deze er alleen toe in staat is om BLE devices te vinden. BLE devices zouden smartwatches kunnen zijn bijvoorbeeld, iets dat niet maar een minderheid van de pretpark/evenement bezoekers zullen hebben. Hierdoor wordt maar een klein segment van de bezoekers gedekt. 

Het uitbreiden van de app met de mogelijkheid om zelf een signaal uit te zenden en andere devices op te zoeken die ook dit zelfde signaal uitzenden (dit signaal is dan in de vorm van het device id) zou er voor zorgen dat de functionaliteit meer bruikbaar zou worden voor het bewijzen van de hypothese. Dit zou er namelijk voor zorgen dat alle devices die dezelfde app hebben, binnen het bluetooth bereik van de zoekende device, kunnen worden gevonden.

Basis Android Applicatie
----------------

#### Hypothese 
Er kan met Android Studio een basis Android applicatie worden gebouwd.

###### Motivatie
De motivatie voor dit onderzoek is om een introductie te krijgen tot native Android development. Deze kennis zal dan in vervolgonderzoeken met betrekking tot Android ontwikkeling kunnen worden toegepast. 

###### Testopzet
De gestelde hypothese van dit onderzoek biedt een zeer plausibel resultaat aan: er kan een applicatie worden gebouwd voor Android met tooling die gemaakt is om dat te kunnen. Het testen hiervan zal worden gedaan door het bouwen van een simpele app voor Android.

##### Verwacht test resultaat
De app die gebouwd wordt zal in Android Studio worden aangemaakt. De app moet ertoe in staat zijn om de gebruiker een percentage te laten invullen en een getal te laten invullen. Bijvoorbeeld het percentage 50% en het getal 12. De gebruiker zal dan op een knop kunnen klikken en zien wat 50% van 12 is, dit is 6. Het getal 6 wordt dan dus getoond.

###### Methode
Het behalen van het test resultaat zal worden gedaan middels het volgen van een video tutorial.
Tutorial: https://www.youtube.com/watch?v=F-k5gwz_91o 
 
#### Resultaat
Beschrijf in hoeverre de test uitsluitsel heeft gegeven 
over de hypothese
