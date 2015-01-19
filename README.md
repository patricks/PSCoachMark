# PSCoachMark
PSCoachMark is an iOS class that displays coach marks in or over any UIView.

[![](https://dl.dropboxusercontent.com/u/215017/PSCoachMark/1_framed-thumb.png)](https://dl.dropboxusercontent.com/u/215017/PSCoachMark/1_framed.png)
[![](https://dl.dropboxusercontent.com/u/215017/PSCoachMark/2_framed-thumb.png)](https://dl.dropboxusercontent.com/u/215017/PSCoachMark/2_framed.png)

## Adding PSCoachMark to your project

### Cocoapods

[CocoaPods](http://cocoapods.org) is the recommended way to add PSCoachMark to your project.

1. Add a pod entry for PSCoachMark to your Podfile `pod 'PSCoachMark', :git => 'https://github.com/patricks/PSCoachMark.git'`
2. Install the pod(s) by running `pod install`.
3. Include PSCoachMark wherever you need it with `#import "PSCoachMark.h"`.

### Source files

Alternatively you can directly add the `PSCoachMark.h` and `PSCoachMark.m` source files to your project.

1. Download the [latest code version](https://github.com/patricks/PSCoachMark/archive/master.zip) or add the repository as a git submodule to your git-tracked project. 
2. Open your project in Xcode, then drag and drop `PSCoachMark.h` and `PSCoachMark.m` onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project. 
3. Include PSCoachMark wherever you need it with `#import "PSCoachMark.h"`.

## Usage

Create a normal coach mark which disappears after 5 seconds.

```objective-c
NSAttributedString *txtString = [[NSAttributedString alloc] initWithString:@"Hello World" attributes:nil];

PSCoachMark *infoMark = [PSCoachMark showCoachMarkAddedTo:self.view withAttributedText:txtString withMode:PSCoachMarkModeNormal];
infoMark.markColor = [UIColor blueColor];
infoMark.width = 250;
infoMark.height = 100;

// hide after 5 seconds with animation
[infoMark hideWithAnimation:YES afterDelay:5];
```

Create a coach mark over a UIButton

```objective-c
NSAttributedString *buttonString = [[NSAttributedString alloc] initWithString:@"Click Me" attributes:nil];

PSCoachMark *buttonMark = [PSCoachMark showCoachMarkAddedTo:_infoButton withAttributedText:buttonString withMode:PSCoachMarkModeAbove];
buttonMark.markColor = [UIColor greenColor];
buttonMark.margin = 5;
buttonMark.width = 120;
```

For more examples, take a look at the demo project in this repository.

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE). 