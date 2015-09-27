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

	return keyPaths;
}

@dynamic imageName;

@dynamic trainingID;

@dynamic trainingName;

@dynamic unitID;

@end

