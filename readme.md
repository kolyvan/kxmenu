KxMenu is a vertical popup menu for using in iOS applications
===========================================================

![sample png](https://raw.github.com/kolyvan/kxmenu/master/screenshot/example.png "Sample Png")
![sample gif](https://raw.github.com/kolyvan/kxmenu/master/screenshot/example.gif "Sample Gif")

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