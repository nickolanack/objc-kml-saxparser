//
//  Kml.h
//  Pods
//
//  Created by Nick on 2016-04-14.
//
//

#import <Foundation/Foundation.h>
#import "SaxKmlParserDelegate.h"

@interface Kml : NSObject<SaxKmlParserDelegate>


-(instancetype)initWithKmlString:(NSString *)kml;

-(Kml *) onPlacemark:(void (^)(NSDictionary * dictionary)) completion;
-(Kml *) onPolyline:(void (^)(NSDictionary * dictionary)) completion;
-(Kml *) onPolygon:(void (^)(NSDictionary * dictionary)) completion;
-(Kml *) onGroundOverlay:(void (^)(NSDictionary * dictionary)) completion;

-(bool) parse;

@end
