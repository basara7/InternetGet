//
//  FirstViewController.m
//  InternetGet
//
//  Created by Mao Mao on 16/4/29.
//  Copyright © 2016年 Mao Mao. All rights reserved.
//

#import "FirstViewController.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"
#import "PopViewController.h"

#import "NaviView.h"

#define imageURL @"http://d.hiphotos.baidu.com/zhidao/pic/item/3ac79f3df8dcd100710f3b36708b4710b9122f12.jpg" 

#define imageURL1 @"http://www.cosplaymore.com/uploadfile/2015/0108/20150108103111712.jpg"

@interface FirstViewController (){

    UIImageView *PicView;
    
    UIBarButtonItem *firstItem;
    UIBarButtonItem *secondItem;

}
@end

@implementation FirstViewController

static NSString * const reuseIdentifier = @"Cell";

- (instancetype)init
{
    self = [super init];
    if (self) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        return [self initWithCollectionViewLayout:layout];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //[NSThread sleepForTimeInterval:3.0];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
    
    PicView = [[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:PicView];
    
    //Image aspect fit 
    PicView.contentMode = UIViewContentModeScaleAspectFit;
    
    //get the pic from Initernet
    [PicView sd_setImageWithURL:[NSURL URLWithString:imageURL]];
     
    
    [self createNavBar];
    
}

#pragma mark - 创建导航栏
- (void) createNavBar{
    //1.logo
    //直接用原型图，不渲染的原始图
    UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    logoImage = [logoImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *logo = [[UIBarButtonItem alloc] initWithImage:logoImage style:UIBarButtonItemStyleDone target: nil action:nil];
    //self.navigationItem.leftBarButtonItem = logo;
    
    //2. UIBarButtomItem
    
    NaviView *first = [NaviView makeNaviView];
    [first addtarget:self action:@selector(firstClick)];
    NaviView *second = [NaviView makeNaviView];
    [second addtarget:self action:@selector(secondClick)];
    
    firstItem = [[UIBarButtonItem alloc] initWithCustomView:first];
    secondItem = [[UIBarButtonItem alloc] initWithCustomView:second];
    
    self.navigationItem.leftBarButtonItems = @[logo, firstItem, secondItem];
}

#pragma mark - 点击事件

- (void)firstClick{
    //get the pic from Initernet
    [PicView sd_setImageWithURL:[NSURL URLWithString:imageURL1]];
    

}
- (void)secondClick{
    //[PicView sd_setImageWithURL:[NSURL URLWithString:imageURL]];
    [self createPopver];
}


#pragma mark - 下拉菜单

- (void)createPopver{
    PopViewController *pvc = [[PopViewController alloc] init];
    /*
    pvc.modalPresentationStyle = UIModalPresentationPopover;
    UIPopoverPresentationController *detailedPop = pvc.popoverPresentationController;
    //detailedPop.delegate = self;
    detailedPop.barButtonItem = secondItem;
    detailedPop.sourceView = self.view;
    detailedPop.permittedArrowDirections = UIPopoverArrowDirectionAny;
    [self presentViewController:pvc animated:YES completion:nil];
     */
    
    //UIPopoverContorller has not been used anymore.
    UIPopoverController *pop = [[UIPopoverController alloc] initWithContentViewController:pvc];
    [pop presentPopoverFromBarButtonItem:firstItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
