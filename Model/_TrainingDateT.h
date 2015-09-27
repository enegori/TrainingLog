// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TrainingDateT.h instead.

#import <CoreData/CoreData.h>

extern const struct TrainingDateTAttributes {
	__unsafe_unretained NSString *dateInfo;
	__unsafe_unretained NSString *numData;
	__unsafe_unretained NSString *trainingID;
} TrainingDateTAttributes;

@interface TrainingDateTID : NSManagedObjectID {}
@end

@interface _TrainingDateT : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) TrainingDateTID* objectID;

@property (nonatomic, strong) NSDate* dateInfo;

//- (BOOL)validateDateInfo:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* numData;

@property (atomic) float numDataValue;
- (float)numDataValue;
- (void)setNumDataValue:(float)value_;

//- (BOOL)validateNumData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* trainingID;

//- (BOOL)validateTrainingID:(id*)value_ error:(NSError**)error_;

@end

@interface _TrainingDateT (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveDateInfo;
- (void)setPrimitiveDateInfo:(NSDate*)value;

- (NSNumber*)primitiveNumData;
- (void)setPrimitiveNumData:(NSNumber*)value;

- (float)primitiveNumDataValue;
- (void)setPrimitiveNumDataValue:(float)value_;

- (NSString*)primitiveTrainingID;
- (void)setPrimitiveTrainingID:(NSString*)value;

@end
