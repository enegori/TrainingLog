// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to UnitInfoM.h instead.

#import <CoreData/CoreData.h>

extern const struct UnitInfoMAttributes {
	__unsafe_unretained NSString *unitID;
	__unsafe_unretained NSString *unitName;
} UnitInfoMAttributes;

@interface UnitInfoMID : NSManagedObjectID {}
@end

@interface _UnitInfoM : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) UnitInfoMID* objectID;

@property (nonatomic, strong) NSString* unitID;

//- (BOOL)validateUnitID:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* unitName;

//- (BOOL)validateUnitName:(id*)value_ error:(NSError**)error_;

@end

@interface _UnitInfoM (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveUnitID;
- (void)setPrimitiveUnitID:(NSString*)value;

- (NSString*)primitiveUnitName;
- (void)setPrimitiveUnitName:(NSString*)value;

@end
