//
//  ViewController.swift
//  UOP test
//
//  Created by 苏昊博 on 2022/2/14.
//

import UIKit
import MessageUI

class ViewController: UIViewController {
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!


//Neptun page part
    @IBAction func Neptunbutton(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://neptun-web4.tr.pte.hu/hallgato/login.aspx")! as URL,options: [:], completionHandler: nil)
    }
    
//faculty to change the segment(first and second)
    
    @IBAction func switchview(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0{
            firstView.alpha=1
            secondView.alpha=1

        }else{
            firstView.alpha=0
            secondView.alpha=1
        }
        
        
    }
    
    // Faculty of Business and Economics button for check the website
    @IBAction func openwebsite(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://ktk.pte.hu/en")! as URL,options: [:], completionHandler: nil)
        
    }
    
    
    //Faculty of Cultural Sciences, Education and Regional Development open weibsite
    @IBAction func Checkwebsite(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://kpvk.pte.hu/en")! as URL,options: [:], completionHandler: nil)
    }
    
//Faculty of Engineering and Information Technology website
    @IBAction func checkit(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://english.mik.pte.hu/")! as URL,options: [:], completionHandler: nil)
    }
    
    //Faculty of Health Sciences
    
    @IBAction func openit(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://english.etk.pte.hu/")! as URL,options: [:], completionHandler: nil)
    }
    //Facutly of Humanities and Social Sciences
    @IBAction func checkwebsite4(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.btk.elte.hu/en/")! as URL,options: [:], completionHandler: nil)
    }
    //law
    
    @IBAction func openwebsite1(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://ajk.pte.hu/en")! as URL,options: [:], completionHandler: nil)
    }
    //arts
    
    @IBAction func openwebsite2(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.art.pte.hu/?language=en")! as URL,options: [:], completionHandler: nil)
    }
    //Faculty of Pharmacy
    
    @IBAction func openwebsite3(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://gytk.pte.hu/en")! as URL,options: [:], completionHandler: nil)
    
    }
    //ttk
    
    @IBAction func openwebsite4(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.ttk.pte.hu/")! as URL,options: [:], completionHandler: nil)
        
        
    }
    //medical school
    
    @IBAction func openwebsite5(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://aok.pte.hu/en")! as URL,options: [:], completionHandler: nil)
    }//aok
    
    
    @IBAction func CallThePhone(_ sender: Any) {

        var url:NSURL = NSURL(string: "tel://+3672503-600")!
        UIApplication.shared.openURL(url as URL)
    
    }
    //button for phone call
    
  
    @IBAction func SendEmail(_ sender: Any) {
        showMailComposer()

    }
    func showMailComposer() {
        
        guard MFMailComposeViewController.canSendMail() else {
            //Show alert informing the user
            return
        }
        
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["kapcsolat@gamma.ttk.pte.hu"])
        composer.setSubject("HELP!")
        composer.setMessageBody("I got some question... help!", isHTML: false)
        
        present(composer, animated: true)
    }
}


extension ViewController: MFMailComposeViewControllerDelegate {
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        
        if let _ = error {
            //Show error alert
            controller.dismiss(animated: true)
            return
        }
        
        switch result {
        case .cancelled:
            print("Cancelled")
        case .failed:
            print("Failed to send")
        case .saved:
            print("Saved")
        case .sent:
            print("Email Sent")
        @unknown default:
            break
        }
        
        controller.dismiss(animated: true)
    }
//button for send email

}
    
    

