/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 Header:       FGExternalReactions.h
 Author:       David P. Culp
 Date started: 17/11/06

 ------------- Copyright (C) 2006  David P. Culp (davidculp2@comcast.net) -------------

 This program is free software; you can redistribute it and/or modify it under
 the terms of the GNU Lesser General Public License as published by the Free Software
 Foundation; either version 2 of the License, or (at your option) any later
 version.

 This program is distributed in the hope that it will be useful, but WITHOUT
 ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
 details.

 You should have received a copy of the GNU Lesser General Public License along with
 this program; if not, write to the Free Software Foundation, Inc., 59 Temple
 Place - Suite 330, Boston, MA  02111-1307, USA.

 Further information about the GNU Lesser General Public License can also be found on
 the world wide web at http://www.gnu.org.

HISTORY
--------------------------------------------------------------------------------
17/11/06   DPC   Created

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SENTRY
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

#ifndef FGEXTERNALREACTIONS_H
#define FGEXTERNALREACTIONS_H

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
INCLUDES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

#include "FGModel.h"
#include "FGExternalForce.h"
#include <vector>

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DEFINITIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

#define ID_EXTERNALREACTIONS "$Id: FGExternalReactions.h,v 1.9 2009/10/24 22:59:30 jberndt Exp $"

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FORWARD DECLARATIONS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

namespace JSBSim {

class Element;

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CLASS DOCUMENTATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

/** Manages the external and/or arbitrary forces.
    The external reactions capability in JSBSim really should be named
    "arbitrary forces", because this feature can be used to model a wide
    variety of forces that act on a vehicle. Some examples include: parachutes,
    catapult, arresting hook, and tow line.
    
    This class acts similarly to the other "manager classes" (FGPropulsion, 
    FGFCS, FGGroundReactions, FGAerodynamics) because it manages collections
    of constituent forces. The individual forces are implemented with the
    FGExternalForce class.
    
    The format of the <em>optional</em> external reactions section in the config
    file is as follows:
    
    @code
<external_reactions>

  <!-- Interface properties, a.k.a. property declarations -->
  <property> ... </property>
    
  <force name="name" frame="BODY | LOCAL | WIND" unit="unit">
    ...
  </force>

  <!-- Additional force definitions may follow -->
  <force name="name" frame="BODY | LOCAL | WIND" unit="unit">
    ...
  </force>

</external_reactions>
    @endcode

    See the FGExternalForce class for more information on the format of the
    force specification itself.
    
    When force elements are encountered in the configuration file, a new instance
    of the FGExternalForce class is created and a pointer to the class is pushed
    onto the Forces vector.
    
    This class is one of a few of the manager classes that allows properties
    to be "declared". In code, these are represented by the
    <em>interface_properties</em> vector. Properties that have not yet been
    created in an already parsed section of the configuration file and that are
    used in the definition of an external force should be declared in the
    external_reactions section because they will not be created automatically,
    and so would cause an error, since the property cannot be found to exist.
        
    See the FGExternalForce documentation for details on how forces are
    actually calculated.
  */

/*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CLASS DECLARATION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%*/

class FGExternalReactions : public FGModel
{
public:
  /** Constructor.
      @param fdmex pointer to the main executive class.
  */
  FGExternalReactions(FGFDMExec* fdmex);
  
  /** Destructor.
      Within the destructor the Forces and interface_properties vectors are
      cleared out and the items pointed to are deleted.
  */
  ~FGExternalReactions(void);

  bool InitModel(void);

  /** Sum all the constituent forces for this cycle.
      @return true always.
  */
  bool Run(void);
  
  /** Loads the external forces from the XML configuration file.
      If the external_reactions section is encountered in the vehicle configuration
      file, this Load() method is called. All external forces will be parsed, and 
      a FGExternalForce object will be instantiated for each force definition.
      @param el a pointer to the XML element holding the external reactions definition.
  */
  bool Load(Element* el);

  /** Retrieves the total forces defined in the external reactions.
      @return the total force in pounds.
  */
  FGColumnVector3 GetForces(void) {return vTotalForces;}

  /** Retrieves the total moment resulting from the forces defined in the external reactions.
      @return the total moment in foot-pounds.
  */
  FGColumnVector3 GetMoments(void) {return vTotalMoments;}

private:

  std::vector <FGExternalForce*> Forces;
  unsigned int numForces;
  FGColumnVector3 vTotalForces;
  FGColumnVector3 vTotalMoments;

  bool NoneDefined;

  void Debug(int from);
};
}
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#endif

