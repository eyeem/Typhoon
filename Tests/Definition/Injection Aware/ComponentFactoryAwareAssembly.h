////////////////////////////////////////////////////////////////////////////////
//
//  TYPHOON FRAMEWORK
//  Copyright 2013, Typhoon Framework Contributors
//  All Rights Reserved.
//
//  NOTICE: The authors permit you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>
#import "TyphoonAssembly.h"

@interface ComponentFactoryAwareCollabortingAssembly : TyphoonAssembly
- (id)collaboratingAssemblyObject;
@end

@interface ComponentFactoryAwareAssembly : TyphoonAssembly
@property (readonly) ComponentFactoryAwareCollabortingAssembly *collaboratingAssembly;

- (id)injectionAwareObject;

- (id)injectionFactoryByProperty;

- (id)injectionAssemblyByProperty;

- (id)injectionByInitialization;

- (id)injectionByPropertyAssemblyType;

- (id)injectionByPropertyFactoryType;

@end
