using { com.enel.crossSolution } from '../db/data-model'; 

service NearMiss
   	@(requires: ['authenticated-user','system-user']) {

  entity Codelists @(
    	Capabilities: {
    		InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: false}
    	}
    )

    @(restrict: [  
		{ grant: ['READ'], to: 'NearMissRead_sc' } ,
		{ grant: ['WRITE'], to: 'NearMissWrite_sc' } 
		])
	
	 as projection on crossSolution.Codelists; 
	 
	entity PAR_COMMAND @(
    	Capabilities: {
    		InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: false}
    	}
    )

    @(restrict: [  
		{ grant: ['READ'], to: 'NearMissRead_sc' } ,
		{ grant: ['WRITE'], to: 'NearMissWrite_sc' } 
		])
	
	 as projection on crossSolution.par_command;
	 
	entity ROLE_ATTRIBUTES @(
    	Capabilities: {
    		InsertRestrictions: {Insertable: true},
			UpdateRestrictions: {Updatable: true},
			DeleteRestrictions: {Deletable: false}
    	}
    )

    @(restrict: [  
		{ grant: ['READ'], to: 'NearMissRead_sc' } ,
		{ grant: ['WRITE'], to: 'NearMissWrite_sc' } 
		])
	
	 as projection on crossSolution.roles_atrributes;

}
