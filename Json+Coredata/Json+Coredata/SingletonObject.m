//
//  SingletonObject.m
//  Json+Coredata
//
//  Created by mac mini on 10/7/14.
//  Copyright (c) 2014 ParadigmCreatives. All rights reserved.
//

#import "SingletonObject.h"
#import "JsonTable.h"
AppDelegate *appDelegate;
NSMutableArray *array;
NSMutableDictionary *dict1;
NSString *key;
NSString *value;

@implementation SingletonObject
+(id)sharedJson
{
    static SingletonObject *sobject = nil;
    static dispatch_once_t onetoken;
    dispatch_once(&onetoken , ^
                  {
                      sobject= [[self alloc]init];
                      
                  });
    
    return sobject;
    
    
}
-(void)jsonParsing
{
    appDelegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
    _managedObjectContext  = [appDelegate managedObjectContext];
   
 
    //[_fetchResultsController performFetch:&error];
    
    array=[[NSMutableArray alloc]init];
    dict1=[[NSMutableDictionary alloc]init];
    
    NSURL *jsonUrl = [[NSBundle mainBundle] URLForResource:@"document" withExtension:@"json"];
    NSString *textFromFile = [NSString stringWithContentsOfURL:jsonUrl encoding:NSUTF8StringEncoding error:nil];
    NSData * data = [textFromFile dataUsingEncoding:NSUTF8StringEncoding];
       NSError *error=nil;
    id json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
//    NSLog(@"jsonObject:%@",json);
    
    array =(NSMutableArray *)json;
    
    for (NSDictionary *dict in array) {
        
        JsonTable *data=[NSEntityDescription insertNewObjectForEntityForName:@"JsonTable" inManagedObjectContext:_managedObjectContext];
        data.key = [dict objectForKey:@"id"];
        data.value=[dict objectForKey:@"username"];
        NSError *error=nil;
        [_managedObjectContext save:&error];
    }
}
@end
