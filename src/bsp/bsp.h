/*
 * bsp.h
 *
 *  Created on: Jul 13, 2023
 *      Author: enrhd
 */

#ifndef SRC_BSP_BSP_H_
#define SRC_BSP_BSP_H_

#include "def.h"
#include "stm32f1xx_hal.h"

void bspInit();
void delay(uint32_t ms);
uint32_t millis(void);

void Error_Handler(void);

#endif /* SRC_BSP_BSP_H_ */
