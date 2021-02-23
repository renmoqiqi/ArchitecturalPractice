//
//  LoginView.m
//  ArchitecturalPractice
//
//  Created by penghe on 2021/2/20.
//

#import "LoginView.h"

@interface LoginView ()

@property(nonatomic, weak) UIButton *nameLabel;

@end

@implementation LoginView

#pragma mark - Init
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
        [self createUI];

    }
    return self;
}
//初始化
- (void)commonInit
{
    self.backgroundColor = [UIColor redColor];

}

- (void)createUI
{

     UIButton *labelName = [[UIButton alloc] init];
     [labelName addTarget:self action:@selector(tapButtonAction) forControlEvents:UIControlEventTouchUpInside];
     labelName.frame = CGRectMake(0, 110, 100, 100);
     [self addSubview:labelName];
     self.nameLabel = labelName;


}


#pragma mark - Actions

- (void)tapButtonAction
{
    if (self.loginViewButtonTapBlock) {
        self.loginViewButtonTapBlock();
    }
}
#pragma mark - Update Model
-(void)update:(id<LoginViewModelProtocol>)data
{
    [self.nameLabel setTitle:data.name forState:UIControlStateNormal];
    [self layoutUpdate];
}

#pragma mark - Layout


- (CGSize)intrinsicContentSize
{
    

    return CGSizeMake(UIViewNoIntrinsicMetric, UIViewNoIntrinsicMetric);
}

// this is Apple's recommended place for adding/updating constraints

- (void)updateConstraints
{
    //更新布局的地方
    
    
    
    //according to apple super should be called at end of method
    [super updateConstraints];
}

- (void)layoutUpdate
{
    // tell constraints they need updating

    [self setNeedsUpdateConstraints];

    // update constraints now so we can animate the change
//    [self updateConstraintsIfNeeded];
}


#pragma mark - Getter And Setter


@end
