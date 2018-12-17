# react-native-qrcode-gen

On iOS, it uses `CIQRCodeGenerator` as a CIFilter to generate a UIImage

On Android, it uses `QRGenearator`, a wrapper library for `ZXing` (Crossing-zebra)

`$ npm install react-native-qrcode-gen --save`

## Prerequisite

If the iOS target does not already contain Swift classes

1. `Build Settings > Library Search Path > $(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)`

2. `Build Settings > Build Options > Always Embed Swift Standard Libraries > YES`

## Mostly automatic installation

`$ react-native link react-native-qrcode-gen`


## Manual installation


### iOS

1. In XCode, in the project navigator, right click `Libraries` > `Add Files to [your project's name]`
2. Go to `node_modules` > `react-native-qrcode-gen` and add `RNQrcodeGen.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNQrcodeGen.a` to your project's `Build Phases` > `Link Binary With Libraries`
4. Run your project (`Cmd+R`)

### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNQrcodeGenPackage;` to the imports at the top of the file
  - Add `new RNQrcodeGenPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-qrcode-gen'
  	project(':react-native-qrcode-gen').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-qrcode-gen/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-qrcode-gen')
  	```

## Usage
```
import React from 'react';
import { StyleSheet } from 'react-native';
import QrcodeView from 'react-native-qrcode-gen';

const styles = StyleSheet.create({
  qrcode: {
    width: 320,
    height: 320,
  },
});

export default () => (
  <QrcodeView
    value={'string value to encode'}
    style={styles.qrcode}
  />
);
```
  