//
//  StepIngredientPizzaViewController.swift
//  AsiLaQuiero
//
//  Created by Nicolás Narria on 12/30/15.
//  Copyright © 2015 Nicolás Narria. All rights reserved.
//

import UIKit

class StepIngredientPizzaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate  {
    
    
    @IBOutlet weak var pickerTextFieldIng1: UITextField!
    @IBOutlet weak var pickerTextFieldIng2: UITextField!
    @IBOutlet weak var pickerTextFieldIng3: UITextField!
    @IBOutlet weak var pickerTextFieldIng4: UITextField!
    
    var pickOption = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"]
    
    var sizePizza:String = ""
    var masaPizza:String = ""
    var cheesePizza:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pickerViewIng1 = UIPickerView()
        pickerViewIng1.delegate = self
        
        pickerTextFieldIng1.delegate = self
        pickerTextFieldIng2.delegate = self
        pickerTextFieldIng3.delegate = self
        pickerTextFieldIng4.delegate = self
        
        pickerTextFieldIng1.inputView = pickerViewIng1
        pickerTextFieldIng2.inputView = pickerViewIng1
        pickerTextFieldIng3.inputView = pickerViewIng1
        pickerTextFieldIng4.inputView = pickerViewIng1
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let sigVista = segue.destinationViewController as! RealizarPedidoViewController
        
        
        sigVista.sizePizza = sizePizza
        sigVista.masaPizza = masaPizza
        sigVista.cheesePizza = cheesePizza
        
        sigVista.ing1Pizza = pickerTextFieldIng1.text!
        sigVista.ing2Pizza = pickerTextFieldIng2.text!
        sigVista.ing3Pizza = pickerTextFieldIng3.text!
        sigVista.ing4Pizza = pickerTextFieldIng4.text!
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickOption.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickOption[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print ("componente \(component)")
        
        if (pickerTextFieldIng1.isFirstResponder()) {
            pickerTextFieldIng1.text = pickOption[row]
        }
        else if (pickerTextFieldIng2.isFirstResponder()) {
            pickerTextFieldIng2.text = pickOption[row]
        }
        else if (pickerTextFieldIng3.isFirstResponder()) {
            pickerTextFieldIng3.text = pickOption[row]
        }
        else if (pickerTextFieldIng4.isFirstResponder()) {
            pickerTextFieldIng4.text = pickOption[row]
        }
        else {
            pickerTextFieldIng2.text = "Error"
        }
        self.view.endEditing(true)
    }
    
    @IBAction func backgroundTap (sender: UIControl) {
        pickerTextFieldIng1.resignFirstResponder()
        pickerTextFieldIng2.resignFirstResponder()
        pickerTextFieldIng3.resignFirstResponder()
        pickerTextFieldIng4.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. 
    {
        pickerTextFieldIng1.resignFirstResponder()
        pickerTextFieldIng2.resignFirstResponder()
        pickerTextFieldIng3.resignFirstResponder()
        pickerTextFieldIng4.resignFirstResponder()
        return true;
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
