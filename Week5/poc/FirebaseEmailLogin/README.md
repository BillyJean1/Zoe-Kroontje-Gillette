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
<br><img src="https://i.imgur.com/e5VA2Yx.png" width="300" height="500"><br>
<br><img src="https://i.imgur.com/IBqdRyD.png" width="300" height="500"><br>

De effectieve code hierbij is voor zowel het inloggen als het aanmaken van een user erg gelijksoortig, voor het aanmaken van een user is het als volgt:
```
   Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil{
                    self.errorLabel.text = "User creation failed: \(error!)"
                    print("\(error!)")
                }else {
                    self.errorLabel.text = "Created user!"

                }
            }
```
De parameters in de create user functie krijgen als inhoud de waarden die zijn ingevuld in de ui. Firebase voert hier zelf ookal enkele checks op uit om te controleren of de ingevoerde waarde valide is.

Voor het inloggen wordt op Firebase wordt een andere methode aangeroepen maar die krijgt in principe dezelfde values mee:
```
  Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil{
                    self.errorLabel.text = "Singin failed: \(error!)"
                }else {
                    self.errorLabel.text = "Signed in!"
                }
                
            }
```

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst in zijn volledigheid de gestelde hypothese.
