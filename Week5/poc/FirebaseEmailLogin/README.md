Firebase email/wachtwoord login
----------------
#### Hypothese 
Er kan in Swift gebruik worden gemaakt van de Firebase login met email en wachtwoord.

###### Motivatie
De motivatie voor dit onderzoek komt voort uit de inloggen use case die momenteel op de backlog zit van ReCrowd maar ook is het een voortzetting van de poc van vorige week die te maken had met firebase social media logins. Deze poc biedt namelijk een alternatief op persé social media moeten koppelen om in te loggen.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het opstellen van een simpele applicatie in swift waarin een email en wachtwoord combinatie kan worden ingevoerd. Indien deze niet bekend zijn wordt er een nieuwe user aangemaakt en zo wel dan wordt de persoon gewoon ingelogd.

###### Verwacht test resultaat
De app die gebouwd wordt zal visueel gezien een invoer veld hebben voor een email, een invoerveld voor een wachtwoord en een knop waarmee ingelogd/geregistreerd wordt. Wanneer er succesvol wordt ingelogd moet er een segue worden gedaan naar een pagina waarop een succes tekst wordt getoond.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van de firebase docs:
* https://firebase.google.com/docs/auth/ios/password-auth

#### Resultaat

Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/ZRgnego.png" width="500" height="300"><br>

```
    code
```

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
