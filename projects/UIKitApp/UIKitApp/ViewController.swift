//
//  ViewController.swift
//  UIKitApp
//
//  Created by Emil Atanasov on 12/09/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
 
    @IBOutlet weak var openButton: UIButton!
    
    @IBAction func openTouchHandler(_ sender: Any) {
        print("Do some extra action before showing the screen.")
    }
    
    @IBAction func openSwiftUIVC(_ sender: Any) {
        let swiftUIViewController = UIHostingController(rootView: HomeView())
        self.navigationController?.pushViewController(swiftUIViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        openButton.isHidden = false
    }


}


class DetailsViewController: UIViewController {
 
    @IBOutlet weak var label: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }


}

