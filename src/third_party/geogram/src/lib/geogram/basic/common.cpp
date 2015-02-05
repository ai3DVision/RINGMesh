/*
 *  Copyright (c) 2012-2014, Bruno Levy
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright notice,
 *  this list of conditions and the following disclaimer in the documentation
 *  and/or other materials provided with the distribution.
 *  * Neither the name of the ALICE Project-Team nor the names of its
 *  contributors may be used to endorse or promote products derived from this
 *  software without specific prior written permission.
 * 
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 *  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 *  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 *  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 *  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 *  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 *  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 *  If you modify this software, you should include a notice giving the
 *  name of the person performing the modification, the date of modification,
 *  and the reason for such modification.
 *
 *  Contact: Bruno Levy
 *
 *     Bruno.Levy@inria.fr
 *     http://www.loria.fr/~levy
 *
 *     ALICE Project
 *     LORIA, INRIA Lorraine, 
 *     Campus Scientifique, BP 239
 *     54506 VANDOEUVRE LES NANCY CEDEX 
 *     FRANCE
 *
 */

#include <geogram/basic/common.h>
#include <geogram/basic/process.h>
#include <geogram/basic/logger.h>
#include <geogram/basic/progress.h>
#include <geogram/basic/command_line.h>
#include <geogram/basic/stopwatch.h>
#include <geogram/numerics/multi_precision.h>
#include <geogram/numerics/predicates.h>
#include <geogram/delaunay/delaunay.h>
#include <geogram/third_party/shewchuk/shewchuk.h>
#include <sstream>
#include <iomanip>

namespace GEO {

    void initialize() {

        Environment* env = Environment::instance();
        env->set_value("version", "0.0");
        env->set_value("release_date", "Jan 2015");

        Logger::initialize();
        Process::initialize();
        Progress::initialize();
        CmdLine::initialize();

        GEO_3rdParty::exactinit();
        PCK::initialize();

        Delaunay::initialize();

        atexit(GEO::terminate);

        // Clear last system error
        errno = 0;
    }

    void terminate() {
        if(
            CmdLine::arg_is_declared("sys:stats") &&
            CmdLine::get_arg_bool("sys:stats") 
        ) {
            Logger::div("System Statistics");
            PCK::show_stats();
            Process::show_stats();
        }

        PCK::terminate();
        Progress::terminate();
        Process::terminate();
        CmdLine::terminate();
        Logger::terminate();
        Environment::terminate();
    }
}

