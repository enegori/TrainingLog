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

@property (nonatomic, strong) NSString* trainingID;

//- (BOOL)validateTrainingID:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* trainingName;

//- (BOOL)validateTrainingName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* unitID;

//- (BOOL)validateUnitID:(id*)value_ error:(NSError**)error_;

@end

@interface _TrainingInfoM (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveImageName;
- (void)setPrimitiveImageName:(NSString*)value;

- (NSString*)primitiveTrainingID;
- (void)setPrimitiveTrainingID:(NSString*)value;

- (NSString*)primitiveTrainingName;
- (void)setPrimitiveTrainingName:(NSString*)value;

- (NSString*)primitiveUnitID;
- (void)setPrimitiveUnitID:(NSString*)value;

@end
