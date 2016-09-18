//
//  ViewController.swift
//  swiftFizBuzD
//
//  Created by Guang on 9/18/16.
//  Copyright © 2016 Guang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let values = Array(0...100)
        for number in values{
            //let printNumber = Fnumer(result: fizzbuzz(number))
            //printNumber.canPrint()
            let printElement = Fnumer<AnyObject>()
            printElement.canPrint(fizzbuzz(number))
        }
    }
    
    func fizzbuzz<T>(number: Int) -> T {
        //        var re : AnyObject
        var re : T
        switch (number % 3, number % 5){
        case (0,0):
            re = "CrackePop" as! T
        //return "CrackePop" as! T
        case (0,_):
            re = "Crackle" as! T
        //return "Crackle" as! T
        case (_,0):
            re = "Pop" as! T
        //return "Pop" as! T
        default:
            re = String(number) as! T
            //return String(number) as! T
        }
        return re
    }
}

protocol Pintable {
    //var result: String { get set }
    //func canPrint()
    //------------------------------------
    associatedtype resultT
    func canPrint(resultT: resultT)
}

struct Fnumer<T>: Pintable
{
    //    var result: String
    //    func canPrint() {
    //        print(result)
    //    }
    //--------------------
    //var printedElement =
    func canPrint(resultT: AnyObject) {
        print(resultT)
    }

    
}

