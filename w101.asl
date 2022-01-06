state("WizardGraphicalClient"){
    sbyte loading : 0x02F143D8, 0x258, 0x100, 0x10, 0x10, 0x8;
    sbyte loading2 : 0x2FAC348, 0x8, 0x1C0, 0x278, 0x170, 0x8;
    sbyte loading3 : 0x02FD2160, 0x560, 0x18, 0x68, 0x88, 0x10, 0x38, 0x8
}

startup {
    settings.Add("removeLoads", false, "Enable Load Time Removal");
}

isLoading
{   
    if (settings["removeLoads"] && current.loading == 1 && current.loading2 == 1){
        return true;
    }
    else{
        return false;
    }
}
