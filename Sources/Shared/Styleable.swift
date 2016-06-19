#if os(OSX)
  import Foundation
  public protocol Styleable: NSObjectProtocol {}
#else
  import UIKit
  public typealias Styleable = UIAppearance
#endif

/// Convenience protocol for all types that could be styled.

public extension Styleable {

  /**
   Applies a stylization closure.

   - Parameter stylization: Closure where you can apply styles.
   */
  public func stylize(stylization: Self -> Void) -> Self {
    stylization(self)
    return self
  }
}
