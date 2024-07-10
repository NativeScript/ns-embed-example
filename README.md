## Embed NativeScript Example

*Note: Requires NativeScript 8.8*

```bash
npm install -g nativescript
```

### host-ios-project

A Swift iOS project which embeds NativeScript screens.

### host-android-project

A Kotlin Android project which embeds NativeScript screens.

### nativescript-project-*

- ng: Angular based NativeScript project.
- react: React based NativeScript project.
- solid: Solid based NativeScript project.
- svelte: Svelte based NativeScript project.
- vue: Vue based NativeScript project.

## Try it

See `nativescript-project-`*/`nativescript.config.ts` for the host project path settings the `embed` command uses.

```bash
cd nativescript-project-{ng|react|solid|svelte|vue}

ns embed ios

// or...

ns embed android
```

Now open each respective host project, `host-ios-project` in Xcode and `host-android-project` in Android Studio.

### For iOS:

1. Xcode File > 'Add Package Dependencies...' and type in this URL https://github.com/NativeScript/ios-spm to add the NativeScriptSDK.
   
2. Modify `ViewController.swift` to specify the name of the embedded project:

```swift
@IBAction func openMyNativeScriptApp(_ sender: Any) {
    // modify the appFolder to point to your NativeScript app
    // ng: nativescriptprojectng/app
    // react: nativescriptprojectreact/app
    // solid: nativescriptprojectsolid/app
    // svelte: nativescriptprojectsvelte/app
    // vue: nativescriptprojectvue/app
    self.setupNativeScript(appFolder: "nativescriptprojectng/app")
}
```

3. Copy Metadata from `nativescript-project-*/platforms/ios/build/Debug-iphonesimulator/metadata-arm64.bin` to `host-ios-project/nativescriptproject*`

Now build and run.

*Note: You can also change the project name/folder of the NativeScript project by setting `projectName` to any you prefer in `nativescript.config.ts`.*


