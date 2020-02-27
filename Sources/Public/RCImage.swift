//  MIT License

//  Copyright (c) 2020 Haik Aslanyan

//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:

//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.

//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import UIKit

public class RCImage {
  
  public var message: String
  public var size = CGFloat(300)
  public var tintColors: [UIColor] = [.orange, .gray]//[.orange, .magenta]
  public var attachmentImage: UIImage?
  public var isTransparent = false
  public var gradientType = GradientType.linear(angle: CGFloat.pi / 2)
  public var contentInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
  internal var bits = [[[RCBitGroup]]]() // 4 group of bits, each one with 3 lines of bit array
  
  public init(message: String) {
    self.message = message
  }
}

public extension RCImage {
  enum GradientType {
    case linear(angle: CGFloat)
    case radial
  }
}
