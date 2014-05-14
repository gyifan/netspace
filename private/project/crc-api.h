/*
 * This program runs a basic test for Ross Williams CRC Model.
 * The program is created following the instruction from Ross Williams's
 * paper at
 * <http://www.ross.net/crc/crcpaper.html>
 *
 * Yifan Ge 4/15/2014
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "crcmodel.h"

void setup();

unsigned int
generate_crc(char *message, int len);
