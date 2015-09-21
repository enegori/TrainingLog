// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to TrainingInfoM.h instead.

#import <CoreData/CoreData.h>

extern const struct TrainingInfoMAttributes {
	__unsafe_unretained NSString *imageName;
	__unsafe_unretained NSString *trainingID;
	__unsafe_unretained NSString *trainingName;
	__unsafe_unretained NSString *unitID;
} TrainingInfoMAttributes;

@interface TrainingInfoMID : NSManagedObjectID {}
@end

@interface _TrainingInfoM : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) TrainingInfoMID* objectID;

@property (nonatomic, strong) NSString* imageName;

//- (BOOL)validateImageName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* trainingID;

@property (atomic) int16_t trainingIDValue;
- (int16_t)trainingIDValue;
- (void)setTrainingIDValue:(int16_t)value_;

//- (BOOL)validateTrainingID:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* trainingName;

//- (BOOL)validateTrainingName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSNumber* unitID;

@property (atomic) int16_t unitIDValue;
- (int16_t)unitIDValue;
- (void)setUnitIDValue:(int16_t)value_;

//- (BOOL)validateUnitID:(id*)value_ error:(NSError**)error_;

@end

@interface _TrainingInfoM (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveImageName;
- (void)setPrimitiveImageName:(NSString*)value;

- (NSNumber*)primitiveTrainingID;
- (void)setPrimitiveTrainingID:(NSNumber*)value;

- (int16_t)primitiveTrainingIDValue;
- (void)setPrimitiveTrainingIDValue:(int16_t)value_;

- (NSString*)primitiveTrainingName;
- (void)setPrimitiveTrainingName:(NSString*)value;

- (NSNumber*)primitiveUnitID;
- (void)setPrimitiveUnitID:(NSNumber*)value;

- (int16_t)primitiveUnitIDValue;
- (void)setPrimitiveUnitIDValue:(int16_t)value_;

@end
