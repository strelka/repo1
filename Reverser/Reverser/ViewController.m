
#import "ViewController.h"
#import "SBDReverser.h"
#import "UpperCase.h"
#import "Masonry.h"

const NSString *kTextFieldDefault = @"Enter string";
const NSString *SBDGreetingLabel = @"wtwtwtwtw";

@interface ViewController ()<UITextFieldDelegate>

@property(nonatomic, weak) IBOutlet UITextField *sourceStringField;
@property(nonatomic, weak) IBOutlet UILabel *resultLabel;

@property(nonatomic, strong) IBOutlet UILabel *greetinglabel;

@property(nonatomic, weak) IBOutlet UIButton *reverseButton;
@property(nonatomic, weak) IBOutlet UIButton *upperButton;

@end

@implementation ViewController

#pragma mark - ViewController lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.reverseButton.layer.cornerRadius = CGRectGetWidth(self.reverseButton.frame)/2;
    self.sourceStringField.text = [kTextFieldDefault copy];
    
    //visual format languege
    self.greetinglabel = [[UILabel alloc]init];
    self.greetinglabel.text = SBDGreetingLabel;
    self.greetinglabel.textColor = [UIColor whiteColor];
    
    NSDictionary *subviews = @{@"greetingLabel":self.greetinglabel,
                               @"sourceStringField":self.sourceStringField
                               };
    

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Actions

- (IBAction)reverse:(id)sender {
    self.resultLabel.text = [SBDReverser reverseString:self.sourceStringField.text];
}

- (IBAction)uppercase:(id)sender {
    self.resultLabel.text = [UpperCase uppercase:self.sourceStringField.text];
}

#pragma mark - User interations

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([self.sourceStringField isFirstResponder]
        && [touch view]!=self.sourceStringField) {
        [self.sourceStringField resignFirstResponder];
    }
    
    [super touchesBegan:touches withEvent:event];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if ([self.sourceStringField isFirstResponder]) {
        [self.sourceStringField resignFirstResponder];
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if (textField.text.length == 0) {
        self.resultLabel.text = @"";
        textField.text = [kTextFieldDefault copy]; // Перенос строки ниже условия сломает логику (можно использовать в кейсе)
    }
}

@end
