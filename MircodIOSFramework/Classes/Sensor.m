//
//  Sensor.m
//  MirCode
//
//  Created by Мария Тимофеева on 06.03.17.
//  Copyright © 2017 ___matim___. All rights reserved.
//

#import "Sensor.h"

@implementation Sensor
+(instancetype)initWithSensorName:(SensorName)sensorName {
    Sensor *sensor = [Sensor new];
    sensor.name = sensorName;
    sensor.maxValue = [Sensor maxValueFromSensor:sensorName];
    sensor.interval = [Sensor timeIntervalFromSensor:sensorName];
    return sensor;
}
+(Sensor *)getSensorWithSensorName:(SensorName)name{
    return [self initWithSensorName:name];
}

+(NSArray*)getArrayAllSensors{
    NSMutableArray *sensors = [NSMutableArray new];
    [sensors addObject:[Sensor initWithSensorName:ECG]];
    [sensors addObject:[Sensor initWithSensorName:GSR]];
    [sensors addObject:[Sensor initWithSensorName:YAWPITCHROLL]];
    [sensors addObject:[Sensor initWithSensorName:POSITION]];
    [sensors addObject:[Sensor initWithSensorName:TEMPERATUREAIR]];
    [sensors addObject:[Sensor initWithSensorName:TEMPERATUREBODY]];
    [sensors addObject:[Sensor initWithSensorName:HEARTRATE]];
    [sensors addObject:[Sensor initWithSensorName:HPA]];
    [sensors addObject:[Sensor initWithSensorName:SPO2]];
    
    return [sensors copy];
}
+ (MaxValue)maxValueFromSensor:(SensorName)name {
    MaxValue result ;
    
    switch(name) {
        case ECG:
            result = maxECG;
            break;
        case GSR:
            result = maxGSR;
            break;
        case YAW:
            result = maxYAWPITCHROLL;
            break;
        case PITCH:
            result = maxYAWPITCHROLL;
            break;
        case ROLL:
            result = maxYAWPITCHROLL;
            break;
        case POSITION:
            result = maxPOSITION;
            break;
        case TEMPERATUREAIR:
            result =maxTEMPERATUREAIR;
            break;
        case HEARTRATE:
            result = maxHEARTRATE;
            break;
        case HPA:
            result = maxHPA;
            break;
        case TEMPERATUREBODY:
            result = maxTEMPERATUREBODY;
            break;
        case SPO2:
            result = maxSPO2;
            break;
        case YAWPITCHROLL:
            result = maxYAWPITCHROLL;
            break;
            
        default:
            [NSException raise:NSGenericException format:@"Unexpected sensor name."];
    }
    
    return result;
}

+ (SensorTimeInterval)timeIntervalFromSensor:(SensorName)name {
    SensorTimeInterval result ;
    
    switch(name) {
        case ECG:
            result = intervalECG;
            break;
        case GSR:
            result = intervalGSR;
            break;
        case YAW:
            result = intervalYAWPITCHROLL;
            break;
        case PITCH:
            result = intervalYAWPITCHROLL;
            break;
        case ROLL:
            result = intervalYAWPITCHROLL;
            break;
        case POSITION:
            result = intervalPOSITION;
            break;
        case TEMPERATUREAIR:
            result =intervalTEMPERATUREAIR;
            break;
        case HEARTRATE:
            result = intervalHEARTRATE;
            break;
        case HPA:
            result = intervalHPA;
            break;
        case TEMPERATUREBODY:
            result = intervalTEMPERATUREBODY;
            break;
        case SPO2:
            result = intervalSPO2;
            break;
        case YAWPITCHROLL:
            result = intervalYAWPITCHROLL;
            break;
            
        default:
            [NSException raise:NSGenericException format:@"Unexpected sensor name."];
    }
    
    return result;
}


+ (NSString*)sensorNameToString:(SensorName)name {
    NSString *result = nil;
    
    switch(name) {
        case ECG:
            result = @"ECG";
            break;
        case GSR:
            result = @"GSR";
            break;
        case YAW:
            result = @"YAW";
            break;
        case PITCH:
            result = @"PITCH";
            break;
        case ROLL:
            result = @"ROLL";
            break;
        case POSITION:
            result = @"POSITION";
            break;
        case TEMPERATUREAIR:
            result = @"TEMPERATUREAIR";
            break;
        case HEARTRATE:
            result = @"HEARTRATE";
            break;
        case HPA:
            result = @"HPA";
            break;
        case TEMPERATUREBODY:
            result = @"TEMPERATUREBODY";
            break;
        case SPO2:
            result = @"SPO2";
            break;
        case YAWPITCHROLL:
            result =@"YAWPITCHROLL";
            break;
            
        default:
            [NSException raise:NSGenericException format:@"Unexpected sensor name."];
    }
    
    return result;
}

+ (SensorName)stringToSensorName:(NSString*)string{
    
    if ([string isEqualToString: @"ECG"])                   return ECG;
    else if ([string isEqualToString: @"GSR"])              return GSR;
    else if ([string isEqualToString: @"YAWPITCHROLL"])     return YAWPITCHROLL;
    else if ([string isEqualToString: @"YAW"])              return YAW;
    else if ([string isEqualToString: @"PITCH"])            return PITCH;
    else if ([string isEqualToString: @"ROLL"])             return ROLL;
    else if ([string isEqualToString: @"POSITION"])         return POSITION;
    else if ([string isEqualToString: @"TEMPERATUREAIR"])   return TEMPERATUREAIR;
    else if ([string isEqualToString: @"TEMPERATUREBODY"])  return TEMPERATUREBODY;
    else if ([string isEqualToString: @"HEARTRATE"])        return HEARTRATE;
    else if ([string isEqualToString: @"HPA"])              return HPA;
    else if ([string isEqualToString: @"SPO2"])             return SPO2;
    
    return ERROR;
}
@end
