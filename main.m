//  Measure Converters
//
//  Created by Luke Chase on 3/24/15.
//  chase.luke.a@gmail.com
//  Copyright (c) 2015 Luke A Chase. All rights reserved.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int conversionType, numberOfTries, fromType;
        char answer;
        
        NSString *dataType;
        float dataInput = 0.0;
        
        NSString *conversionMessage;
        
        float inches, feet, yards, miles, millimeters, centimeters, meters, kilometers;
        float bits, bytes, kilobits, kilobytes, megabits, megabytes, gigabits, gigabytes;
        
        
        do {  // start Do you wish to continue loop
            
            NSLog(@"\n\n"
                  ".--------------------------------------------------.\n"
                  "|                      Welcome!                    |\n"
                  "|           Measure Converters Version 1.0         |\n"
                  ":--------------------------------------------------:\n"
                  "|           Created by Luke A Chase © 2015         |\n"
                  "'--------------------------------------------------'\n"
                  "\n");
        
            conversionType = 0;
            numberOfTries = 0;
        
            do {  // Type of Conversion
                numberOfTries++;
                NSLog(@"\n\n"
                      ".--------------------------------------------------.\n"
                      "| Which type of conversion do you wish to do?      |\n"
                      "|                                                  |\n"
                      "| 1)  Length/Distance                              |\n"
                      "| 2)  Digital Data (bits <-> bytes)                |\n"
                      "'--------------------------------------------------'\n"
                      "  #%i: Enter # for conversion type you wish to do:", numberOfTries);
                
                scanf("%i", &conversionType);
                
            } while (conversionType != 1 && conversionType !=2);
            
            fromType = 0;
            numberOfTries = 0;
            
            if (conversionType == 1) {  // Length/Distance Conversion Logic
                
                do {
                    numberOfTries++;
                    NSLog(@"\n\n"
                      ".-----------------------------------------------------------.\n"
                      "| What type of length data would you like to convert from?  |\n"
                      "|                                                           |\n"
                      "| 1) inches                                                 |\n"
                      "| 2) feet                                                   |\n"
                      "| 3) yards                                                  |\n"
                      "| 4) miles                                                  |\n"
                      "| 5) millimeters                                            |\n"
                      "| 6) centimeters                                            |\n"
                      "| 7) meters                                                 |\n"
                      "| 8) kilometers                                             |\n"
                      "'-----------------------------------------------------------'\n"
                      "#%i: Enter # for type you wish to convert from:", numberOfTries);
                    
                    scanf("%i", &fromType);
                    
                } while (!(fromType >= 1 && fromType <= 8));
                
                switch (fromType) {
                    case 1:
                        dataType = @"inches";
                        break;
                    case 2:
                        dataType = @"feet";
                        break;
                    case 3:
                        dataType = @"yards";
                        break;
                    case 4:
                        dataType = @"miles";
                        break;
                    case 5:
                        dataType = @"millimeters";
                        break;
                    case 6:
                        dataType = @"centimeters";
                        break;
                    case 7:
                        dataType = @"meters";
                        break;
                    case 8:
                        dataType = @"kilometers";
                        break;
                }
                
                do {  // Number Input For Conversion Logic
                    
                    NSLog(@"\n\n"
                          "-------------------------------------------------------------\n"
                          " Enter the number of %@ you wish to convert: \n"
                          "-------------------------------------------------------------\n",
                          dataType);
                    scanf("%f", &dataInput);
                    
                    if (dataInput <= 0) {
                        NSLog(@"\n\n"
                              ".----------------------------------------------.\n"
                              "| You must enter a positive number to convert! |\n"
                              "'----------------------------------------------'\n\n");
                    }
                    
                } while (dataInput <= 0);
                
                conversionMessage = [NSString stringWithFormat:
                        @"\n\n"
                        "-------------------------------------------------------------\n"
                        " %.2f %@ is the equivalent of:\n"
                        "-------------------------------------------------------------",
                        dataInput, dataType];
                
                switch (fromType) {
                    case 1:  // inches
                        inches = dataInput;
                        
                        millimeters = inches * 25.4;
                        centimeters = inches * 2.54;
                        meters = inches * 0.0254;
                        kilometers = inches * 0.000254;
                        feet = inches * 0.0833333;
                        yards = inches * 0.0277778;
                        miles = inches * 0.0000157828283;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.4lf centimeters     OR     "
                                             "%.6lf meters     OR     "
                                             "%.8lf kilometers\n\n"
                                             "%.6lf feet     OR     "
                                             "%.8lf yards     OR     "
                                             "%.10lf miles\n\n",
                                             conversionMessage,
                                             millimeters,
                                             centimeters,
                                             meters,
                                             kilometers,
                                             feet,
                                             yards,
                                             miles];
                        
                        break;
                    case 2:  // feet
                        feet = dataInput;
                        
                        millimeters = feet * 304.8;
                        centimeters = feet * 30.48;
                        meters = feet * 0.3048;
                        kilometers = feet * 0.003048;
                        inches = feet * 12;
                        yards = feet * 0.333333;
                        miles = feet * 0.000189394;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.2lf centimeters     OR     "
                                             "%.4lf meters     OR     "
                                             "%.6lf kilometers\n\n"
                                             "%.2lf inches     OR     "
                                             "%.4lf yards     OR     "
                                             "%.6lf miles\n\n",
                                             conversionMessage,
                                             millimeters,
                                             centimeters,
                                             meters,
                                             kilometers,
                                             inches,
                                             yards,
                                             miles];
                        break;
                    case 3:  // yards
                        yards = dataInput;
                        
                        millimeters = yards * 0.00109361;
                        centimeters = yards * 91.44;
                        meters = yards * 0.9144;
                        kilometers = yards * 0.0009144;
                        inches = yards * 36;
                        feet = yards * 3;
                        miles = yards * 0.000568182 ;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.2lf centimeters     OR     "
                                             "%.6lf meters     OR     "
                                             "%.8lf kilometers\n\n"
                                             "%.2lf inches     OR     "
                                             "%.2lf feet     OR     "
                                             "%.6lf miles\n\n",
                                             conversionMessage,
                                             millimeters,
                                             centimeters,
                                             meters,
                                             kilometers,
                                             inches,
                                             feet,
                                             miles];
                        break;
                    case 4:  // miles
                        miles = dataInput;
                        
                        millimeters = miles * 1609344;
                        centimeters = miles * 160934.4;
                        meters = miles * 1609.344;
                        kilometers = miles * 1.609344;
                        inches = miles * 63360;
                        feet = miles * 5280;
                        yards = miles * 1760;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.2lf centimeters     OR     "
                                             "%.4lf meters     OR     "
                                             "%.6lf kilometers\n\n"
                                             "%.2lf inches     OR     "
                                             "%.2lf feet     OR     "
                                             "%.2lf yards\n\n",
                                             conversionMessage,
                                             millimeters,
                                             centimeters,
                                             meters,
                                             kilometers,
                                             inches,
                                             feet,
                                             yards];
                        break;
                    case 5:  // millimeters
                        millimeters = dataInput;
                        
                        inches = millimeters * 0.03937007874;
                        feet = millimeters * 0.00328084;
                        yards = millimeters * 0.00109361;
                        miles = millimeters * 0.000000621371192;
                        centimeters = millimeters * 0.1;
                        meters = millimeters * 0.001;
                        kilometers = millimeters * 0.000001;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.4lf inches     OR     "
                                             "%.6lf feet     OR     "
                                             "%.8lf yards     OR     "
                                             "%.10lf miles\n\n"
                                             "%.4lf centimeters     OR     "
                                             "%.6lf meters     OR     "
                                             "%.8lf kilometers\n\n",
                                             conversionMessage,
                                             inches,
                                             feet,
                                             yards,
                                             miles,
                                             centimeters,
                                             meters,
                                             kilometers];
                        break;
                    case 6:  // centimeters
                        centimeters = dataInput;
                        
                        inches = centimeters;
                        feet = centimeters * 0.032808399;
                        yards = centimeters * 0.010936133;
                        miles = centimeters * 0.000006213712;
                        millimeters = centimeters * 10;
                        meters = centimeters * 0.01;
                        kilometers = centimeters * 0.00001;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.2lf inches     OR     "
                                             "%.4lf feet     OR     "
                                             "%.6lf yards     OR     "
                                             "%.8lf miles\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.4lf meters     OR     "
                                             "%.6lf kilometers\n\n",
                                             conversionMessage,
                                             inches,
                                             feet,
                                             yards,
                                             miles,
                                             millimeters,
                                             meters,
                                             kilometers];
                        break;
                    case 7:  // meters
                        meters = dataInput;
                        
                        inches = meters * 39.3700787;
                        feet = meters * 3.2808399;
                        yards = meters * 1.0936133;
                        miles = meters * 1609.344;
                        millimeters = meters * 1000;
                        centimeters = meters * 100;
                        kilometers = meters * 0.001;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.4lf inches     OR     "
                                             "%.4lf feet     OR     "
                                             "%.4lf yards     OR     "
                                             "%.4lf miles\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.2lf centimeters     OR     "
                                             "%.6lf kilometers\n\n",
                                             conversionMessage,
                                             inches,
                                             feet,
                                             yards,
                                             miles,
                                             millimeters,
                                             centimeters,
                                             kilometers];
                        break;
                    case 8:  // kilometers
                        kilometers = dataInput;
                        
                        inches = kilometers * 39370.0787;
                        feet = kilometers * 3280.8399;
                        yards = kilometers * 1093.6133;
                        miles = kilometers * 0.621371192;
                        millimeters = kilometers * 1000000;
                        centimeters = kilometers * 100000;
                        meters = kilometers * 1000;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.4lf inches     OR     "
                                             "%.4lf feet     OR     "
                                             "%.4lf yards     OR     "
                                             "%.6lf miles\n\n"
                                             "%.2lf millimeters     OR     "
                                             "%.2lf centimeters     OR     "
                                             "%.2lf meters\n\n",
                                             conversionMessage,
                                             inches,
                                             feet,
                                             yards,
                                             miles,
                                             millimeters,
                                             centimeters,
                                             meters];
                        break;
                }
                
            } else {  // Digital Data Conversion Logic

                fromType = 0;
                numberOfTries = 0;
                
                do {
                    numberOfTries++;
                    NSLog(@"\n\n"
                      ".-----------------------------------------------------------.\n"
                      "| What type of digital data would you like to convert from? |\n"
                      "|                                                           |\n"
                      "| 1) bits                                                   |\n"
                      "| 2) kilobits                                               |\n"
                      "| 3) megabits                                               |\n"
                      "| 4) gigabits                                               |\n"
                      "| 5) bytes                                                  |\n"
                      "| 6) kilobytes                                              |\n"
                      "| 7) megabytes                                              |\n"
                      "| 8) gigabytes                                              |\n"
                      "'-----------------------------------------------------------'\n"
                      "#%i: Enter # for type you wish to convert from:", numberOfTries);
                    
                    scanf("%i", &fromType);
                    
                } while (!(fromType >= 1 && fromType <= 8));
                
                switch (fromType) {
                    case 1:
                        dataType = @"bits";
                        break;
                    case 2:
                        dataType = @"kilobits";
                        break;
                    case 3:
                        dataType = @"megabits";
                        break;
                    case 4:
                        dataType = @"gigabits";
                        break;
                    case 5:
                        dataType = @"bytes";
                        break;
                    case 6:
                        dataType = @"kilobytes";
                        break;
                    case 7:
                        dataType = @"megabytes";
                        break;
                    case 8:
                        dataType = @"gigabytes";
                        break;
                }
                
                do {  // Number Input For Conversion Logic
                    
                    NSLog(@"\n\n"
                          "-------------------------------------------------------------\n"
                          " Enter the number of %@ you wish to convert: \n"
                          "-------------------------------------------------------------\n",
                          dataType);
                    scanf("%f", &dataInput);
                    
                    if (dataInput <= 0) {
                        NSLog(@"\n\n"
                              ".----------------------------------------------.\n"
                              "| You must enter a positive number to convert! |\n"
                              "'----------------------------------------------'\n\n");
                    }
                    
                } while (dataInput <= 0);
                
                conversionMessage = [NSString stringWithFormat:
                        @"\n\n"
                        "-------------------------------------------------------------\n"
                        " %.2f %@ is the equivalent of:\n"
                        "-------------------------------------------------------------",
                        dataInput, dataType];
                
                switch (fromType) {
                    case 1:  // bits
                        bits = dataInput;
                        
                        kilobits = bits * 0.001;
                        megabits = bits * 1e-6;
                        gigabits = bits * 1e-9;
                        bytes = bits * 0.125;
                        kilobytes = bits * 0.000125;
                        megabytes = bits * 1.25e-7;
                        gigabytes = bits * 1.25e-10;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.4lf kilobits     OR     "
                                             "%.7lf megabits     OR     "
                                             "%.10lf gigabits\n\n"
                                             "%.1lf bytes     OR     "
                                             "%.4lf kilobytes     OR     "
                                             "%.7lf megabytes     OR     "
                                             "%.10lf gigabytes\n\n",
                                             conversionMessage,
                                             kilobits,
                                             megabits,
                                             gigabits,
                                             bytes,
                                             kilobytes,
                                             megabytes,
                                             gigabytes];
                        
                        break;
                    case 2:  // kilobits
                        kilobits = dataInput;
                        
                        bits = kilobits * 1000;
                        megabits = kilobits * 0.001;
                        gigabits = kilobits * 1e-6;
                        bytes = kilobits * 0.008;
                        kilobytes = kilobits * 0.125;
                        megabytes = kilobits * 0.000125;
                        gigabytes = kilobits * 1.25e-7;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.4lf megabits     OR     "
                                             "%.7lf gigabits\n\n"
                                             "%.4lf bytes     OR     "
                                             "%.1lf kilobytes     OR     "
                                             "%.4lf megabytes     OR     "
                                             "%.7lf gigabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             megabits,
                                             gigabits,
                                             bytes,
                                             kilobytes,
                                             megabytes,
                                             gigabytes];
                        break;
                    case 3:  // megabits
                        megabits = dataInput;
                        
                        bits = megabits * 1e+6;
                        kilobits = megabits * 1000;
                        gigabits = megabits * 0.001;
                        bytes = megabits * 125000;
                        kilobytes = megabits * 125;
                        megabytes = megabits * 0.125;
                        gigabytes = megabits * 0.000125;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.1lf kilobits     OR     "
                                             "%.4lf gigabits\n\n"
                                             "%.1lf bytes     OR     "
                                             "%.1lf kilobytes     OR     "
                                             "%.1lf megabytes     OR     "
                                             "%.4lf gigabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             kilobits,
                                             gigabits,
                                             bytes,
                                             kilobytes,
                                             megabytes,
                                             gigabytes];
                        break;
                    case 4:  // gigabits
                        gigabits = dataInput;
                        
                        bits = gigabits * 1e+9;
                        kilobits = gigabits * 1e+6;
                        megabits = gigabits * 1000;
                        bytes = gigabits * 1.25e+8;
                        kilobytes = gigabits * 125000;
                        megabytes = gigabits * 125;
                        gigabytes = gigabits * 0.125;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.1lf kilobits     OR     "
                                             "%.1lf megabits\n\n"
                                             "%.1lf bytes     OR     "
                                             "%.1lf kilobytes     OR     "
                                             "%.1lf megabytes     OR     "
                                             "%.1lf gigabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             kilobits,
                                             megabits,
                                             bytes,
                                             kilobytes,
                                             megabytes,
                                             gigabytes];
                        break;
                    case 5:  // bytes
                        bytes = dataInput;
                        
                        bits = bytes * 8;
                        kilobits = bytes * 0.008;
                        megabits = bytes * 8e-6;
                        gigabits = bytes * 8e-9;
                        kilobytes = bytes * 0.001;
                        megabytes = bytes * 1e-6;
                        gigabytes = bytes * 1e-9;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.4lf kilobits     OR     "
                                             "%.7lf megabits     OR     "
                                             "%.10lf gigabits\n\n"
                                             "%.4lf kilobytes     OR     "
                                             "%.7lf megabytes     OR     "
                                             "%.10lf gigabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             kilobits,
                                             megabits,
                                             gigabits,
                                             kilobytes,
                                             megabytes,
                                             gigabytes];
                        break;
                    case 6:  // kilobytes
                        kilobytes = dataInput;
                        
                        bits = kilobytes * 8000;
                        kilobits = kilobytes * 8;
                        megabits = kilobytes * 0.008;
                        gigabits = kilobytes * 8e-6;
                        bytes = kilobytes * 1000;
                        megabytes = kilobytes * 0.001;
                        gigabytes = kilobytes * 1e-6;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.1lf kilobits     OR     "
                                             "%.4lf megabits     OR     "
                                             "%.7lf gigabits\n\n"
                                             "%.1lf bytes     OR     "
                                             "%.4lf megabytes     OR     "
                                             "%.7lf gigabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             kilobits,
                                             megabits,
                                             gigabits,
                                             bytes,
                                             megabytes,
                                             gigabytes];
                        break;
                    case 7:  // megabytes
                        megabytes = dataInput;
                        
                        bits = megabytes * 8e+6;
                        kilobits = megabytes * 8000;
                        megabits = megabytes * 8;
                        gigabits = megabytes * 0.008;
                        bytes = megabytes * 1e+6;
                        kilobytes = megabytes * 1000;
                        gigabytes = megabytes * 0.001;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.1lf kilobits     OR     "
                                             "%.1lf megabits     OR     "
                                             "%.4lf gigabits\n\n"
                                             "%.1lf bytes     OR     "
                                             "%.1lf kilobytes     OR     "
                                             "%.4lf gigabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             kilobits,
                                             megabits,
                                             gigabits,
                                             bytes,
                                             kilobytes,
                                             gigabytes];
                        break;
                    case 8:  // gigabytes
                        gigabytes = dataInput;
                        
                        bits = gigabytes * 8e+9;
                        kilobits = gigabytes * 8e+6;
                        megabits = gigabytes * 8000;
                        gigabits = gigabytes * 8;
                        bytes = gigabytes * 1e+9;
                        kilobytes = gigabytes * 1e+6;
                        megabytes = gigabytes * 1000;
                        
                        conversionMessage = [NSString stringWithFormat:
                                             @"%@\n\n"
                                             "%.1lf bits     OR     "
                                             "%.1lf kilobits     OR     "
                                             "%.1lf megabits     OR     "
                                             "%.1lf gigabits\n\n"
                                             "%.1lf bytes     OR     "
                                             "%.1lf kilobytes     OR     "
                                             "%.1lf megabytes\n\n",
                                             conversionMessage,
                                             bits,
                                             kilobits,
                                             megabits,
                                             gigabits,
                                             bytes,
                                             kilobytes,
                                             megabytes];
                        break;
                    }
                
            }
            
            NSLog(@"%@", conversionMessage);
            
            NSLog(@"\n\n"
                  ".-------------------------------------------------------.\n"
                  "| Do you wish to continue doing more conversions (y/n)? |\n"
                  "'-------------------------------------------------------'\n");
            
            scanf("\n%c", &answer);
        
        } while (answer == 'y');  // end Do you wish to continue loop
        
    }
    return 0;
}
