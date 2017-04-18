//
//  Renderer.swift
//  illuminated
//
//  Created by Andi on 04.04.17.
//  Copyright © 2017 Andi. All rights reserved.
//

import Foundation
import MetalKit
import simd


class Renderer : NSObject, MTKViewDelegate
{
    public init( mtlDevice : MTLDevice ) {
        
        m_Device = mtlDevice;
    }
    
    func mtkView(_ view: MTKView, drawableSizeWillChange size: CGSize) {
        <#code#>
    }
    
    func draw(in view: MTKView) {
        
    }
    
    var m_Device: MTLDevice! = nil
}
