//
//  RealizarPedidoViewController.swift
//  AsiLaQuiero
//
//  Created by Nicolás Narria on 1/11/16.
//  Copyright © 2016 Nicolás Narria. All rights reserved.
//

import UIKit

class RealizarPedidoViewController: UIViewController {

    @IBOutlet weak var lblSizePizza: UILabel!
    @IBOutlet weak var lblMasaPizza: UILabel!
    @IBOutlet weak var lblCheesePizza: UILabel!
    
    @IBOutlet weak var lblIng1Pizza: UILabel!
    @IBOutlet weak var lblIng2Pizza: UILabel!
    @IBOutlet weak var lblIng3Pizza: UILabel!
    @IBOutlet weak var lblIng4Pizza: UILabel!
    
    
    var sizePizza:String = ""
    var masaPizza:String = ""
    var cheesePizza:String = ""
    var ing1Pizza:String = ""
    var ing2Pizza:String = ""
    var ing3Pizza:String = ""
    var ing4Pizza:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.lblSizePizza.text = sizePizza
        self.lblMasaPizza.text = masaPizza
        self.lblCheesePizza.text = cheesePizza
        self.lblIng1Pizza.text = ing1Pizza
        self.lblIng2Pizza.text = ing2Pizza
        self.lblIng3Pizza.text = ing3Pizza
        self.lblIng4Pizza.text = ing4Pizza
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! StepIngredientPizzaViewController
        sigVista.sizePizza = sizePizza
        sigVista.masaPizza = masaPizza
        sigVista.cheesePizza = cheesePizza
        
        sigVista.pickerTextFieldIng1.text = ing1Pizza
        sigVista.pickerTextFieldIng2.text = ing2Pizza
        sigVista.pickerTextFieldIng3.text = ing3Pizza
        sigVista.pickerTextFieldIng4.text = ing4Pizza
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cocinar(sender: AnyObject) {
        var flag:Bool = true
        var msg:String = ""
        
        if (self.lblSizePizza.text == "") {
            msg = "Falta que definas el tamaño de la Pizza"
            flag = false
        }
        else if (self.lblMasaPizza.text == "") {
            msg = "Falta que definas el tipo de masa de la Pizza"
            flag = false
        }
        else if (self.lblCheesePizza.text == "") {
            msg = "Falta que definas el tipo de queso de la Pizza"
            flag = false
        }
        else if (self.lblIng1Pizza.text == "") {
            msg = "Falta que definas el ingrediente 1 de la Pizza"
            flag = false
        }
        else if (self.lblIng2Pizza.text == "") {
            msg = "Falta que definas el ingrediente 2 de la Pizza"
            flag = false
        }
        else if (self.lblIng3Pizza.text == "") {
            msg = "Falta que definas el ingrediente 3 de la Pizza"
            flag = false
        }
        else if (self.lblIng4Pizza.text == "") {
            msg = "Falta que definas el ingrediente 4 de la Pizza"
            flag = false
        }
        else {
            msg = "Su pedido de Pizza ha sido aceptado comienza a ser preparado"
        }
        
        
        
        var alert = UIAlertController(title: "", message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
        
        
        
        
        
        
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
