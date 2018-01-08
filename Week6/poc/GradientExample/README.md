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
<br><img src="https://i.imgur.com/jDNkG1F.png" width="600" height="450"><br>

Zoals te zien in de afbeelding wordt alleen het ReCrowd logo er in het storyboard in gezet. Het gradient wordt er code matig ingezet omdat er hiervoor enkele properties moeten worden gespecificeerd die niet toegankelijk zijn vanuit de UI opties van het storyboard.

De gradient wordt getekend middels de volgende code:

```
func setGradientBackground() {
let colorTop =  UIColor(red: 151.0/255.0, green: 215.0/255.0, blue: 243.0/255.0, alpha: 1.0).cgColor
let colorBottom = UIColor(red: 18.0/255.0, green: 107.0/255.0, blue: 189.0/255.0, alpha: 1.0).cgColor
let gradientLayer = CAGradientLayer()
gradientLayer.colors = [ colorTop, colorBottom]
gradientLayer.locations = [ 0.0, 1.0]
gradientLayer.frame = CGRect(x:0, y: 0, width: self.view.frame.width, height:self.view.frame.height/1.4)
self.view.layer.addSublayer(gradientLayer)
}
```
In deze functie wordt er onderscheid gemaakt tussen de kleur bovenin de gradient en de kleur onderin de gradient. Beide kleuren worden middels RGB bepaald. Deze kleuren worden meegegeven aan de CAGradientLayer klasse in de vorm van een array. Hierna wordt er bepaald vanaf waar tot waar het gradient moet lopen, dit is de 'locations' property.
<br><img src="https://images0.cnblogs.com/i/607542/201406/180835350983550.png" width="200" height="200"><br>
Het frame van de gradient wordt gelijk gesteld aan een percentage van de view waarin deze wordt gezet, hierna wordt deze toegevoegd aan de view.

Hiernaast wordt er in de viewDidLoad nog de volgende code aangeroepen om er voor te zorgen dat het ReCrowd logo op de voorgrond van het gradient wordt getoond.
```
self.view.bringSubview(toFront: recrowdLogoImageView)
```

Voor het resultaat is er ook gebruik gemaakt van de volgende bronnen om het uiterlijk van het storyboard te tweaken:
* https://stackoverflow.com/questions/26706565/how-do-i-change-uiview-size


###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
