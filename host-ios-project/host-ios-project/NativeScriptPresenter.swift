import UIKit
import NativeScriptEmbedder

public class NativeScriptPresenter: NSObject, NativeScriptEmbedderDelegate {
  var vc: UIViewController?
  
  public func presentNativeScriptApp(_ vc: UIViewController!) -> Any! {
    vc.view.backgroundColor = UIColor.white
    self.vc?.present(vc, animated: true)
    return vc;
  }
}
