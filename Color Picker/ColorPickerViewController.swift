//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Grant Harrison on 10/11/19.
//  Copyright © 2019 Grant Harrison. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    struct colorsStruct {
        var colors: String
        var uiColor: UIColor
    }
    
    var colorList: [colorsStruct] = [colorsStruct(colors: "Red", uiColor: UIColor.red), colorsStruct(colors: "Orange", uiColor: UIColor.orange), colorsStruct(colors: "Yellow", uiColor: UIColor.yellow), colorsStruct(colors: "Green", uiColor: UIColor.green), colorsStruct(colors: "Blue", uiColor: UIColor.blue), colorsStruct(colors: "Purple", uiColor: UIColor.purple)]
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var detailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        detailLabel.text = colorList[row].colors
        mainView.backgroundColor = colorList[row].uiColor
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colorList[row].colors
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
