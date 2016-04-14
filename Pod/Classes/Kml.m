//
//  Kml.m
//  Pods
//
//  Created by Nick on 2016-04-14.
//
//

#import "Kml.h"
#import "SaxKmlParser.h"

@interface Kml()

@property NSString *kmlString;

@property (copy) void (^onPlacemarkCallback)(NSDictionary * dictionary);
@property (copy) void (^onPolylineCallback)(NSDictionary * dictionary);
@property (copy) void (^onPolygonCallback)(NSDictionary * dictionary);
@property (copy) void (^onGroundOverlayCallback)(NSDictionary * dictionary);

@end


@implementation Kml


-(instancetype)initWithKmlString:(NSString *)kml{
    
    self=[super init];
    _kmlString=kml;
    return self;
}

-(Kml *) onPlacemark:(void (^)(NSDictionary * dictionary)) completion{

    _onPlacemarkCallback=completion;
    
    return self;
}
-(Kml *) onPolyline:(void (^)(NSDictionary * dictionary)) completion{
    
     _onPolylineCallback=completion;

    return self;
}
-(Kml *) onPolygon:(void (^)(NSDictionary * dictionary)) completion{

     _onPolygonCallback=completion;

    return self;
}
-(Kml *) onGroundOverlay:(void (^)(NSDictionary * dictionary)) completion{

    _onGroundOverlayCallback=completion;

    return self;
}

-(bool) parse{
    
    SaxKmlParser *parser=[[SaxKmlParser alloc] initWithDelegate:self];
    [parser parseString:_kmlString];

    return true;
}



-(void) onKmlPlacemark:(NSDictionary *)dictionary{
    
    if(_onPlacemarkCallback){
        _onPlacemarkCallback(dictionary);
    }

}
-(void) onKmlPolyline:(NSDictionary *)dictionary{
    if(_onPolylineCallback){
        _onPolylineCallback(dictionary);
    }
    
}
-(void) onKmlPolygon:(NSDictionary *)dictionary{
    if(_onPolygonCallback){
        _onPolygonCallback(dictionary);
    }
}
-(void) onKmlGroundOverlay:(NSDictionary *)dictionary{
    if(_onGroundOverlayCallback){
        _onGroundOverlayCallback(dictionary);
    }
}

@end
