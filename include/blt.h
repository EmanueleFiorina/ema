/*
  Copyright (C) 2015 Alessandro Bugatti (alessandro.bugatti@istruzione.it)

  This program is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/

#ifndef BLT_H
#define BLT_H

#include "branch.h"

/*!
 *  \brief BLT instruction
 *  \author Alessandro Bugatti
 *
 *  \version 0.1
 *  \date  Creation 2015-09-29
 *  \date  Last change 2015-09-29
 */

class Blt : public Branch
{
    public:
        /** \brief BLT instruction

          ** BLT Rx Ry label

         Branch to _label_ if Rx < Ry

         * \param c The computer where the instruction will be executed
         * \param line Parameters of the instruction
         *
         */
        Blt(Computer *c, const string& line):Branch(c,line){}
        /** \brief Condition to trigger the branch

            \return True if Rx < Ry, false otherwise
        */
        bool condition();
};

#endif // BLT_H
