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
![screen]("https://i.imgur.com/7YaLNYr.png" width="200" height="400")
In de afbeelding worden de id's van de gevonden devices weergegeven. De gevonden devices hebben schijnbaar geen naam, dus deze wordt voor de komma daarom ook niet getoond.

De app die is voortgekomen uit het testen bewijst niet in volledigheid de hypothese omdat deze er alleen toe in staat is om BLE devices te vinden. BLE devices zouden smartwatches, apple pens of bluetooth boxen kunnen zijn bijvoorbeeld, iets dat maar een minderheid van de pretpark/evenement bezoekers zullen hebben. Hierdoor wordt maar een klein segment van de bezoekers gedekt. 

Het uitbreiden van de app met de mogelijkheid om zelf een signaal uit te zenden en andere devices op te zoeken die ook dit zelfde signaal uitzenden (dit signaal is dan in de vorm van het device id) zou er voor zorgen dat de functionaliteit meer bruikbaar zou worden voor het bewijzen van de hypothese. Dit zou er namelijk voor zorgen dat alle devices die dezelfde app hebben, binnen het bluetooth bereik van de zoekende device, kunnen worden gevonden.

De voorgestelde uitbreiding zal niet in de aankomende weken worden uitgewerkt tenzij deze wordt benut voor het project product.

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
Het resultaat is te vinden in de poc map onder de naam 'MyApplication'. Het resultaat is ertoe in staat het verwachte resultaat toe te passen. Dit betekent dus dat deze twee invoervelden bevat en een knop die het berekenen afhandelt. De effectieve code hier achter ziet er als volgt uit:

```
   calcbutton.setOnClickListener(new View.OnClickListener(){
       @Override
       public void onClick(View view){
           float percentage = Float.parseFloat(percentageTxt.getText().toString());
           float dec = percentage / 100;

           float total = dec * Float.parseFloat(numberTxt.getText().toString());
           totalTextView.setText(Float.toString(total));
       }
   });
```
Deze code voegt een OnClickListener toe aan de calcbutton die bestaat in de ui van de applicatie. Wanneer deze geklikt wordt wordt het percentage dat is ingevoerd opgehaald en gedeeld door honderd en naar een float omgezet om deze geschikt te maken om mee te rekenen. Vervolgens wordt de decimale waarde keer het ingevoerde getal gerekend. Ten slotte wordt het resultaat hiervan terug gestuurd naar de ui door deze in de daarvoor bedoelde TextView weer te geven. 

De code weet over welke TextView/Button/EditText het gaat doordat deze op een andere plek in de code als volgt worden opgehaald:
```
Button calcbutton = (Button) findViewById(R.id.calculate);
```
Dit stukje code doet dus een beroep op de findByViewId() methode van de AppCompatActivity klasse van Android Studio, deze klasse wordt via inheritance beschikbaar in de MainActivity klas. De methode neemt een id als parameter. Dit moet het id zijn van een ui element. Het id van dit element wordt gezet bij het toevoegen van het element in de main_content.xml, wat gelijksoortig is aan Main.storyboard in swift. Deze id moest voor alle gebruikte elementen worden aangepast zodat deze uniek is, anders zal deze in de code niet gevonden kunnen worden. In het bovenstaande voorbeeld heeft de button als id 'calculate'.
