# US Driver's License Recognition
The samples demonstrate how to decode PDF417 bar code symbology and extract US driver's license information using Dynamsoft mobile barcode SDKs.

## What You Should Know
- [![](https://img.shields.io/badge/Download-Offline%20SDK-orange)](https://www.dynamsoft.com/barcode-reader/downloads)
- [![](https://img.shields.io/badge/Get-30--day%20FREE%20Trial%20License-blue)](https://www.dynamsoft.com/customer/license/trialLicense/?product=dbr)

## Free Trial License
Get a [free trial license](https://www.dynamsoft.com/CustomerPortal/Portal/Triallicense.aspx) from Dynamsoft online portal.

## Android Barcode Reader
1. Import the project to `Android Studio`.

2. Update the license key:

    ```java
    reader = new BarcodeReader("LICENSE-KEY");
    ```

3. Build and run the app.

## Web Barcode Reader

1. Update the license key:

    ```js
    data-productKeys="PRODUCT-KEYS"
    ```
    
 2. Double-click the `index.html` file to run the web app.

## iOS Barcode Reader

1. Add the barcode SDK to your Podfile:

    ```
    target 'DynamsoftBarcodeReaderDemo' do
      # Comment the next line if you don't want to use dynamic frameworks
      use_frameworks!

       #pod 'DynamsoftBarcodeReader'

    end
    ```

2. Run the command `pod install` to download the framework.
3. Add the following lines to the `Pods/Target Support Files/Pods-testOc/Pods-xxx.debug.xcconfig` file:

    ```
    FRAMEWORK_SEARCH_PATHS = "${SRCROOT}/Pods/DynamsoftBarcodeReader"
    HEADER_SEARCH_PATHS = "${SRCROOT}/Pods/DynamsoftBarcodeReader/DynamsoftBarcodeReader.framework/Headers"
    ```
4. Import the project to Xcode.
5. Update the license key:
    
    ```swift
    let kLicense = "Put your license here"
    ```
6. Build and run the app.
