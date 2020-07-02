//
//  PopFootView.swift
//  AwesomeBarcode
//
//  Created by Dynamsoft on 2018/11/22.
//  Copyright © 2018 Dynamsoft. All rights reserved.
//

import UIKit

@IBDesignable
class PopFootView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var spentTimeLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialFromXib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialFromXib()
    }

    func initialFromXib(){
        let nibName = String(describing: PopFootView.self)
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName:nibName, bundle: bundle)
        contentView = nib.instantiate(withOwner: self, options: nil)[0] as? UIView
        contentView.frame = bounds
        addSubview(contentView)
    }
    
    func SetSpentTime(decodeTime:String)
    {
        spentTimeLabel.text = "Total Time Spent: \(decodeTime) ms"
    }
}
