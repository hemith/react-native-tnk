# react-native-tnk

- tnkfactory ad

## Installation

```sh
npm install @hemith/react-native-tnk
```

This module is incomplete.

Manual setup is required.

### iOS

- xcode frameworks
  - libtnksdk.a (from tnk-ad official website)
  - AdSupport.framework
  - MediaPlayer.framework
  - SystemConfiguration.framework
  - libz.tbd

- xcode Info.plist
  - key: tnkad_app_id
  - type: string
  - value: from tnk-ad official website

  http://docs.tnkad.net/tnk-ad-sdk/ios_settings

```
npx pod-install
```

### android

- android/app/src/main/AndroidManifest.xml

```xml
<manifest>
    <!-- tnk ad START -->
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
    <uses-permission android:name="com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE" />
    <!-- tnk ad END -->
    <application>
        <!-- tnk ad START -->
        <meta-data android:name="tnkad_app_id" android:value="your-application-id-from-tnk-site" />
        <meta-data android:name="tnkad_tracking" android:value="true" />
        <!-- tnk ad END -->
    </application>
</manifest>
```

- android/app/build.gradle

```gradle
dependencies {
    ...
    implementation 'com.android.installreferrer:installreferrer:1.1'
    ...
}
```
  https://github.com/tnkfactory/android-sdk-rwd

## Usage

```js
import Tnk from "@hemith/react-native-tnk";

// ...

Tnk.init('');

// ...

Tnk.actionCompleted('signup_done');
```

## TODO

- automatic installation

## License

MIT
