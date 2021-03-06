/**
 * @brief   UIAlertView弹框
 * @author  wudb
 * @date    16/08/09
 */

import UIKit

extension UIAlertController {
    convenience init(preferredStyle: UIAlertControllerStyle) {
        self.init(title: nil, message: nil, preferredStyle: preferredStyle)
    }
    
    // MARK: 动作
    
    func action(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        self.addAction(UIAlertAction(title: title, style: style, handler: handler))
        
        return self
    }
    
    // 取消
    func cancel(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        return self.action(title: title, style: .cancel, handler: handler)
    }
    
    // default
    func default_(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        return self.action(title: title, style: .default, handler: handler)
    }
    
    // Destructive
    func destructive(title: String?, handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertController {
        return self.action(title: title, style: .destructive, handler: handler)
    }
    
    // MARK: 显示
    
    func show(parent: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        parent.present(self, animated: animated, completion: completion)
    }
    
}
