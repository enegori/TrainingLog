// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TrainingDateT.m instead.

#import "_TrainingDateT.h"

const struct TrainingDateTAttributes TrainingDateTAttributes = {
	.dateInfo = @"dateInfo",
	.numericValue = @"numericValue",
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

	if ([key isEqualToString:@"numericValueValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"numericValue"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic dateInfo;

@dynamic numericValue;

- (float)numericValueValue {
	NSNumber *result = [self numericValue];
	return [result floatValue];
}

- (void)setNumericValueValue:(float)value_ {
	[self setNumericValue:[NSNumber numberWithFloat:value_]];
}

- (float)primitiveNumericValueValue {
	NSNumber *result = [self primitiveNumericValue];
	return [result floatValue];
}

- (void)setPrimitiveNumericValueValue:(float)value_ {
	[self setPrimitiveNumericValue:[NSNumber numberWithFloat:value_]];
}

@dynamic trainingID;

@end

