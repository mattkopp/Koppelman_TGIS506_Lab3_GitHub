//
//  ViewController.m
//  Koppelman_TGIS506_Lab3
//
//  Created by Matthew K. Koppelman on 5/9/15.
//  Copyright (c) 2015 Matt Koppelman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.myMapView.delegate = self;
    [self.myMapView setShowsUserLocation:YES];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    //Get Coordinates
    CLLocationCoordinate2D myLocation = [userLocation coordinate];
    
    //Zoom Region
    MKCoordinateRegion zoomRegion = MKCoordinateRegionMakeWithDistance(myLocation, 2500, 2500);
    
    //Show Location
    [self.myMapView setRegion:zoomRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
