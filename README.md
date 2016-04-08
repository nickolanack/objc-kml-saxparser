# KMLSaxParser

[![CI Status](http://img.shields.io/travis/nickolanack/KMLSaxParser.svg?style=flat)](https://travis-ci.org/nickolanack/KMLSaxParser)
[![Version](https://img.shields.io/cocoapods/v/KMLSaxParser.svg?style=flat)](http://cocoapods.org/pods/KMLSaxParser)
[![License](https://img.shields.io/cocoapods/l/KMLSaxParser.svg?style=flat)](http://cocoapods.org/pods/KMLSaxParser)
[![Platform](https://img.shields.io/cocoapods/p/KMLSaxParser.svg?style=flat)](http://cocoapods.org/pods/KMLSaxParser)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```ObjC

#SomeViewController.h 

...
#import "SaxKmlParserDelegate.h"
@interface SomeViewController : UIViewController<SaxKmlParserDelegate, ...>
...




#SomeViewController.m

...

-(void) someKmlIntializer:(NSString *) kmlText{
	
	 [[[SaxKmlParser alloc] initWithDelegate:self] parseString:kmlText];

}
-(void) onKmlPlacemark:(NSDictionary *)dictionary{
	//TODO add to MKMap
}
-(void) onKmlGroundOverlay:(NSDictionary *)dictionary{
	//TODO add to MKMap
}
-(void)onKmlPolyline:(NSDictionary *)dictionary{
	//TODO add to MKMap
}
-(void)onKmlPolygon:(NSDictionary *)dictionary{
	//TODO add to MKMap
}
...

```

## Requirements

## Installation

KMLSaxParser is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KMLSaxParser"
```

## Author

nickolanack, nickblackwell82@gmail.com

## License

KMLSaxParser is available under the MIT license. See the LICENSE file for more info.
