////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2013, Jasper Blues & Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import <SenTestingKit/SenTestingKit.h>
#import "TyphoonTypeConverterRegistry.h"
#import "TyphoonTypeConverter.h"
#import "TyphoonTypeDescriptor.h"
#import "NSObject+TyphoonIntrospectionUtils.h"

@interface TyphoonPassThroughTypeConverterTests : SenTestCase

@property NSString *aStringProperty;
@property NSMutableString *aMutableStringProperty;


@end

@implementation TyphoonPassThroughTypeConverterTests

- (void)test_forwards_NSString
{
    id <TyphoonTypeConverter> converter = [[TyphoonTypeConverterRegistry shared] converterForType:@"NSString"];
    NSString *converted = [converter convert:@"foobar foobar"];
    assertThat(converted, equalTo(@"foobar foobar"));
    assertThatBool([converted isKindOfClass:[NSString class]], equalToBool(YES));
}

- (void)test_forwards_NSMutableString
{
    id <TyphoonTypeConverter> converter = [[TyphoonTypeConverterRegistry shared] converterForType:@"NSMutableString"];
    NSString *converted = [converter convert:@"foobar foobar"];
    assertThat(converted, equalTo(@"foobar foobar"));
    assertThatBool([converted isKindOfClass:[NSMutableString class]], equalToBool(YES));
}

@end