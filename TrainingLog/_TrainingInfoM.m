// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TrainingInfoM.m instead.

#import "_TrainingInfoM.h"

const struct TrainingInfoMAttributes TrainingInfoMAttributes = {
	.imageName = @"imageName",
	.trainingID = @"trainingID",
	.trainingName = @"trainingName",
	.unitID = @"unitID",
};

@implementation TrainingInfoMID
@end

@implementation _TrainingInfoM

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"TrainingInfoM" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"TrainingInfoM";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"TrainingInfoM" inManagedObjectContext:moc_];
}

- (TrainingInfoMID*)objectID {
	return (TrainingInfoMID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"trainingIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"trainingID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"unitIDValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"unitID"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic imageName;

@dynamic trainingID;

- (int16_t)trainingIDValue {
	NSNumber *result = [self trainingID];
	return [result shortValue];
}

- (void)setTrainingIDValue:(int16_t)value_ {
	[self setTrainingID:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveTrainingIDValue {
	NSNumber *result = [self primitiveTrainingID];
	return [result shortValue];
}

- (void)setPrimitiveTrainingIDValue:(int16_t)value_ {
	[self setPrimitiveTrainingID:[NSNumber numberWithShort:value_]];
}

@dynamic trainingName;

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

@end

