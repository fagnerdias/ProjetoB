/* MateriaSet
 * Author: fagnermorais
 * Creation date: 24/09/2018
 */
MACHINE  MateriaSet
SETS MATERIA
VARIABLES preRequisito
INVARIANT preRequisito : MATERIA <-> MATERIA
INITIALISATION  preRequisito := {}
OPERATIONS
    addPreRequisito(mm, pp)=
        PRE mm:MATERIA & pp:MATERIA & pp /: ran({mm} <| preRequisito)
        THEN preRequisito := preRequisito \/ {mm |-> pp}
        END;
        
        
    removePreRequisito(mm, pp)=
        PRE mm:MATERIA & pp:MATERIA & pp : ran({mm} <| preRequisito)
        THEN preRequisito := preRequisito - {mm |-> pp}
        END   
    
END
