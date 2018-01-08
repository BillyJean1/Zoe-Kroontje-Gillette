Gradient ReCrowd logo
----------------
#### Hypothese 
Er kan een gradient screen in Swift worden gemaakt met het ReCrowd logo er over heen. 

###### Motivatie
De motivatie voor dit onderzoek komt voort uit het design van het inlogscherm, dat behoort tot de uitwerking van use case 1 van het functioneel ontwerp (hoofdstuk 3.2.1 Inloggen). Door het realiseren van deze POC wordt er geleerd hoe een gradient view te maken, maar deze zal dan ook gelijk kunnen worden gebruikt in de ReCrowd realisatie.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door in Swift een applicatie te bouwen die als ui een gradient heeft met het ReCrowd logo er overheen.

###### Verwacht test resultaat
Het verwachte test resultaat zal gelijk staan aan het ontwerp voor het inlogscherm, waarbij de inlog knoppen zijn weggelaten. Dit zal er als volgt uit zien:
<br><img src="https://i.imgur.com/Zd0KlA1.png" width="300" height="450"><br>

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van verscheidene resources:
* https://www.hackingwithswift.com/example-code/uikit/how-to-bring-a-subview-to-the-front-of-a-uiview
* https://github.com/codepath/ios_guides/wiki/Adding-Image-Assets
* https://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values

#### Resultaat
Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/PamwDuE.png" width="600" height="450"><br>

Zoals te zien in de afbeelding wordt alleen het ReCrowd logo er in het storyboard in gezet. Het gradient wordt er code matig ingezet omdat er hiervoor enkele properties moeten worden gespecificeerd die niet toegankelijk zijn vanuit de UI opties van het storyboard.

```
    code
```

Voor het resultaat is er ook gebruik gemaakt van de volgende bronnen om het uiterlijk van het storyboard te tweaken:
* https://stackoverflow.com/questions/26706565/how-do-i-change-uiview-size


###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
