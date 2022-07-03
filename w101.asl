state("WizardGraphicalClient"){
    sbyte loading : 0x030BD838, 0x8, 0x1C0, 0x5E8, 0x170, 0x8
}

startup {
    settings.Add("removeLoads", false, "Enable Load Time Removal");
}

isLoading
{   
    if (settings["removeLoads"] && current.loading == 1){
        return true;
    }
	else{
		return false;
	}
}
