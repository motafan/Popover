//
//  ViewController.swift
//  Popover
//
//  Created by 风起兮 on 2023/12/14.
//  https://github.com/prasad1120/ElegantPopover

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var topCenterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func topCenterButtonPressed(_ sender: UIButton) {
        showPopover(sender: sender)

    }
    

    @IBAction func itemPressed(_ sender: UIBarButtonItem) {
        showPopover(sender: sender)
    }
    
    func showPopover(sender: Any) {
        
        let label = UILabel()
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = 128
        label.text = "From the time a popover is presented until the time it’s dismissed, UIKit uses an instance of this class to manage the presentation behavior. You use instances of this class as-is to configure aspects of the popover appearance and behavior for view controllers whose presentation style is set to UIModalPresentationPopover."
        label.frame.size =  label.sizeThatFits(CGSize(width: 128, height: UIView.layoutFittingCompressedSize.height))
        
        var design = PopoverDesign()
        design.backGroundColor = .systemFill
        design.cornerRadius = 13
        design.insets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
//        let gradient = CAGradientLayer()
//        gradient.colors = [UIColor(red: CGFloat(222/255.0),
//                                   green: CGFloat(98/255.0),
//                                   blue: CGFloat(98/255.0),
//                                   alpha: CGFloat(1.0)).cgColor,
//                           UIColor(red: CGFloat(255/255.0),
//                                   green: CGFloat(184/255.0),
//                                   blue: CGFloat(140/255.0),
//                                   alpha: CGFloat(1.0)).cgColor]
//        gradient.startPoint = CGPoint(x: 0, y: 0)
//        gradient.endPoint = CGPoint(x: 1, y: 1)
//
//        design.borders = [PopoverBorder(filling: .layer(gradient), width: 12),
//                          PopoverBorder(filling: .pureColor(UIColor(red: CGFloat(255/255.0),
//                                                               green: CGFloat(184/255.0),
//                                                               blue: CGFloat(140/255.0),
//                                                               alpha: CGFloat(1.0))), width: 8)]
//        design.shape = .rectangle
//        design.solidArrowBorderIndex = 1
        
        let popoverController = PopoverController(
            contentView: label,
            design: design,
            arrow: PopoverArrow(height: 13, base: 26, baseCornerRadius: 4, direction: .any),
            sourceView: sender as? UIView,
            barButtonItem: sender as? UIBarButtonItem)
        
        present(popoverController, animated: true)
    }
    
    
}

