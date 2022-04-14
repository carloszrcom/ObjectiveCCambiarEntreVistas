//
//  ViewControllerDos.m
//  ObjectiveCCambiarEntreVistas
//
//  Created by Carlos ZR on 12/4/22.
//

#import "ViewControllerDos.h"

@interface ViewControllerDos ()
@property (weak, nonatomic) IBOutlet UILabel *myLabelTwo;
@end

@implementation ViewControllerDos

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createView];
}

- (void) createView {
    _myLabelTwo.text = _data.description;
}

- (IBAction)irVistaUno:(id)sender {
    if (_delegate) {
        [self dismissViewControllerAnimated:true completion:^{
            [self.delegate dataFromController:@"PASAR A VISTA UNO"];
        }];
    }
}

@end
