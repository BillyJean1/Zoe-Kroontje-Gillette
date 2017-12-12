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
<br><img src="https://i.imgur.com/ZRgnego.png" width="500" height="300"><br>

Elk van de knoppen in het scherm is van een eigen type, waarbij er verder vaak geen extra code nodig is om de knop werkende te krijgen.
```
    @IBOutlet weak var fbLoginButton: FBSDKLoginButton!
    @IBOutlet weak var twitterLoginButton: TWTRLogInButton!
    @IBOutlet weak var googleLoginButton: GIDSignInButton!
```
Vervolgens kun je voor Facebook en Google een delegate overerven in de viewcontroller waardoor je een methode tot je beschikking hebt die aangeroepen wordt bij een succesvolle login. Hieronder is de Google 'didsignin' methode bijvoorbeeld weergegeven:
```
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!,
              withError error: Error!) {
        ...
    }
```
Voor Twitter moet je echter een completion block specificeren. Hierin geef je aan wat er moet gebeuren op 'completion' van een login dus. 

```
        twitterLoginButton.logInCompletion = { session, error in
            ...
        }
```

Ten slotte kun je de gegevens van de logins in firebase opslaan als een user. Hierdoor kun je firebase auth dus via social media doen. Dit is niet geimplementeerd in mijn poc maar zou er voor google bijvoorbeeld zo uitzien:
```
guard let authentication = user.authentication else { return }
  let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                    accessToken: authentication.accessToken)
Auth.auth().signIn(with: credential) { (user, error) in
  if let error = error {
    // ...
    return
  }
  // User is signed in
  // ...
}
}
```
###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
