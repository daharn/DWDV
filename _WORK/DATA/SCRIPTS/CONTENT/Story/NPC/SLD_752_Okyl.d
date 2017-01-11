
instance SLD_752_Okyl(Npc_Default)
{
	name[0] = "Okyl";
	npcType = npctype_main;
	guild = GIL_SLD;
	level = 18;
	voice = 11;
	id = 752;
	flags = NPC_FLAG_IMMORTAL;
	attribute[ATR_STRENGTH] = 100;
	attribute[ATR_DEXTERITY] = 80;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 286;
	attribute[ATR_HITPOINTS] = 286;
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	Mdl_SetVisualBody(self,"hum_body_Naked0",0,1,"Hum_Head_Pony",45,1,sld_armor_h);
	B_Scale(self);
	Mdl_SetModelFatness(self,0);
	fight_tactic = FAI_HUMAN_MASTER;
	aivar[AIV_IMPORTANT] = TRUE;
	senses = SENSE_SEE | SENSE_HEAR | SENSE_SMELL;
	Npc_SetTalentSkill(self,NPC_TALENT_1H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_2H,1);
	Npc_SetTalentSkill(self,NPC_TALENT_BOW,1);
	EquipItem(self,ItMw_2H_Axe_Heavy_02);
	EquipItem(self,ItRw_Bow_Long_01);
	CreateInvItems(self,ItAmArrow,20);
	CreateInvItems(self,ItFoRice,7);
	CreateInvItems(self,ItFoLoaf,6);
	CreateInvItems(self,ItFoMutton,4);
	CreateInvItems(self,ItMiNugget,18);
	CreateInvItems(self,ItFoBooze,4);
	CreateInvItems(self,ItLsTorch,5);
	CreateInvItems(self,ItFo_Potion_Health_02,9);
	CreateInvItem(self,ItMi_Stuff_Barbknife_01);
	CreateInvItem(self,ItMi_Stuff_Amphore_01);
	CreateInvItem(self,ItMi_Stuff_OldCoin_02);
	daily_routine = Rtn_FMCstart_752;
};


func void Rtn_FMCstart_752()
{
	TA_GuardPalisade(1,0,13,0,"FMC_PATH07");
	TA_GuardPalisade(13,0,1,0,"FMC_PATH07");
};

