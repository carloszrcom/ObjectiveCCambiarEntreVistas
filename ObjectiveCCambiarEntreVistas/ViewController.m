//
//  ViewController.m
//  ObjectiveCCambiarEntreVistas
//
//  Created by Carlos ZR on 12/4/22.
//

#import "ViewController.h"

@interface ViewController () <ViewControllerDosDelegate>
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _myLabel.text = @"Texto desde vista uno";
}

- (IBAction)irVistaDos:(id)sender {
    // IR A VISTA DOS
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    UIViewController *vistaDos = [storyboard instantiateViewControllerWithIdentifier:@"VistaDos"];
//    [self presentViewController:vistaDos animated:true completion:^{}];
    
    // IR A VISTA DOS
//    ViewControllerDos *destination = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:NSStringFromClass(ViewControllerDos.class)];
    ViewControllerDos *destination = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"VistaDos"];
    destination.delegate = self;
    destination.data = _myLabel.text;
    [self presentViewController:destination animated:YES completion:nil];
}

- (void)dataFromController:(nonnull NSString *)data {
    _myLabel.text = data;
}

@end
