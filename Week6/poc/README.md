Swifty Beaver Logging
----------------
#### Hypothese 
Er kunnen verschillende soorten log berichten worden gemaakt en opgeslagen in een textbestand met Swift.

###### Motivatie
De motivatie voor dit onderzoek komt voort uit de wens van de groep om logs bij te kunnen houden in de ReCrowd applicatie. Logging kan namelijk erg veel waardevolle informatie verschaffen over het niet naar behoren functioneren van de applicatie.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door in Swift een applicatie te bouwen die gebruik maakt van de Swifty Beaver logging pod.

###### Verwacht test resultaat
Het verwachte test resultaat zal geen ui hebben maar zal er toe in staat zijn verschillende types berichten via een service naar de console te schrijven. Ook zal deze naar een text bestand kunnen schrijven.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van verscheidene resources:
* https://github.com/SwiftyBeaver/SwiftyBeaver
* https://gist.github.com/skreutzberger/7c396573796473ed1be2c6d15cafed34

#### Resultaat
Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/PamwDuE.png" width="600" height="450"><br>

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

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
