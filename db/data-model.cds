namespace com.enel.crossSolution; 
using { managed, localized, cuid } from '@sap/cds/common'; 


entity Codelists: managed{
	key FIELD_NAME : String(15);
	key langu : String(4);
	key valore: String(15);
	key group_p : String(4);
	text : String(1000);
	key campo_up : String(15); 
	key valore_up : String(15);
	active: String(1);
	};
	
entity par_command		    : managed{
	key comando: String(20);
	key state  : String(4);
	key group_p : String(4);
	scope:    String(30);
	active: String(1); 
	to_state: String(4);
	workflow_definition: String(64);
	scope_att: String (1);
	}; 
	
entity roles_atrributes		: managed{
	key user				:String(50);
	key attribute_name      :String(30);
    key attribute_value		:String(8);
};
