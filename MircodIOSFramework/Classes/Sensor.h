//
//  Sensor.h
//  MirCode
//
//  Created by Мария Тимофеева on 06.03.17.
//  Copyright © 2017 ___matim___. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sensor : NSObject



/**
 *  @brief Enumeration of sensor names
 **/
typedef enum{
    ECG             = 0,
    GSR             = 1,
    YAW             = 2,
    PITCH           = 3,
    ROLL            = 4,
    POSITION        = 5,
    TEMPERATUREAIR  = 6,
    HEARTRATE       = 7,
    HPA             = 8,
    TEMPERATUREBODY = 9,
    SPO2            = 10,
    YAWPITCHROLL    = 11,
    ERROR           = 12

}  SensorName;

typedef enum{
    maxECG             = 4096,
    maxGSR             = 4096,
    maxYAWPITCHROLL    = 360,
    maxPOSITION        = 0,
    maxTEMPERATUREAIR  = 200,
    maxHEARTRATE       = 200,
    maxHPA             = 1260,
    maxTEMPERATUREBODY = 40,
    maxSPO2            = 100
}  MaxValue;

typedef enum{
    intervalECG             = 10,
    intervalGSR             = 500,
    intervalYAWPITCHROLL    = 40,
    intervalPOSITION        = 0,
    intervalTEMPERATUREAIR  = 500,
    intervalHEARTRATE       = 200,
    intervalHPA             = 500,
    intervalTEMPERATUREBODY = 500,
    intervalSPO2            = 100
}  SensorTimeInterval;

@property SensorName            name;
@property MaxValue              maxValue;
@property SensorTimeInterval    interval;

+ (NSArray*)getArrayAllSensors;
+ (NSString*)sensorNameToString:(SensorName)name ;
+ (SensorName)stringToSensorName:(NSString*)string;
+ (Sensor*)getSensorWithSensorName:(SensorName)name;
@end
