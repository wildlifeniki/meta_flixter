//
//  DetailsViewController.m
//  Flixster
//
//  Created by admin on 6/22/22.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (strong, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *movieSynopsisLabel;
@property (strong, nonatomic) IBOutlet UIImageView *movieImageView;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.movieTitleLabel.text = self.movie[@"title"];
    self.movieSynopsisLabel.text = self.movie[@"overview"];
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.movie[@"poster_path"];
    NSString *fullPosterURL = [baseURLString stringByAppendingString:posterURLString];
    NSURL *posterURL = [NSURL URLWithString:fullPosterURL];
    [self.movieImageView setImageWithURL:posterURL];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
