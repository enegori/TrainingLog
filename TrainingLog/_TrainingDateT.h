// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TrainingDateT.h instead.

#import <CoreData/CoreData.h>

extern const struct TrainingDateTAttributes {
	__unsafe_unretained NSString *dateInfo;
	__unsafe_unretained NSString *numericValue;
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

@property (nonatomic, strong) NSNumber* numericValue;

@property (atomic) float numericValueValue;
- (float)numericValueValue;
- (void)setNumericValueValue:(float)value_;

//- (BOOL)validateNumericValue:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* trainingID;

@property (atomic) int16_t trainingIDValue;
- (int16_t)trainingIDValue;
- (void)setTrainingIDValue:(int16_t)value_;

//- (BOOL)validateTrainingID:(id*)value_ error:(NSError**)error_;

@end

@interface _TrainingDateT (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveDateInfo;
- (void)setPrimitiveDateInfo:(NSDate*)value;

- (NSNumber*)primitiveNumericValue;
- (void)setPrimitiveNumericValue:(NSNumber*)value;

- (float)primitiveNumericValueValue;
- (void)setPrimitiveNumericValueValue:(float)value_;

- (NSNumber*)primitiveTrainingID;
- (void)setPrimitiveTrainingID:(NSNumber*)value;

- (int16_t)primitiveTrainingIDValue;
- (void)setPrimitiveTrainingIDValue:(int16_t)value_;

@end
