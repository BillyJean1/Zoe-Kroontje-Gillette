//
//  ViewController.swift
//  QRGenerator
//
//  Created by mac on 16-12-17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit
import QRCode

class ViewController: UIViewController {

    private let BACKGROUND_COLOR = CIColor(rgba: "000")
    private let QRCOLOR_URL = CIColor(rgba: "6b42f4")
    private let QRCOLOR_STRING = CIColor(rgba: "f44141")
    private let QRCOLOR_DATA = CIColor(rgba: "41f443")

    @IBOutlet weak var stringQRImage: UIImageView!
    @IBOutlet weak var urlQRImage: UIImageView!
    @IBOutlet weak var dataQRImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // QR info types
        let string = "Hello world !"
        let url = URL(string: "http://google.com")!
        let data = "Hello world !".data(using: .isoLatin1)!
        
        // Get QR codes and display them
        self.stringQRImage.image = generateQRByString(string: string)?.image
        self.urlQRImage.image = generateQRByUrl(url: url)?.image
        self.dataQRImage.image = generateQRByData(data: data)?.image
    }

    func generateQRByUrl(url: URL) -> QRCode?{
        // URL
        var qrCode = QRCode(url)
        qrCode?.backgroundColor = BACKGROUND_COLOR
        qrCode?.color = QRCOLOR_URL
        return qrCode
    }

    func generateQRByString(string: String)-> QRCode?{
        // String
        var qrCode = QRCode(string)
        qrCode?.backgroundColor = BACKGROUND_COLOR
        qrCode?.color = QRCOLOR_STRING
        return qrCode
    }
    
    func generateQRByData(data: Data)-> QRCode?{
        // Data
        var qrCode = QRCode(data)
        qrCode.backgroundColor = BACKGROUND_COLOR
        qrCode.color = QRCOLOR_DATA
        return qrCode
    }

}

