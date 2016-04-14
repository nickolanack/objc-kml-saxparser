//
//  KMLSaxParserTests.m
//  KMLSaxParserTests
//
//  Created by nickolanack on 12/11/2015.
//  Copyright (c) 2015 nickolanack. All rights reserved.
//


#import "Kml.h"

@import XCTest;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testKml
{
    
    NSString *kmlString=@"<?xml version=\"1.0\" encoding=\"UTF-8\"?><kml xmlns=\"http:/www.opengis.net/kml/2.2\"><Placemark><name>Descriptive HTML</name><visibility>1</visibility><description><![CDATA[]]></description><Point><coordinates>-122.0822035425683,37.42228990140251,0</coordinates></Point></Placemark></kml>​";

    Kml *kml =[[Kml alloc] initWithKmlString:kmlString];
    
    [kml onPlacemark:^(NSDictionary *dictionary) {
        
        //NSLog(@"%@", dictionary);
        XCTAssertEqualObjects(@"Descriptive HTML", [dictionary objectForKey:@"name"]);
        
        
    }];
    
    [kml parse];
    
    
}

@end

