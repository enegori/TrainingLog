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

	if ([key isEqualToString:@"unitIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"unitID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic unitID;

- (int16_t)unitIDValue {
	NSNumber *result = [self unitID];
	return [result shortValue];
}

- (void)setUnitIDValue:(int16_t)value_ {
	[self setUnitID:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveUnitIDValue {
	NSNumber *result = [self primitiveUnitID];
	return [result shortValue];
}

- (void)setPrimitiveUnitIDValue:(int16_t)value_ {
	[self setPrimitiveUnitID:[NSNumber numberWithShort:value_]];
}

@dynamic unitName;

@end

