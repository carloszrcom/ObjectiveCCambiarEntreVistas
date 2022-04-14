//
//  ViewControllerDos.h
//  ObjectiveCCambiarEntreVistas
//
//  Created by Carlos ZR on 12/4/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ViewControllerDosDelegate <NSObject>
@required
- (void)dataFromController:(NSString *)data;
@end

@interface ViewControllerDos : UIViewController
@property (nonatomic, retain) NSString *data;
@property (nonatomic, weak) id<ViewControllerDosDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
