KxMenu is a vertical popup menu for using in iOS applications
===========================================================

![sample png](https://raw.github.com/kolyvan/kxmenu/master/screenshot/example.png "Sample Png")
![sample gif](https://raw.github.com/kolyvan/kxmenu/master/screenshot/example.gif "Sample Gif")

### Installing

**CocoaPods**

CocoaPods automates 3rd party dependencies in Objective-C.

Install the ruby gem.

```
$ sudo gem install cocoapods
$ pod setup
```

Depending on your Ruby installation, you may not have to run as sudo to install the cocoapods gem.
Create a Podfile. You must be running on iOS 5 or above.

```
platform :ios, '5.0'
pod 'KxMenu', '1'
```

Install dependencies.

```
$ pod install
```

When using CocoaPods, you must open the .xcworkspace file instead of the project file when building your project.

### Usage

1. Drop files from KxMenu/Source folder in your project.

Sample code:

	 [KxMenu showMenuInView:self.view
                   fromRect:sender.frame
                  menuItems:@[
                 	[KxMenuItem menuItem:@"Title"
                     	image:[UIImage imageNamed:@"image"]
                    	target:self
                    	action:@selector(menuItemAction:)],
                 ]];


Look at KxMenuExample demo project as sample of using.

### Requirements

at least iOS 5.0 and Xcode 4.5.0

### Feedback

Tweet me — [@kolyvan_ru](http://twitter.com/kolyvan_ru).