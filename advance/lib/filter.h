/*
 * This file is part of the Advance project.
 *
 * Copyright (C) 2003 Andrea Mazzoleni
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#ifndef __FILTER_H
#define __FILTER_H

/** Max filter order. */
#define FILTER_ORDER_MAX 51

/** Define to use interger calculation in the filter operations. */
#define FILTER_USE_INT

#ifdef FILTER_USE_INT
typedef int adv_filter_real;
#define FILTER_INT_FRACT 15 /* fractional bits */
#else
typedef double adv_filter_real;
#endif

typedef struct adv_filter_struct {
	adv_filter_real xcoeffs[(FILTER_ORDER_MAX+1)/2]; /**< Filter coefficients. */
	unsigned order; /**< Filter order. */
} adv_filter;

typedef struct adv_filter_state_struct {
	unsigned prev_mac;
	adv_filter_real xprev[FILTER_ORDER_MAX];
} adv_filter_state;

/**
 * Get the order of the filter.
 */
unsigned filter_order_get(const adv_filter* f);

/**
 * Get the output delay of the filter.
 */
unsigned filter_delay_get(const adv_filter* f);

/**
 * Setup a FIR Low Pass filter.
 * The effective filter order may differ than the requested value. You must
 * read it using the filter_order_get() function.
 * \param freq Cut frecuenty of the filter. 0 < freq <= 0.5.
 * \param order Order of the filter. It must be odd.
 */
void filter_lpfir_set(adv_filter* f, double freq, unsigned order);

/**
 * Reset the filter state.
 */
void filter_state_reset(adv_filter* f, adv_filter_state* s);

/**
 * Insert a value in the filter state.
 */
static inline void filter_insert(adv_filter* f, adv_filter_state* s, adv_filter_real x)
{
	/* next position */
	++s->prev_mac;
	if (s->prev_mac >= f->order)
		s->prev_mac = 0;

	/* set the most recent sample */
	s->xprev[s->prev_mac] = x;
}

/**
 * Compute an output sample of the filter.
 * You can start to extract data after you have inserted a number of samples
 * equal at the filter order.
 * The output delay is of (order-1)/2 samples.
 */
adv_filter_real filter_extract(adv_filter* f, adv_filter_state* s);

#endif