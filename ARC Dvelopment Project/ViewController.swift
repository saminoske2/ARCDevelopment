//
//  ViewController.swift
//  ARC Dvelopment Project
//
//  Created by Quinton Quaye on 6/30/19.
//  Copyright © 2019 Quinton Quaye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //let hello = Hello()
        //hello.world()
        
        //A Simple Leak
        
        
        
        createLeak()
    }
    func createLeak(){
        let leak = MemoryLeak()
    }
}

class Hello{
    func world(){
        print("Hello World!")
    }
}

class MemoryLeak{
    //this init takes in a outside reference with the type of MemoryLeak
    var ref: MemoryLeak?
    init(ref: MemoryLeak){
        self.ref = ref
    }
    //this init sets reference of MemoryLeak
    init(){
        ref = self
    }
}



