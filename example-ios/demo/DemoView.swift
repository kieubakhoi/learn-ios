//
//  DemoView.swift
//  example-ios
//
//  Created by Apple on 26/07/2021.
//

import UIKit
class DemoView: UIViewController {
    @IBOutlet weak var Logo: UIImageView!
    @IBOutlet weak var Label: UILabel!
    @IBOutlet var labelNameColellection: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        //do any additional setup after loading view
        //set title
//        Label.text = "Khoi siu nhan !!!"
//        // set text for collection labels by using loop for
//        for index in 0..<labelNameColellection.count {
//            labelNameColellection![index].text = "Khoi kb \(index)"
//        }
        // It has nil ???
        
        // add user avatar
        let frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        let userAvatar = UIImageView(image: UIImage(named: "no_avatar"))
        userAvatar.frame = frame
        userAvatar.contentMode = .scaleToFill
        view.addSubview(userAvatar)
        
        // add username
        let userName = UILabel(frame: CGRect(x: 50, y: 100, width: 100, height: 25))
        userName.text  = "Khoi kb"
        userName.backgroundColor = .lightGray
        userName.textAlignment = .center
        userName.textColor = .blue
        view.addSubview(userName)
        
        // add button
        let button = UIButton(frame: CGRect(x: 50, y: 100, width: 100, height: 225))
        button.backgroundColor = .clear
        button.addTarget(self, action: 	#selector(tap), for: .touchDragInside)
        view.addSubview(button)
        
    }
    @objc func tap(){
        print("Click Click Click !!!")
    }

@IBAction func tapMe(_ sender: Any) {
    print("Tapp mee")
}
    //add touch view
   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        if let touch = touches.first {
            let currentPoint = touch.location(in: view)
            // do something with current Point
            print("touch point: \(currentPoint.x) and \(currentPoint.y)")
            
            //get point in label UI
            let currentPointLabelName = touch.location(in: Label)
            print("Label point: \(currentPointLabelName.x) and \(currentPointLabelName.y)")
            
            if touch.view == Label {
                print("inside Label")
            } else if touch.view == Logo{
                print("inside Logo")
            } else {
                print("outside Label")
            }
        }
   }
}
