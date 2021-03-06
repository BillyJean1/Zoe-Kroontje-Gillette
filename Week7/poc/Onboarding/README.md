Onboarding
----------------
#### Hypothese 
Er kan een onboarding implementatie worden gemaakt in een Swift app.

###### Motivatie
Omdat ReCrowd in principe een soort spel is waarbij de gebruiker punten moet behalen om beloningen te krijgen is het handig om de gebruiker bij het eerste gebruik te introduceren aan de werking van de applicatie. De beste manier om een applicatie te introduceren voordat de gebruiker hieraan wordt blootgesteld is met onboarding: dit houdt in dat er bij het eerste gebruik een korte uitleg wordt getoond. In deze poc wil ik graag uitzoeken hoe onboarding werk voor eventueel gebruik in de ReCrowd app.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het realiseren van een onboarding app, die slechts het onboarding proces afhandelt. 

###### Verwacht test resultaat
Het verwachte test resultaat zal er uit zien zoals in de tutorial. Deze heeft dus 3 overgang schermen waar met verschillende kleuren en icoontjes een introductie mogelijkheid wordt geboden. De introductie zal voor deze poc simpelweg lorem ipsum zijn en de icoontjes zullen zijn zoals aangeboden in de tutorial.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van verscheidene resources:
* https://www.youtube.com/watch?v=G5UkS4Mrepo

#### Resultaat
Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/ZDpprwg.png" width="500" height="250"><br>

De app heeft twee view controllers en geen entry point. De eerste view controller is de onboarding controller en de tweede is de hoofd applicatie. De volgorde waarin de controllers worden bereikt wordt bepaald door user defaults. Deze wordt gezet op het moment dat de app bereikt wordt via de onboarding route. Dit is te zien in de functie die  vast zit aan de 'getStartedButton', waar de user op moet klikken op het moment dat deze alle introductie schermen heeft doorgeklikt:

```swift
@IBAction func gotStarted(_ sender: UIButton) {
let userDefaults = UserDefaults.standard
userDefaults.set(true, forKey: "onboardingComplete")
userDefaults.synchronize()
}
```
In de app delegate wordt er dan een viewcontroller geinstantieert op basis van het storyboard id.
```
var initialViewController = sb.instantiateViewController(withIdentifier: "Onboarding")
```

Het opzetten van de onboarding schermen wordt gedaan middels paper onboarding. Paper onboarding wordt door middel van een pod toegevoegd aan het project en wordt middels overerving van 'PaperOnboardingDataSource' en 'PaperOnboardingDelegate' benut. Deze klassen bieden namelijk de functie 'onboardingItemAtIndex', waarin soortgelijk aan een tabel view data kan worden meegegeven en door middel van index aan de app kan worden toegevoegd.

De data wordt weergegeven in een view die is toegevoegd aan de Onboarding controller. Deze view moet echter wel overerven van PaperOnboarding voor dit om te werken. Elk onboarding item moet een OnboardingItemInfo instantie meekrijgen waarin er gegevens zoals kleur, font, icoontjes en texten worden meegegeven:
```
OnboardingItemInfo(#imageLiteral(resourceName: "rocket"), "A Great Rocket Start", "Cupcake ipsum dolor sit amet. Jelly tootsie roll jelly-o. Gummi bears sweet roll jelly icing cupcake gummi bears soufflé.", #imageLiteral(resourceName: "rocket"), backgroundColorOne, UIColor.white, UIColor.white, titleFont, descriptionFont)
```

Resources:
* http://www.cupcakeipsum.com/
* https://github.com/Ramotion/paper-onboarding

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
