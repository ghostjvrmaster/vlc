/*
 * MPD.cpp
 *****************************************************************************
 * Copyright (C) 2010 - 2011 Klagenfurt University
 *
 * Created on: Aug 10, 2010
 * Authors: Christopher Mueller <christopher.mueller@itec.uni-klu.ac.at>
 *          Christian Timmerer  <christian.timmerer@itec.uni-klu.ac.at>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; either version 2.1 of the License, or
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
#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#include <vlc_fixups.h>
#include <cinttypes>

#include "MPD.h"
#include "ProgramInformation.h"
#include "Period.h"

#include <vlc_common.h>
#include <vlc_stream.h>

using namespace dash::mpd;

MPD::MPD (vlc_object_t *p_object, Profile profile_) :
    AbstractPlaylist(p_object),
    profile( profile_ )
{
    programInfo.Set( NULL );
}

MPD::~MPD()
{
    delete(programInfo.Get());
}

bool MPD::isLive() const
{
    if(type.empty())
    {
        Profile live(Profile::ISOLive);
        return profile == live;
    }
    else
        return (type != "static");
}

Profile MPD::getProfile() const
{
    return profile;
}

StreamFormat MPD::mimeToFormat(const std::string &mime)
{
    std::string::size_type pos = mime.find("/");
    if(pos != std::string::npos)
    {
        std::string tail = mime.substr(pos + 1);
        if(tail == "mp4")
            return StreamFormat(StreamFormat::MP4);
        else if (tail == "mp2t")
            return StreamFormat(StreamFormat::MPEG2TS);
        else if (tail == "vtt")
            return StreamFormat(StreamFormat::WEBVTT);
        else if (tail == "ttml+xml")
            return StreamFormat(StreamFormat::TTML);
        else if (tail == "jaunt+octet-stream")
            return StreamFormat(StreamFormat::DRACO);
    }
    return StreamFormat();
}

void MPD::debug()
{
    msg_Dbg(p_object, "MPD profile=%s mediaPresentationDuration=%" PRId64
            " minBufferTime=%" PRId64,
            static_cast<std::string>(getProfile()).c_str(),
            duration.Get() / CLOCK_FREQ,
            minBufferTime);
    msg_Dbg(p_object, "BaseUrl=%s", getUrlSegment().toString().c_str());

    std::vector<BasePeriod *>::const_iterator i;
    for(i = periods.begin(); i != periods.end(); ++i)
        (*i)->debug(VLC_OBJECT(p_object));
}
