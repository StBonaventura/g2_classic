
instance PAL_201_INGMAR(NPC_DEFAULT)
{
	name[0] = "Èםדלאנ";
	guild = GIL_PAL;
	id = 201;
	voice = 6;
	flags = 0;
	npctype = NPCTYPE_MAIN;
	b_setattributestochapter(self,5);
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,ITMW_1H_BLESSED_02);
	b_createambientinv(self);
	b_setnpcvisual(self,MALE,"Hum_Head_Fighter",FACE_N_TOUGHBART01,BODYTEX_PLAYER_G2,itar_pal_h);
	Mdl_SetModelFatness(self,1.5);
	Mdl_ApplyOverlayMds(self,"Humans_Militia.mds");
	b_givenpctalents(self);
	b_setfightskills(self,80);
	daily_routine = rtn_start_201;
};


func void rtn_start_201()
{
	ta_stand_wp(8,0,23,0,"NW_CITY_CITYHALL_WARROOM_02");
	ta_stand_wp(23,0,8,0,"NW_CITY_CITYHALL_WARROOM_02");
};

