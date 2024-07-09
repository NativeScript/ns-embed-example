## Embed NativeScript Example

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

Now open each respective host project (`host-ios-project` in Xcode and `host-android-project` in Android Studio) and run the apps.
