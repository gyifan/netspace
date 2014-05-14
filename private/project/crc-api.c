/*
 * This program runs a basic test for Ross Williams CRC Model.
 * The program is created following the instruction from Ross Williams's
 * paper at
 * <http://www.ross.net/crc/crcpaper.html>
 * 
 * 03-30-2013
 * Xiannong Meng
 *
 * Revised by Yifan Ge 4/15/2014
 *
 */

#include "crc-api.h"

/*
 * The following could be local variabls.
 * Global variables make the flow of computing easier.
 */
cm_t   cm;
p_cm_t p_cm = &cm;

void setup() {
  /*
   * Parameter set-up begins
   */

  p_cm->cm_width = 16;
  p_cm->cm_poly  = 0x8005L;       // CRC16
  //  p_cm->cm_poly  = 0x1021L;   // CRC-CCITT

  /*
   * parameter set-up ends
   */

  // one can initalize the proceeding bits wit 0s '0L' or 1s 'FFFFL'
  p_cm->cm_init  = 0L;            
  //  p_cm->cm_init  = 0xFFFFL;
  p_cm->cm_refin = TRUE;
  p_cm->cm_refot = TRUE;
  p_cm->cm_xorot = 0L;

  cm_ini(p_cm);
}

unsigned int 
generate_crc(char *message, int len) {

  char   ch;

  // initialize the crc calculation
  setup();

  int i = 0;
  for (i = 0; i < len; i ++) {
    ch = message[i];
    cm_nxt(p_cm, ch);
  }
  ulong crc = cm_crc(p_cm);
//  printf("crc value 0x%04x\n", crc);

  return crc;
}
