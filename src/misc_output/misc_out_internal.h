/*****************************************************************************
 * misc_out_internal.h:
 *****************************************************************************
 * Copyright (C) 2019 Jaunt, Inc.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/

#ifndef misc_out_internal_h
#define misc_out_internal_h

#include <vlc_common.h>

misc_output_t *misc_out_New(vlc_object_t *);

#define misc_out_New(a) misc_out_New(VLC_OBJECT(a))

void misc_out_Destroy(misc_output_t *);

typedef struct {
    vlc_mutex_t lock;
    module_t *module;
} misc_output_owner_t;

typedef struct {
    misc_output_t output;
    misc_output_owner_t owner;
} misc_out_instance_t;

static inline misc_output_owner_t *misc_output_owner(misc_output_t *misc_out) {
    return &((misc_out_instance_t *) misc_out)->owner;
}

#endif // misc_out_internal_h
