Eureka forms
----------------
#### Hypothese
Er kan door het gebruik van Eureka Forms code matig een formulier worden gebouwd in Swift.

###### Motivatie
De motivatie voor deze poc komt voor uit de complexiteit van het bouwen van een formulier in Swift. Hierbij komen in het storyboard namelijk heel veel constraints kijken die moeilijk goed te krijgen zijn en zorgen voor 'hacky' oplossingen middels code, dit is eigenlijk ongewenst. Wel zal het echter in de toekomst nodig zijn om het registratie formulier van ReCrowd uit te breiden, of een formulier aan te bieden bij de profiel pagina van de gebruiker waar deze zijn/haar informatie kan aanpassen/aanvullen. Hierbij zal deze poc van toepassing zijn.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het realiseren van een single view applicatie waar de mogelijkheden van Eureka benut worden.

###### Verwacht test resultaat
Het verwachte test resultaat zal een formulier zijn dat is opgesteld middels Eureka. Dit formulier zal verschillende vormen van input bevatten die nuttig zouden kunnen zijn bij het inschrijven, hiernaast zullen deze waarden bij het klikken van een 'save' knop worden geprint in de console.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van verscheidene resources:
* https://github.com/xmartlabs/Eureka

#### Resultaat
Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/1lcq8wi.png" width="250" height="300"><br>
Het formulier is opgebouwd uit zogeheten Sections en Rows die zich bevinden in een form object van Eureka. Hiervoor biedt het importeren van de FormViewController toegang tot de aparte syntax die wordt gebruikt om formulieren te bouwen. Zo wordt elke section aangegeven met +++:
```
+++ Section("Section1")
```
Elke Section kan een naam hebben en kan 0 tot veel rows hebben, elke row wordt hierbij aangegeven met <<<:
```
<<< TextRow("emailRowTag"){ row in
    row.title = "Email"
    row.placeholder = "Enter your email"
    row.add(ruleSet: emailRules)
    row.validationOptions = .validatesOnChangeAfterBlurred
}
```
Voor het ophalen van waarden uit sections hebben rows ook een tag, die in een values dictionary beschikbaar wordt bij het submitten van een formulier. Het bovenstaande row voorbeeld heeft ook een ruleset waaraan deze moet voldoen:
```
var emailRules = RuleSet<String>()
emailRules.add(rule: RuleRequired())
emailRules.add(rule: RuleEmail())
```
Deze rules specificeren dat het email veld verplicht is, maar ook dat deze een valide email adres moet zijn. Deze rules worden gevalideerd door Eureka, maar zelf check ik of aan deze regels daadwerkelijk allemaal voldaan wordt:

```
<<< ButtonRow() { (row: ButtonRow) -> Void in
    row.title = "Save"
    row.cell.backgroundColor = UIColor.blue
    row.cell.tintColor = UIColor.white
}
.onCellSelection { [weak self] (cell, row) in
    if row.section?.form?.validate().count == 0{
        let valuesDictionary = self?.form.values()
        self?.submitForm(values: valuesDictionary!)
        }
    }
}
```
Hierbij is vooral de validatie function belangrijk, deze geeft namelijk aan hoeveel regels niet aan voldaan wordt. Deze worden geteld en als er aan alles voldaan wordt dan stuur ik de waarden naar een 'submitForm' functie waar ik de dictionary met waarden simpelweg naar de console print.

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.

