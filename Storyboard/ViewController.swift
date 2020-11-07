//
//  ViewController.swift
//  Storyboard
//
//  Created by BABICH Simon on 07.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    ///счетчик нажатий на кнопку
    var counter: Int = 0
    ///our switch
    @IBOutlet weak var switch01: UISwitch!
    
    ///our button
    @IBOutlet weak var button01: UIButton!
    
    ///our label
    @IBOutlet weak var label01: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        button01.setTitle("Запустить счетчик", for: .normal)
        //? почему кнопка серая? а не синяя? и не меняется по строке ниже на зелёную
        button01.backgroundColor = .green
        button01.tintColor = .red
        label01.text = "press the button"
        button01.backgroundColor = .gray
        button01.layer.cornerRadius = 20
        //? как сделать свич в значение выключен
        //switch01.setValue() = false
        //test
    }
    
    ///Press our button
    @IBAction func pressButton01(_ sender: UIButton) {
        print("Кнопка нажата")
        button01.setTitle("Увеличить счетчик", for: .normal)
        counter += 1
        labelChange()

    }
    
    ///change our switch
    @IBAction func changeSwitch01(_ sender: UISwitch) {
        
        //?при первом изменении свича выдается сообщение ниже. что не так?
        //2020-11-07 12:00:24.228241+0300 Storyboard[10313:240378] invalid mode 'kCFRunLoopCommonModes' provided to CFRunLoopRunSpecific - break on _CFRunLoopError_RunCalledWithInvalidMode to debug. This message will only appear once per execution.

        print(switch01.isOn)
        
        let bColor: UIColor = switch01.isOn ? .lightGray : .darkGray
        view.backgroundColor = bColor
        
        labelChange()
    }
    
    func labelChange() {
        let counterText: String = String(counter)
        let txtSwitch: String = switch01.isOn ? "День" : "Ночь"
        
        let result: String = txtSwitch + ".  Кол-во нажатий: " + counterText
        
        label01.text = result
    }
    
}

