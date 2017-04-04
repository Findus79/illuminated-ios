//
//  Camera.swift
//  illuminated
//
//  Created by Andi on 04.04.17.
//  Copyright © 2017 Andi. All rights reserved.
//

import Foundation
import simd

// simple camera class

class Camera
{
    public init() {
        
        m_matPerspective = float4x4.init()
        m_matWorld = float4x4.init()
    }
    
    public func getMatrices() -> (float4x4, float4x4) {
    
        return (m_matPerspective, m_matWorld)
    }
    
    public func getWorldMatrix() -> float4x4 {
        
        return m_matWorld;
    }
    
    public func getPerspectiveMatrix() -> float4x4 {
        
        return m_matPerspective;
    }
    
    internal var m_matPerspective : float4x4;
    internal var m_matWorld : float4x4;
}
