//
//  BarcodeTypesTableViewController.swift
//  DynamsoftBarcodeReaderDemo
//
//  Created by Dynamsoft on 08/07/2018.
//  Copyright © 2018 Dynamsoft. All rights reserved.
//

import UIKit

class BarcodeTypesTableViewController: UITableViewController {
    
    var mainView: ViewController!
    @IBOutlet var barcodeTypesTableView: UITableView!
    @IBOutlet weak var linearCell: UITableViewCell!
    @IBOutlet weak var qrcodeCell: UITableViewCell!
    @IBOutlet weak var pdf417Cell: UITableViewCell!
    @IBOutlet weak var datamatrixCell: UITableViewCell!
    @IBOutlet weak var aztecCell: UITableViewCell!
    @IBOutlet weak var databarCell: UITableViewCell!
    @IBOutlet weak var patchcodeCell: UITableViewCell!
    @IBOutlet weak var maxicodeCell: UITableViewCell!
    @IBOutlet weak var microqrCell: UITableViewCell!
    @IBOutlet weak var micropdf417Cell: UITableViewCell!
    @IBOutlet weak var gs1compositeCell: UITableViewCell!
    @IBOutlet weak var PostalCodeCell: UITableViewCell!
    @IBOutlet weak var dotCodeCell: UITableViewCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barcodeTypesTableView.setEditing(true, animated: false)
        self.configCellsBackground()
        self.selectCells()
        barcodeTypesTableView.tableFooterView = UIView.init(frame: CGRect.zero)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(mainView != nil && mainView!.dbrManager != nil)
        {
            mainView.dbrManager?.isPauseFramesComing = true
        }
    }
    
    func configCellsBackground(){
        let bgColorView = UIView.init()
        bgColorView.backgroundColor = UIColor.white
        linearCell.selectedBackgroundView = bgColorView
        qrcodeCell.selectedBackgroundView = bgColorView
        pdf417Cell.selectedBackgroundView = bgColorView
        datamatrixCell.selectedBackgroundView = bgColorView
        aztecCell.selectedBackgroundView = bgColorView
        databarCell.selectedBackgroundView = bgColorView
        patchcodeCell.selectedBackgroundView = bgColorView
        maxicodeCell.selectedBackgroundView = bgColorView
        microqrCell.selectedBackgroundView = bgColorView
        micropdf417Cell.selectedBackgroundView = bgColorView
        gs1compositeCell.selectedBackgroundView = bgColorView
        PostalCodeCell.selectedBackgroundView = bgColorView
        dotCodeCell.selectedBackgroundView = bgColorView
    }
    
    func selectCells(){
        let types = (mainView == nil || mainView.dbrManager == nil) ? EnumBarcodeFormat.ALL.rawValue: mainView.dbrManager?.barcodeFormat
        let types_2 = (mainView == nil || mainView.dbrManager == nil) ? 0 : mainView.dbrManager?.barcodeFormat2
        if((types! | EnumBarcodeFormat.ONED.rawValue) == types)
        {
            let indexPath = IndexPath(row: 0, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.QRCODE.rawValue) == types)
        {
            let indexPath = IndexPath(row: 1, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.PDF417.rawValue) == types)
        {
            let indexPath = IndexPath(row: 2, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.DATAMATRIX.rawValue) == types)
        {
            let indexPath = IndexPath(row: 3, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.AZTEC.rawValue) == types)
        {
            let indexPath = IndexPath(row: 4, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.GS1DATABAR.rawValue) == types)
        {
            let indexPath = IndexPath(row: 5, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.PATCHCODE.rawValue) == types)
        {
            let indexPath = IndexPath(row: 6, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.MAXICODE.rawValue) == types)
        {
            let indexPath = IndexPath(row: 7, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.MICROQR.rawValue) == types)
        {
            let indexPath = IndexPath(row: 8, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.MICROPDF417.rawValue) == types)
        {
            let indexPath = IndexPath(row: 9, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types! | EnumBarcodeFormat.GS1COMPOSITE.rawValue) == types)
        {
            let indexPath = IndexPath(row: 10, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types_2! | EnumBarcodeFormat2.POSTALCODE.rawValue) == types_2)
        {
            let indexPath = IndexPath(row: 11, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
        if((types_2! | EnumBarcodeFormat2.DOTCODE.rawValue) == types_2)
        {
            let indexPath = IndexPath(row: 12, section: 0)
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        //where indexPath.row is the selected cell
        let hasCellSelected = linearCell.isSelected || qrcodeCell.isSelected || pdf417Cell.isSelected || datamatrixCell.isSelected ||
            aztecCell.isSelected || databarCell.isSelected || patchcodeCell.isSelected || microqrCell.isSelected || micropdf417Cell.isSelected || gs1compositeCell.isSelected || PostalCodeCell.isSelected || dotCodeCell.isSelected
        if(hasCellSelected == false)
        {
            barcodeTypesTableView.selectRow(at: indexPath, animated: false, scrollPosition: UITableViewScrollPosition.bottom)
        }
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.init(rawValue: UITableViewCellEditingStyle.insert.rawValue | UITableViewCellEditingStyle.delete.rawValue)!
    }

    override func viewWillDisappear(_ animated: Bool) {
        var types = 0
        var types_2 = 0
        if(linearCell.isSelected)
        {
            types = types | EnumBarcodeFormat.ONED.rawValue
        }
        if(qrcodeCell.isSelected)
        {
            types = types | EnumBarcodeFormat.QRCODE.rawValue
        }
        if(pdf417Cell.isSelected)
        {
            types = types | EnumBarcodeFormat.PDF417.rawValue
        }
        if(datamatrixCell.isSelected)
        {
            types = types | EnumBarcodeFormat.DATAMATRIX.rawValue
        }
        if(aztecCell.isSelected)
        {
            types = types | EnumBarcodeFormat.AZTEC.rawValue
        }
        if(databarCell.isSelected)
        {
            types = types | EnumBarcodeFormat.GS1DATABAR.rawValue
        }
        if(patchcodeCell.isSelected)
        {
            types = types | EnumBarcodeFormat.PATCHCODE.rawValue
        }
        if(maxicodeCell.isSelected)
        {
            types = types | EnumBarcodeFormat.MAXICODE.rawValue
        }
        if(microqrCell.isSelected)
        {
            types = types | EnumBarcodeFormat.MICROQR.rawValue
        }
        if(micropdf417Cell.isSelected)
        {
            types = types | EnumBarcodeFormat.MICROPDF417.rawValue
        }
        if(gs1compositeCell.isSelected)
        {
            types = types | EnumBarcodeFormat.GS1COMPOSITE.rawValue
        }
        if(PostalCodeCell.isSelected)
        {
            types_2 = types_2 | EnumBarcodeFormat2.POSTALCODE.rawValue
        }
        if(dotCodeCell.isSelected)
        {
            types_2 = types_2 | EnumBarcodeFormat2.DOTCODE.rawValue
        }
    
        let allBarcodeFormatTypeInvert = ~EnumBarcodeFormat.ALL.rawValue
        let allBarcodeFormat2TypeInvert = ~(EnumBarcodeFormat2.NONSTANDARDBARCODE.rawValue | EnumBarcodeFormat2.POSTALCODE.rawValue | EnumBarcodeFormat2.DOTCODE.rawValue)
        if(mainView != nil && mainView!.dbrManager != nil){
            mainView.dbrManager?.setBarcodeFormat(format: (mainView.dbrManager!.barcodeFormat! & allBarcodeFormatTypeInvert), format2: (mainView.dbrManager!.barcodeFormat2! & allBarcodeFormat2TypeInvert))
            mainView.dbrManager?.setBarcodeFormat(format: (mainView.dbrManager!.barcodeFormat! | types), format2: (mainView.dbrManager!.barcodeFormat2! | types_2))
        }
        super.viewWillDisappear(animated)
    }
    
}
