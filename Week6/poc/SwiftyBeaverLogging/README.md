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
<br><img src="https://i.imgur.com/jDNkG1F.png" width="300" height="150"><br>

Om dit resultaat te bereiken heb ik een LoggingService gemaakt die in de init() alle configuratie settings afhandeld van SwiftyBeaver. Hierbij heb ik alleen het date format van de logberichten aanpasbaar gemaakt door deze als init parameter mee te geven.
```
init (dateFormat: String){
    let console = ConsoleDestination()
    let file = FileDestination()
    file.logFileURL = URL(fileURLWithPath: "/tmp/app_info.log")
    console.format = dateFormat

    log.addDestination(console)
    log.addDestination(file)
}
```
Naast de init kun je in de LoggingService voor elk niveau een functie vinden die soortgelijk is aan de volgende:
```
func logVerbose(message: String) {
    log.verbose("💜 : [\(message)]")
}
```
Het aanroepen van zulke methodes produceert zowel in het .log bestand een entry als in de Swift console (zie afbeelding).

Middels het command 'tail -f /tmp/app_info.log' kan het de file met de log contents worden weergegeven in de terminal.

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
