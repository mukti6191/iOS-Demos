//
//  ViewController.h
//  AdvanceControl
//
//  Created by Umesh on 04/06/16.
//  Copyright © 2016 Umesh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
  IBOutlet UILabel *pickerValueChange;
}
@end

