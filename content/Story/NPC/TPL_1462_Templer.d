instance TPL_1462_Templer(Npc_Default)
{
	//-------- primary data --------
	name = NAME_MadTemplar2;
	npctype = NpcType_Guard;
	guild = GIL_GUR;
	level = 100;

	voice = 8;
	id = 1462;

	//-------- abilities --------
	attribute[ATR_STRENGTH] = 70;
	attribute[ATR_DEXTERITY] = 65;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;

	//------ Protection -------
	protection [PROT_BLUNT] = 1000;
	protection [PROT_EDGE] = 1000;
	protection [PROT_POINT] = 1000;
	protection [PROT_FIRE] = 80;
	protection [PROT_FLY] = 80;
	protection [PROT_MAGIC] = 80;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual(self, "HUMANS.MDS");
	Mdl_ApplyOverlayMDS(self, "Humans_Mage.mds");
	//			body mesh ,bdytex,skin,head mesh ,headtex,teethtex,ruestung
	Mdl_SetVisualBody(self, "hum_body_Naked0", 1, 1, "Hum_Head_Bald", 117, 2, TPL_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self, -1);

	fight_tactic = FAI_HUMAN_STRONG;

	//-------- Talente --------

	Npc_SetTalentSkill(self, NPC_TALENT_2H, 1);

	//-------- inventory --------

	CreateInvItem(self, ItMw_2H_Sword_Light_02);
	CreateInvItem(self, ItFoSoup);
	CreateInvItem(self, ItMiJoint_1);
	CreateInvItem(self, ItFo_Potion_Health_02);

	//-------------Daily Routine-------------
	daily_routine = Rtn_OT_1462;
};

func void Rtn_start_1462()
{
	TA_HostileGuard(09, 00, 21, 00, "TPL_408");
	TA_HostileGuard(21, 00, 09, 00, "TPL_408");
};

func void Rtn_OT_1462()
{
	TA_HostileGuard(09, 00, 21, 00, "TPL_278");
	TA_HostileGuard(21, 00, 09, 00, "TPL_278");
};
