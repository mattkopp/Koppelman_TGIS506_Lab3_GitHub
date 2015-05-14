//
//  ViewController.h
//  Koppelman_TGIS506_Lab3
//
//  Created by Matthew K. Koppelman on 5/9/15.
//  Copyright (c) 2015 Matt Koppelman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *myMapView;

@end
