
func void B_Story_UrizielLoaded()
{
	B_LogEntry(CH5_Uriziel,"Es ist vollbracht. URIZIEL scheint seine alten Kr�fte wiedergewonnen zu haben. Saturas und seine Wassermagier sind jetzt stinksauer und ich sollte ihnen besser nicht mehr �ber den Weg laufen. Doch das ist jetzt unwichtig, denn der Schl�fer wartet auf mich!");
	if(Npc_GetTrueGuild(hero) != GIL_KDW)
	{
		Log_SetTopicStatus(CH5_Uriziel,LOG_SUCCESS);
	}
	else
	{
		B_LogEntry(CH5_Uriziel,"Xardas erw�hnte bei meinem letzten Besuch, da� es einen Weg g�be, wie ich die Kr�fte von URIZIEL auch als Magier effektiv nutzen k�nne, doch er wollte vorher das aufgeladenen Schwert begutachten. Ich sollte ihn aufsuchen.");
	};
	B_GiveXP(XP_LoadedUriziel);
	B_SetPermAttitude(Kdw_600_Saturas,ATT_HOSTILE);
	B_SetPermAttitude(Kdw_601_Myxir,ATT_HOSTILE);
	B_SetPermAttitude(Kdw_602_Merdarion,ATT_HOSTILE);
	B_SetPermAttitude(Kdw_603_Nefarius,ATT_HOSTILE);
	B_SetPermAttitude(KDW_604_Cronos,ATT_HOSTILE);
	B_SetPermAttitude(KDW_605_Riordian,ATT_HOSTILE);
	B_SetNpcType(Kdw_600_Saturas,npctype_main);
	B_SetNpcType(Kdw_601_Myxir,npctype_main);
	B_SetNpcType(Kdw_602_Merdarion,npctype_main);
	B_SetNpcType(Kdw_603_Nefarius,npctype_main);
	B_SetNpcType(KDW_604_Cronos,npctype_main);
	B_SetNpcType(KDW_605_Riordian,npctype_main);
};

