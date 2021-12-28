#include "oled_i2c.h"
#include "REGX51.h"
#include "i2c.h"
#include "MPU6050.h"
// #include "ssd.h"
#include "mat.h"

#define LED P1
#define UI unsigned int
#define UC unsigned char

const signed int LB = 12000;

// const UC MAT_X[8] = {
//     0x81,
//     0x42,
//     0x24,
//     0x18,
//     0x18,
//     0x24,
//     0x42,
//     0x81
// };
const UC MAT_UP[8] = {
    0x18,
    0x3C,
    0x5A,
    0x18,
    0x18,
    0x18,
    0x18,
    0x18
}, MAT_RIGHT[8] = {
    0x00,
    0x04,
    0x02,
    0xFF,
    0xFF,
    0x02,
    0x04,
    0x00
}, MAT_UPRIGHT[8] = {
    0x07,
    0x03,
    0x05,
    0x08,
    0x10,
    0x20,
    0x40,
    0x80
}, MAT_UPLEFT[8] = {
    0xE0,
    0xC0,
    0xA0,
    0x10,
    0x08,
    0x04,
    0x02,
    0x01
};

void main()
{
    UC patt = 0;
    int x, y, z;
    SDA = 1;
    SCL = 1;
    MPU6050_INIT();
    MAT_INIT();
    // SSD_INIT();

    while(1)
    {
        readMPU6050_AccelData(&accel_data[0]);
        x = accel_data[0];
        y = accel_data[1];
        z = accel_data[2];
        // SSD_Number(y);

        if (z > LB || z < -LB) {
            patt = 0xff;
            MAT_Show_X();
        } else if (x > LB || x < -LB) {
            if (x > 0){
                patt = 0x01;
                MAT_Show_R(MAT_RIGHT, MAT_RIGHT);
            } else {
                patt = 0x02;
                MAT_Show(MAT_RIGHT, MAT_RIGHT);
            }
        } else if (y > 15000 || y < -15000) {
            if (y > 0) {
                patt = 0x04;
                MAT_Show_R(MAT_UP, MAT_UP);
            } else {
                patt = 0x08;
                MAT_Show(MAT_UP, MAT_UP);
            }
        } else if (x > 0) {
            if (y > 0) {
                patt = 0x10;
                MAT_Show(MAT_UPRIGHT, MAT_UPRIGHT);
            } else {
                patt = 0x20;
                MAT_Show_R(MAT_UPRIGHT, MAT_UPRIGHT);
            }
        } else {
            if (y > 0) {
                patt = 0x40;
                MAT_Show_R(MAT_UPLEFT, MAT_UPLEFT);
            } else {
                patt = 0x80;
                MAT_Show(MAT_UPLEFT, MAT_UPLEFT);
            }
        }

        // if (accel_data[0] > epsilon) {
        //     if (accel_data[1] > epsilon) {
        //         patt = 0x01;
        //     } else if (accel_data[1] < -epsilon) {
        //         patt = 0x02;
        //     } else {
        //         patt = 0x04;
        //     }
        // } else if (accel_data[0] < -epsilon) {
        //     if (accel_data[1] > epsilon) {
        //         patt = 0x08;
        //     } else if (accel_data[1] < -epsilon) {
        //         patt = 0x10;
        //     } else {
        //         patt = 0x20;
        //     }
        // } else {
        //     if (accel_data[1] > epsilon) {
        //         patt = 0x40;
        //     } else if (accel_data[1] < -epsilon) {
        //         patt = 0x80;
        //     } else {
        //         patt = 0xff;
        //     }
        // }

        LED = ~patt;
    };
}