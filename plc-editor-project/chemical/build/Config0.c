/*******************************************/
/*     FILE GENERATED BY iec2c             */
/* Editing this file is not recommended... */
/*******************************************/

#include "iec_std_lib.h"

#include "accessor.h"

#include "POUS.h"

// CONFIGURATION CONFIG0
__DECLARE_GLOBAL(BOOL,CONFIG0,PYEXT_CSV_UPDATE)

void RES0_init__(void);

void config_init__(void) {
  BOOL retain;
  retain = 0;
  __INIT_GLOBAL(BOOL,PYEXT_CSV_UPDATE,__INITIAL_VALUE(__BOOL_LITERAL(TRUE)),retain)
  RES0_init__();
}

void RES0_run__(unsigned long tick);

void config_run__(unsigned long tick) {
  RES0_run__(tick);
}
unsigned long long common_ticktime__ = 50000000ULL; /*ns*/
unsigned long greatest_tick_count__ = 0UL; /*tick*/
