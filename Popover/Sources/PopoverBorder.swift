//
//  PopoverBorder.swift
//  Popover
//
//  Created by 风起兮 on 2023/12/14.
//

import UIKit

/// An object representing a border of the popover.
public struct PopoverBorder {
    
    /**
    An enum value representing the way to fill the border.

    # Cases #
    - `pureColor(UIColor)`: Fill the border homogeneously with the passed `UIColor`.
    - `layer(CALayer)`: Fill the border with the passed `CALayer`.
    */
    public enum Filling {
        /// Fill the border homogeneously with the passed `UIColor`.
        case pureColor(UIColor)
        
        /**
        Fill the border with the passed `CALayer`.
         
        Any `CALayer` can be passed including a configured `CAGradientLayer` to have a gradient as a border filler.
        */
        case layer(CALayer)
    }
    
    /// An enum `Filling` value representing the way to fill the border.
    public var filling: Filling
    
    /// The width of the border.
    public var width: CGFloat
    
    /**
     Creates an object representing a border of the popover.
     
     - Parameter filling: An enum `Filling` value representing the way to fill the border.
     - Parameter width: The width of the border.
     */
    public init(filling: Filling, width: CGFloat) {
        self.filling = filling
        self.width = width
    }
}
