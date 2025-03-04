import { NativeScriptConfig } from '@nativescript/core';

export default {
  id: 'org.nativescript.nativescriptprojectreact',
  appPath: 'src',
  appResourcesPath: '../tools/App_Resources',
  android: {
    v8Flags: '--expose_gc',
    markingMode: 'none'
  },
  embed: {
    android: {
      hostProjectPath: '../host-android-project',
      hostProjectModuleName: 'nativescript'
    },
    ios: {
      hostProjectPath: '../host-ios-project'
    }
  }
} as NativeScriptConfig;