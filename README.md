# KMLSaxParser

An ultra simple SAX kml parser - great for large kml files

[![CI Status](http://img.shields.io/travis/nickolanack/objc-kml-saxparser.svg?style=flat)](https://travis-ci.org/nickolanack/objc-kml-saxparser)
[![Version](https://img.shields.io/cocoapods/v/KMLSaxParser.svg?style=flat)](http://cocoapods.org/pods/KMLSaxParser)
[![License](https://img.shields.io/cocoapods/l/KMLSaxParser.svg?style=flat)](http://cocoapods.org/pods/KMLSaxParser)
[![Platform](https://img.shields.io/cocoapods/p/KMLSaxParser.svg?style=flat)](http://cocoapods.org/pods/KMLSaxParser)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.
###Blocks Methos###

```
#import "Kml.h"

//...

-(void) someKmlIntializer:(NSString *) kmlText{


NSString *kmlString=@"<?xml version=\"1.0\" encoding=\"UTF-8\"?><kml xmlns=\"http:/www.opengis.net/kml/2.2\"><Placemark><name>Descriptive HTML</name><visibility>1</visibility><description><![CDATA[]]></description><Point><coordinates>-122.0822035425683,37.42228990140251,0</coordinates></Point></Placemark></kml>​";

    Kml *kml =[[Kml alloc] initWithKmlString:kmlString];
    
    [kml onPlacemark:^(NSDictionary *dictionary) {
        
        //NSLog(@"%@", dictionary);
         
    }];
    
    [kml parse];

}



```



###Delegate Method###

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
-(void) onKmlPolyline:(NSDictionary *)dictionary{
	//TODO add to MKMap
}
-(void) onKmlPolygon:(NSDictionary *)dictionary{
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
