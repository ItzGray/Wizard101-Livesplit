state("WizardGraphicalClient"){
    sbyte loading : 0x030BD838, 0x8, 0x1C0, 0x5E8, 0x170, 0x8
}

isLoading
{   
    if (current.loading == 1){
        return true;
    }
	else{
		return false;
	}
}
