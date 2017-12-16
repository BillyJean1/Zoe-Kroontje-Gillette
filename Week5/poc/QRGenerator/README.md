Firebase email/wachtwoord login
----------------
#### Hypothese 
Er kan in Swift een QR code worden gegenereerd op basis van een string/url/data.

###### Motivatie
De motivatie voor dit onderzoek komt voort uit het beloningssysteem van ReCrowd. Hierbij heb ik vorige week een QR scanner proberen te maken zonder succes, waardoor ik QR nu vanaf de andere kant wil gaan benaderen door deze keer een QR code te maken die getoond zou kunnen worden voor het ophalen van een beloning bijvoorbeeld.

#### Testopzet
De hypothese van dit onderzoek wordt bereikt door een Swift applicatie te realiseren waarin een QR code kan worden gegenereerd voor een gegeven string, een url of voor data.

###### Verwacht test resultaat
De app die gebouwd wordt zal visueel gezien 3 images hebben. Elk van deze images zullen een QR code bevatten die ofwel gegenereerd is middels een string, url of data. Elke QR code zal een andere kleur hebben en voorzien zijn van een label dat beschrijft welke QR code het precies is.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van de documentatie van QRCode, het framework dat gebruikt wordt voor het genereren van de codes:
* https://github.com/aschuch/QRCode

#### Resultaat

Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/ZRgnego.png" width="500" height="300"><br>

```
    code
```

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
