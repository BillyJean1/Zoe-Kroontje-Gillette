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

###### Tergukoppeling hypothese
De hypothese wordt door de uitwerking volledig bewezen.
