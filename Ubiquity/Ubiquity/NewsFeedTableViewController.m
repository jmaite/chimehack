//
//  NewsFeedTableViewController.m
//  Ubiquity
//
//  Created by Jossie McManus on 12/7/13.
//
//

#import "NewsFeedTableViewController.h"
#import "StoryTableCell.h"
#import "StoryViewController.h"
#import "NewsFeedItem.h"

@interface NewsFeedTableViewController ()

@property (nonatomic, strong) NewsFeedItem *selectedItem;
@property (nonatomic, strong) NSMutableArray *allItems;

@end

@implementation NewsFeedTableViewController

- (id)init
{
    //call the superclass designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped];
    
    if (self) {
        //_allItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    //build the items NSArray, should contain NewsFeedItem objects
    if (!_allItems) {
        _allItems = [[NSMutableArray alloc] init];
    }
    NewsFeedItem *p = [[NewsFeedItem alloc] init];
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Story";
    
    p.title = @"BLESSURES DE FEMMES: SAFIA";
    
    p.blurb = @"I spent five years searching for women who would dare talking about their pain. This exhibition is a testimony of their courage and their determination to speak out against oppression.";
    
    p.image = [UIImage imageNamed:@"Catherine Cabrol photo"];
    
    p.content = @"I spent five years searching for women who would dare talking about their pain. This exhibition is a testimony of their courage and their determination to speak out against oppression. These women speak out for those who don't have a voice and for all those who have lost their lives. Listening to these stories has changed me personally and artistically. The sufferings I have approached so intimately have upset me deeply. I am not the same woman since I know that in my country, in France, every other day on average a woman is beaten to death by her companion.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Event";
    
    p.title = @"THE MOVEMENT BEGINS!";
    
    p.blurb = @"On June 1st, CHIME FOR CHANGE presented a global concert event to bring girls' and women's issues to the world’s stage. Millions of people joined in THE SOUND OF CHANGE LIVE, to promote Education, Health and Justice for girls and women everywhere.";
    
    p.image = [UIImage imageNamed:@"give"];
    
    p.content = @"On June 1st, CHIME FOR CHANGE presented a global concert event to bring girls' and women's issues to the world’s stage. Millions of people joined in THE SOUND OF CHANGE LIVE, to promote Education, Health and Justice for girls and women everywhere. Every ticket holder received a SOUND OF CHANGE LIVE voucher via email with a unique code, which could be used to support a project of their choice. Through Gucci's underwriting of the concert, each of the 50,000 concertgoers was able to donate the full value of their ticket price (less VAT and service fees) to projects of their choice on Catapult, the first crowdfunding platform dedicated to advancing the lives of girls and women. CHIME FOR CHANGE selected Catapult as a strategic partner to ensure transparency, accountability and measurable impact, by allowing the CHIME FOR CHANGE community to choose exactly where their donations go and to track the results of their contributions.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Project";
    
    p.title = @"WIN BACK 6 WEEKS OF SCHOOL PER YEAR FOR GIRLS IN KENYA";
    
    p.blurb = @"ZanaAfrica is innovating a radically affordable sanitary pad to help more Kenyan girls stay in school.";
    
    p.image = [UIImage imageNamed:@"ZA main project image-01"];
    
    p.content = @"$15 a year keeps a girl in school anywhere in Kenya. This $15 gives her 120 pads, three underpants, and standardized health education. News reports show girls are often forced to choose to stay home or engage in transactional sex to afford pads. One million girls in Kenya are in this situation. We think this is a human rights issue. Providing pads plus health education reclaims 6 weeks of school, helping girls to graduate and step into the promise of their future. Our goal is 10,000 girls by January – starting here with 1,000 girls.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Story";
    
    p.title = @"EVERY GIRL NEEDS A 'SHERO'";
    
    p.blurb = @"Using technology and computer software like Skype and Google hangouts, we introduce participants to girls and women in our “Meet a Shero” segment. We profile Sheroes the world over who have gotten education at all cost and are influencing their communities positively.";
    
    p.image = [UIImage imageNamed:@"shero pic"];
    
    p.content = @"While volunteering as a speaker in sexual education at a public school in an impoverished area of Lagos, I noticed day after day that the number of boys in both classes I facilitated were up to four times higher than the number of girls. Even the girls who came were irregular and were always distracted and sleepy when in class. The girls told me that many of their classmates had dropped out due to pregnancy and childbirth. Others had to assist their mothers by hawking to raise money to feed the family, making formal education impossible for them. Poverty and financial dependence also contributed as the teenage girls had to negotiate sex in exchange for money to buy their basic needs like sanitary towels, bathing soap, underwear, toothpaste and body lotion.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Project";
    
    p.title = @"SUPPORT FOR AN HIV-FREE GENERATION";
    
    p.blurb = @"Help us fund a Community Health Worker (CHW) in Togo, who will provide invaluable support and hope to pregnant women with HIV.";
    
    p.image = [UIImage imageNamed:@"hthphoto2new"];
    
    p.content = @"The use of Community Health Workers (CHWs) have proven to increase enrollment in Prevention of Mother to Child Transmission (PMTCT) programs. By deploying a network of CHWs to provide home-based peer support to expecting and new moms living with HIV, we hope to make the dream of an HIV-free generation a reality. Your support will fund one CHW, who will conduct regular home visits to answer questions, listen to concerns, follow up on missed appointments and encourage partner support. For a year’s worth of salary, trainings, and materials, our CHW will be able to visit 13 new and expecting moms on a weekly basis. This home-based peer-to-peer program aims to increase enrollment and completion rates of PMTCT programs in order to prevent new infant HIV infections.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Project";
    
    p.title = @"OPEN SCHOOLS FOR BRAVE GIRLS IN PAKISTAN";
    
    p.blurb = @"By now you’ve heard the story of Malala Yousufzai, the brave girl shot by the Taliban for daring to speak out about girls’ education.";
    
    p.image = [UIImage imageNamed:@"think BIG prospectus - pakistan education 1-550"];
    
    p.content = @"This project allows you to play a part by helping BRAC eradicate illiteracy in Pakistan and foster the future success of thousands of Pakistani girls and women. Girls make up a majority of all BRAC classrooms. We’re the world’s largest implementer of “the girl effect,” the unique role that girls and women can play as positive agents of change in their societies and the world. In some areas of the country, girls like Malala are discouraged from attending schools on religious grounds, and face serious life risks when challenging this ruling. BRAC combats these attitudes by working closely with community leaders, including religious leaders, to teach them the importance of girls’ education. With origins and experience in Bangladesh, a mainly Muslim country, BRAC has more maneuvering space in these sensitive cultural contexts.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Project";
    
    p.title = @"EMERGENCY RELIEF FOR CHILDREN IN THE PHILIPPINES";
    
    p.blurb = @"Emergency relief in the Philippines to help children and families recover from Super Typhoon Haiyan.";
    
    p.image = [UIImage imageNamed:@"injured boy-67079"];
    
    p.content = @"SOS is providing emergency relief for children and families in the community, while rebuilding our own facilities and programs in Tacloban. We are currently helping families in the community with temporary shelter and immediate needs like food and clean water, clothes, household supplies and medicine, to ensure their safety and survival. Your generous donation will be doubled thanks to Johnson & Johnson. ";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Story";
    
    p.title = @"HOW I USE CELL PHONES TO BRIDGE THE GAP FOR THE VOICELESS";
    
    p.blurb = @"To me, this is what technology is all about: empowering one woman to help empower another, bridging the gap between the urban and the rural and, the vocal and the voiceless.";
    
    p.image = [UIImage imageNamed:@"Stella Paul story"];
    
    p.content = @"Recently, I met Jyoti Bairagi - a 20 year old woman living in a remote village in India’s Madhya Pradesh state. The village, perched on a rocky hill, had no motorable road and no running water. Everyone there wanted a boy and, when a woman gave birth to more than one girl child, it was killed. A girl’s education stopped at 5th standard, because the high school was 5 hours away, and after school, a girl would return home in pitch dark, thus running the risk of being molested. In few years, she was married off, as parents felt, she sat idle for way too long. This often resulted in early motherhood, post-natal sickness and infant mortality. The state had the highest rate of infant mortality and the worst sex ratio (888 girls to every 1000 boys) in India. Jyoti didn’t want to get married early. She had heard that outside her village girls went to college and worked in offices. She wanted to be one of them. But first, she wanted her village to be connected with the world, and learn of those changes.";
    
    
    
    [_allItems addObject:p];
    
    
    p = [[NewsFeedItem alloc] init];
    p.type = @"Project";
    
    p.title = @"FUND A GIRL-CENTERED STORYBOOK";
    
    p.blurb = @"“Thamara’s Surprise Party,” a girl centered storybook, strengthens Sri Lankan girls’ language skills while encouraging and fostering...";
    
    p.image = [UIImage imageNamed:@"Sri Lanka_girl reads from llp bok_0"];
    
    p.content = @"Room to Read’s is raising funds for our Book Publishing program in Sri Lanka, through which we will publish a girl-focused children’s book, “Thamara’s Surprise Party.” We use local content sources, lead writer and illustrator workshops and field-test the manuscripts for each book published. Room to Read believes it is important for girls to have books in their own language that feature female characters they can look up to and with whom they can identify. In order for children to acquire literacy skills and become lifelong readers and learners, they need access to a variety of texts, the opportunity to read independently, and a choice in what to read.";
    
    
    [_allItems addObject:p];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _allItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Story";
    StoryTableCell *cell = (StoryTableCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    NewsFeedItem *p = [_allItems objectAtIndex:[indexPath row]];
    
    // Configure the cell...
    cell.title.text = p.title;
    cell.blurb.text = p.blurb;
    cell.imageView.image = p.image;

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    self.selectedItem = (NewsFeedItem *)[self.allItems objectAtIndex:[indexPath row]];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    StoryViewController *vc = (StoryViewController*)[segue destinationViewController];
    
    vc.item = [self selectedItem];
}


@end
