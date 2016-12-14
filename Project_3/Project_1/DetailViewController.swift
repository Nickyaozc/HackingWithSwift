//
//  DetailViewController.swift
//  Project_1
//
//  Created by yaozican on 2016/12/11.
//  Copyright © 2016年 NICKYAO. All rights reserved.
//

import UIKit
import Social

class DetailViewController: UIViewController {

    var imageView = UIImageView(frame:CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
   
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = selectedImage
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))

        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
        self.view.addSubview(imageView)
    }
    
    func shareTapped() {
        let vc = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
        
//        if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
//            vc.setInitialText("Look at this great picture!")
//            vc.add(imageView.image!)
//            vc.add(URL(string: "http://www.photolib.noaa.gov/nssl"))
//            present(vc, animated: true)
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
