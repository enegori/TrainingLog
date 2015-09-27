// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to UnitInfoM.m instead.

#import "_UnitInfoM.h"

const struct UnitInfoMAttributes UnitInfoMAttributes = {
	.unitID = @"unitID",
	.unitName = @"unitName",
};

@implementation UnitInfoMID
@end

@implementation _UnitInfoM

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"UnitInfoM" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"UnitInfoM";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"UnitInfoM" inManagedObjectContext:moc_];
}

- (UnitInfoMID*)objectID {
	return (UnitInfoMID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic unitID;

@dynamic unitName;

@end

