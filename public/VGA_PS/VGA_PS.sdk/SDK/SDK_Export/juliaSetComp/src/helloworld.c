/*
 * Copyright (c) 2009-2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

//#include <stdio.h>
//#include "platform.h"
//
//void print(char *str);
//
//int main()
//{
//    init_platform();
//
//    print("Hello World\n\r");
//
//    return 0;
//}

#include <stdio.h>
#include "math.h"
#include "xil_io.h"

#define base_addr 0x43C00000
#define color_addr base_addr+0
#define row_addr base_addr+4
#define col_addr base_addr+8
#define valid_addr base_addr+12

#define HIGH 1
#define LOW 0
//#define x	1280
//#define y	 720

double abs_c(double a, double b) {
    return sqrt( pow(a, 2.0) + pow(b, 2.0) );
}

int main() {
	int i, j;

	for (i=0; i<1280; i++){
		for (j=0; j<720; j++){
			xil_printf("printing color 255 at %d column %d row\n\r", i, j);
			Xil_Out32(valid_addr, 0);
			xil_printf("wrote valid bit\n\r");
			Xil_Out32(color_addr, 255);
			Xil_Out32(row_addr, j);
			Xil_Out32(col_addr, i);
			Xil_Out32(valid_addr, HIGH);
		}
	}
	return 1;
}

//int main () {
//
//    int termination = 1000;
//    double x[1280];
//    double y[720];
//    double img[720][1280];
//
//    //Initialize x and x_index, y and y_index
//    int i, j, k;
//    for (i = 0; i < 1280; i++) {
//	x[i] = -2.0 + (double) i * (4.0/1279.0);
//    }
//    print("starting printing\n\r");
//    for (i = 0; i < 720; i++) {
//	y[i] = -2.0 + (double) i * (4.0/719.0);
//    }
//
//    for (i = 0; i < 720; i++) {
//	for (j = 0; j < 1280; j++) {
//	    img[i][j] = 0;
//	}
//    }
//
//    double c_real = -0.8;
//    double c_imag = 0.156;
//
//    double z_real;
//    double z_imag;
//    double z_real_temp;
//    int n;
//    print("starting printing\n\r");
//    for (k = 0; k < 1280; k++) {
//	for (j = 0; j < 720; j++) {
//	    z_real = x[k];
//	    z_imag = y[j];
//	    n = 0;
//	    while ( abs_c(z_real, z_imag) < 2.0
//		    && (n < termination) ) {
//		z_real_temp = z_real;
//		z_real = pow(z_real, 2.0) - pow(z_imag, 2.0) + c_real;
//		z_imag = 2 * z_real_temp * z_imag + c_imag;
//		n = n + 1;
//	    }
//	    img[j][k] = log((double) n);
//	    printf("%f,", img[j][k]);
//	    Xil_Out32(color_addr, img[j][k]);
//	    Xil_Out32(row_addr, i);
//	    Xil_Out32(col_addr, j);
//	}
//	print("finished printing\n\r");
//
//    }
//
//
//    return 0;
//}
