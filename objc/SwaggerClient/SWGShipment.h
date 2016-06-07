#import <Foundation/Foundation.h>
#import "SWGObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "SWGStop.h"


@protocol SWGShipment
@end

@interface SWGShipment : SWGObject

/* Unique identifier of service [optional]
 */
@property(nonatomic) NSString* _id;
/* name of shipment [optional]
 */
@property(nonatomic) NSString* name;
/* priority of service, i.e. 1 = high, 2 = normal, 3 = low. default is 2. [optional]
 */
@property(nonatomic) NSNumber* priority;

@property(nonatomic) SWGStop* pickup;

@property(nonatomic) SWGStop* delivery;
/* array of capacity dimensions [optional]
 */
@property(nonatomic) NSArray* /* NSNumber */ size;
/* array of required skills [optional]
 */
@property(nonatomic) NSArray* /* NSString */ requiredSkills;
/* array of allowed vehicle ids [optional]
 */
@property(nonatomic) NSArray* /* NSString */ allowedVehicles;

@end
