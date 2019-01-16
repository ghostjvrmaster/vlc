/*****************************************************************************
 * vlc_misc_out.h:
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

#ifndef vlc_misc_out_h
#define vlc_misc_out_h

#include <vlc_common.h>

struct misc_output {
    VLC_COMMON_MEMBERS

    struct misc_out_sys_t *sys;

    void (*present)(misc_output_t *, block_t *);
};

#endif // vlc_misc_out_h
