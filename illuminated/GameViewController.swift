//
//  GameViewController.swift
//  illuminated
//
//  Created by Andi on 27/03/2017.
//  Copyright © 2017 Andi. All rights reserved.
//

import UIKit
import Metal
import MetalKit



class GameViewController:UIViewController
{
    
    var renderer: Renderer? = nil
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let device = MTLCreateSystemDefaultDevice()
        guard device != nil else { // Fallback to a blank UIView, an application could also fallback to OpenGL ES here.
            print("Metal is not supported on this device")
            self.view = UIView(frame: self.view.frame)
            return
        }
        
        // setup renderer
        let mtk_view = self.view as! MTKView
        renderer = Renderer(mtlDevice: device, view: mtk_view)
        
        // setup view properties
        mtk_view.device = device
        mtk_view.delegate = renderer
        
        renderer?.loadAssets()
    }
    
}
