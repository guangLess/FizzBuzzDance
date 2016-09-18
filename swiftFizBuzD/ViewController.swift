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
            let element = Fnumer<Int>(content: number)
            element.canPrint(number)
        }
    }
}

protocol Pintable {
    associatedtype resultT
    func canPrint(resultT: resultT)
}

struct Fnumer<T>: Pintable
{
    var content: Int

    func canPrint(resultT: AnyObject) {
        print(toFizzBuzz(content))
    }

    
    private func toFizzBuzz(inPut:Int) -> AnyObject {
        var re : AnyObject
        switch (inPut % 3, inPut % 5){
        case (0,0):
            re = "CrackePop"
        case (0,_):
            re = "Crackle"
        case (_,0):
            re = "Pop"
        default:
            re = inPut
        }
        return re
    }
}

