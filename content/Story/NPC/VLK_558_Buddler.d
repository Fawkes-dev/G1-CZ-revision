instance VLK_558_Buddler (Npc_Default)
{
	//-------- primary data --------

	name = Name_Buddler;
	npctype = npctype_mine_ambient;
	guild = GIL_VLK;
	level = 3;

	voice = 2;
	id = 558;

	//-------- abilities --------

	attribute[ATR_STRENGTH] = 15;
	attribute[ATR_STRENGTH] = 10;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	attribute[ATR_HITPOINTS_MAX] = 76;
	attribute[ATR_HITPOINTS] = 76;

	//-------- visuals --------
	// 				animations
	Mdl_SetVisual(self,"HUMANS.MDS");
	Mdl_ApplyOverlayMds(self,"Humans_Tired.mds");
	//				body mesh, head mesh, hairmesh, face-tex, hair-tex, skin
	Mdl_SetVisualBody(self,"hum_body_Naked0",2,1,"Hum_Head_Thief", 73,  4, VLK_ARMOR_M);

	B_Scale(self);
	Mdl_SetModelFatness(self,0);

	fight_tactic = FAI_HUMAN_COWARD;

	//-------- Talents --------

	//-------- inventory --------

	EquipItem(self,ItMw_1h_Nailmace_01);
	CreateInvItem(self,ItMwPickaxe);
	CreateInvItem(self,ItFoBeer);

	//-------------Daily Routine-------------
	daily_routine = Rtn_start_558;

};

func void Rtn_start_558()
{
	TA_PickOre (00,00,12,00,"OM_PICKORE_02");
	TA_PickOre (12,00,24,00,"OM_PICKORE_02");
};

