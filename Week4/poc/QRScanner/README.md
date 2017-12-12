Firebase Social Media Logins
----------------
#### Hypothese 
Er kan in Swift een QR code worden gescand en wat informatie hierover worden opgehaald.

###### Motivatie
De motivatie voor dit onderzoek komt voort uit het beloningsysteem van de applicatie die we gaan ontwikkelen. Met name hoe een beloning kan worden opgehaald. Hiervoor zou namelijk een qr code kunnen worden gegenereerd/gescand die de beloning verzilvert voor de app gebruiker. Voor dit onderzoek zal het scannnen worden uitgewerkt, in een later onderzoek zou ik ook nog graag het genereren willen uitwerken.

#### Testopzet
De hypothese van dit onderzoek zal worden bereikt door het opstellen van een simpele applicatie in swift die gebruik maakt van het AVFoundation framework van iOS. 

###### Verwacht test resultaat
De app die gebouwd wordt zall een camera view laten zien die je op een qr code moet richten. Als er dan een QR code wordt getoond dan wordt hier in een label wat informatie over weergegeven.

###### Methode
Voor het realiseren van het test resultaat zal er gebruik worden gemaakt van een tutorial:
* http://www.theappguruz.com/blog/qrcode-reader-using-swift

#### Resultaat
Het visuele resultaat is zoals beschreven in de test opzet.
<br><img src="https://i.imgur.com/kh91C2N.jpg" width="300" height="500"><br>
Echter is er vernomen dat dit niet functioneel compleet is. Deze scand namelijk niet actief de QR code, ondanks dat de tutorial in zijn volledigheid gevolgd is.

De code die verantwoordelijk zou moeten zijn voor het scannen van de QR code komt vanuit AVFoundation framework en is als volgt:
```
objCaptureVideoPreviewLayer = AVCaptureVideoPreviewLayer(session: objCaptureSession)
        objCaptureVideoPreviewLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
        objCaptureVideoPreviewLayer?.frame = view.layer.bounds
        self.view.layer.addSublayer(objCaptureVideoPreviewLayer)
        objCaptureSession?.startRunning()  
```
Deze code voegt een preview toe aan het scherm van de app, aldus wat de front camera ziet. De tutorial specificeerde dit niet, maar hiervoor was een permissie nodig om de camera te mogen gebruiken in de info.plist.

Vervolgens komt het gedeelte dat een rode rand zou moeten toevoegen in de camera view aan de hand van de gevonden metadata (dus als er een qr code gevonden is), maar deze code lijkt niks te doen ondanks dat deze wel aangeroepen wordt.

```
vwQRCode = UIView()
        vwQRCode?.layer.borderColor = UIColor.redColor().CGColor
        vwQRCode?.layer.borderWidth = 5
        self.view.addSubview(vwQRCode!)
        self.view.bringSubviewToFront(vwQRCode!)
```

Ik heb deze code gedebugged maar ben er in het beschikbare tijdsbestek (de tijd waarin ik een iOS device mocht lenen van Kevin) er niet achter gekomen waarom het niet werkt. Ik denk dat dit ligt aan een verandering in het AVFoundation framework, aangezien deze verantwoordelijk is voor het scannen naar een code in wat de camera vastlegt met zijn delegate method captureOutput.

###### Terugkoppeling hypothese
De app die is voortgekomen uit het testen bewijst niet de hypothese. Dit komt doordat de tutorial geen werkend resultaat opleverde en er in de gegeven tijd niet nog verder aan kon worden gewerkt. Er wordt vernomen dat de tutorial geen werken resultaat leverde omdat deze was gericht op Swift 3.0, terwijl de programmeeromgeving Swift 4.0 hanteerd. Ook weerhoudt gebrek aan een iOS device (emulator werkt hiervoor niet) het verder uitzoeken van de QR mogelijkheden op dit huidige moment.
