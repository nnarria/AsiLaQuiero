//
//  StepTypeCheesePizzaViewController.swift
//  AsiLaQuiero
//
//  Created by Nicolás Narria on 12/30/15.
//  Copyright © 2015 Nicolás Narria. All rights reserved.
//

import UIKit

class StepTypeCheesePizzaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let tipoQueso = ["", "mozarela", "cheddar", "parmesano", "sin queso"]
    
    var sizePizza:String = ""
    var masaPizza:String = ""
    var cheeseSelected:String = ""
    var ing1Pizza:String = ""
    var ing2Pizza:String = ""
    var ing3Pizza:String = ""
    var ing4Pizza:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! StepIngredientPizzaViewController
        
        sigVista.sizePizza = sizePizza
        sigVista.masaPizza = masaPizza
        sigVista.cheesePizza = cheeseSelected
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.tipoQueso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        self.cheeseSelected = self.tipoQueso[row]
        return self.tipoQueso[row]
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
