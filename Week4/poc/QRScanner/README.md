Firebase Social Media Logins
----------------
#### Hypothese 
Er kan in Swift gebruik worden gemaakt van de login opties van Facebook, Google en Twitter.

###### Motivatie
De motivatie voor dit onderzoek komt voort uit de wens van de opdrachtgever, deze wil namelijk  users kunnen laten inloggen op de Billy Jean app. Hierom wil ik de social media koppelingen maken in Swift zodat gebruikers dit op de meest efficiente manier zouden kunnen behalen.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het opstellen van een simpele applicatie in swift die gebruik maakt van Firebase en de bijbehorende pods per login optie.

###### Verwacht test resultaat
De app die gebouwd wordt zal voor Facebook, Twitter en Google elk een knop hebben waarmee kan worden ingelogd. De koppeling tussen Firebase en de inlog opties zal een opzet voor zijn in het Swift project maar valt voor het behalen van de hypothese buiten de scope van deze poc.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van de firebase docs en de docs waar naar verwezen wordt per inlog kanaal.
* https://firebase.google.com/docs/auth/
* https://firebase.google.com/docs/auth/ios/facebook-login
* https://www.appcoda.com/firebase-facebook-login/
* https://firebase.google.com/docs/auth/ios/google-signin
* https://firebase.google.com/docs/auth/ios/twitter-login
* https://dev.twitter.com/twitterkit/ios/installation

#### Resultaat
Voor het realiseren van de hypothese moest er voor elk van de social media kanalen eerst een tal gegevens worden aangevraagd en ingevuld.
* Voor Facebook was dit een consumer key en consumer secret die moesten worden verkregen. Ook moest facebook de bundle id van de app weten en een oauth url (callback url) hebben.
* Voor Google moest een .plist file worden ingesteld die door firebase wordt meegegeven.
* Voor Twitter moest er een consumer key en consumer secret worden aangevraagd en de callback url van firebase worden toegevoegd.

Het resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/BWeUp3i.png" width="300" height="500"><br>


```
code
```


###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
