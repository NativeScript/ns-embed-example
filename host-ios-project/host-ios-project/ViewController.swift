import UIKit
import NativeScriptEmbedder

class ViewController: UIViewController {
    
  var nativeScriptPresenter: NativeScriptPresenter?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // setup the NativeScript presenter by providing it this ViewController
    // and using the presenter as the NativeScriptEmbedder's delegate
    nativeScriptPresenter = NativeScriptPresenter()
    nativeScriptPresenter?.vc = self
    NativeScriptEmbedder.sharedInstance().setDelegate(nativeScriptPresenter)
    
    // to demonstrate, we'll just add a simple button to open it
    let button = UIButton(type: .system)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 20)
    button.frame = CGRectMake(0, 0, 300, 50)
    button.center = self.view.center
    button.setTitle("Open NativeScript App", for: UIControl.State.normal)
    button.addTarget(self, action: #selector(self.openMyNativeScriptApp), for: UIControl.Event.touchUpInside)
    self.view.addSubview(button)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  @IBAction func openMyNativeScriptApp(_ sender: Any) {
    // modify the appFolder to point to your NativeScript app
    // ng: nativescriptprojectng/app
    // react: nativescriptprojectreact/app
    // solid: nativescriptprojectsolid/app
    // svelte: nativescriptprojectsvelte/app
    // vue: nativescriptprojectvue/app
    self.setupNativeScript(appFolder: "nativescriptprojectng/app")
  }
  
  func setupNativeScript(appFolder: String?) {
    DispatchQueue.global(qos: .userInitiated).async {
      // init the NativeScript v8 instance on background thread
      let config = Config()
        

      config.logToSystemConsole = true
      config.baseDir = Bundle.main.resourcePath
      config.applicationPath = appFolder
        print("load bundle from: \(String(describing: config.baseDir))")
        print("config.applicationPath: \(String(describing: config.applicationPath))")
      let ns = NativeScript(config: config)
      
      // run the NativeScript app on the ui thread
      DispatchQueue.main.async {
        ns?.runMainApplication();
      }
    }
  }
}
