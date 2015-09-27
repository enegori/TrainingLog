// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TrainingDateT.m instead.

#import "_TrainingDateT.h"

const struct TrainingDateTAttributes TrainingDateTAttributes = {
	.dateInfo = @"dateInfo",
	.numData = @"numData",
	.trainingID = @"trainingID",
};

@implementation TrainingDateTID
@end

@implementation _TrainingDateT

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"TrainingDateT" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"TrainingDateT";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"TrainingDateT" inManagedObjectContext:moc_];
}

- (TrainingDateTID*)objectID {
	return (TrainingDateTID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"numDataValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"numData"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic dateInfo;

@dynamic numData;

- (float)numDataValue {
	NSNumber *result = [self numData];
	return [result floatValue];
}

- (void)setNumDataValue:(float)value_ {
	[self setNumData:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveNumDataValue {
	NSNumber *result = [self primitiveNumData];
	return [result floatValue];
}

- (void)setPrimitiveNumDataValue:(float)value_ {
	[self setPrimitiveNumData:[NSNumber numberWithFloat:value_]];
}

@dynamic trainingID;

@end

