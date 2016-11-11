//
//  DBButton.swift
//  customButton
//
//  Created by CCHSU20 on 11/11/2016.
//  Copyright © 2016 CCHSU20. All rights reserved.
//

import UIKit

@IBDesignable class DBButton: UIView {

    @IBOutlet weak var status: UIImageView!
    @IBOutlet weak var dbButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() -> Void{
        contentView = loadViewFromNib()
        contentView.frame = bounds
        contentView.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(contentView)
    }

    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "DBButton", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
}
