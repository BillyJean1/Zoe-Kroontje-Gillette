MapKit
----------------
#### Hypothese 
Er kan in Swift gebruik worden gemaakt van een kaart met 'pins' op bepaalde locaties er in.

###### Motivatie
De motivatie voor dit onderzoek komt voort uit de wens van de opdrachtgever, deze heeft namelijk aangegeven evenement voorzieningen zichtbaar te willen maken op een kaart. Door pins kunnen voorzieningen dan bijvoorbeeld kenbaar worden gemaakt op de kaart.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het opstellen van een simpele applicatie in swift, die MapKit gebruikt

###### Verwacht test resultaat
De app die gebouwd wordt moet er toe in staat zijn een kaart te laten zien waarop een bepaalde locatie centraal staat. De 'zoom' of straal rondom deze locatie moet in te stellen zijn in de code en er moeten pins kunnen worden toegevoegd aan de kaart. Elke pin moet een langitude en longitude kunnen hebben, een titel en een beschrijving.

###### Methode
Voor het realiseren van het test resultaat zal er een tutorial worden gevolgd. Echter zal de locatie waar de map in de tutorial op inzoomt worden vervangen door de Efteling en zal de pin in de tutorial vervangen worden door een pin op een attractie in de Efteling. Dit omdat de Efteling gekozen is als onderzoeksfocus van het project.
* https://www.youtube.com/watch?v=wU1XN-Gk1LM

#### Resultaat
Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/y82Hwk8.png" width="300" height="500"><br>

De effectieve code die er voor zorgt dat er een kaart wordt getoond in Swift is uiteindelijk maar simpel en maakt gebruik van het MapKit framework:

```
let zoom =  1000
let coordinate = CLLocationCoordinate2DMake(51.6493838, 5.0456024)
mapkitView.setRegion(MKCoordinateRegionMakeWithDistance(coordinate, CLLocationDistance(zoom), CLLocationDistance(zoom)), animated: true)
let baronCoordinate = CLLocationCoordinate2DMake(51.6481221, 5.0507569)
let baronPin = MapPin(title: "Baron 1898", subtitle: "Achtbaan", coordinate: baronCoordinate)
mapkitView.addAnnotation(baronPin)
```

Hierbij is zoom de radius in meters, hier dus 1km. De eerste coordinate is van de Efteling en de tweede is van de attractie de Baron. De setRegion() functie bepaalt wat het middelpunt is van de kaart (de kaart is een ui element van het type MKMapView) en de MapPin is een subklasse van MKAnnotation die ik heb aangemaakt die het mogelijk maakt om een 'pin' toe te voegen aan de kaart.

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
