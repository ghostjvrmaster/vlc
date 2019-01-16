/*****************************************************************************
 * misc_output.c:
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

#include <vlc_misc_out.h>
#include <vlc_modules.h>
#include "misc_out_internal.h"

#include "libvlc.h"

void misc_out_Destroy(misc_output_t *misc) {
    misc_output_owner_t *owner = misc_output_owner(misc);

    vlc_mutex_lock(&owner->lock);
    module_unneed(misc, owner->module);
    vlc_mutex_unlock(&owner->lock);

    vlc_object_release(misc);
}

static void misc_out_Destructor(vlc_object_t *obj) {
    misc_output_t *misc = (misc_output_t *) obj;
    misc_output_owner_t *owner = misc_output_owner(misc);
    vlc_mutex_destroy(&owner->lock);
}

#undef misc_out_New

misc_output_t *misc_out_New(vlc_object_t *parent) {
    misc_output_t *misc = vlc_custom_create(parent, sizeof(misc_out_instance_t), "misc output");

    if (unlikely(misc == NULL)) {
        return NULL;
    }

    misc_output_owner_t *owner = misc_output_owner(misc);
    vlc_mutex_init(&owner->lock);

    vlc_object_set_destructor((vlc_object_t *) misc, misc_out_Destructor);

    misc->present = NULL;

    owner->module = module_need((vlc_object_t *) misc, "misc output", "$mout", false);
    if(owner->module == NULL){
        msg_Err(misc, "No suitable misc output available");
        vlc_object_release(misc);
        return NULL;
    }

    return misc;
}