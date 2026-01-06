
func void b_setattributestochapter(var C_NPC slf,var int kapitel)
{
	if(kapitel == 0)
	{
		slf.level = 3;
	}
	else {
		slf.level = kapitel * 5;
	};
	slf.attribute[ATR_STRENGTH] = 10 + kapitel * 15;
	slf.attribute[ATR_DEXTERITY] = 10;
	slf.attribute[ATR_MANA_MAX] = 100;
	slf.attribute[ATR_MANA] = slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_HITPOINTS_MAX] = 40 + slf.level * HP_PER_LEVEL;
	slf.attribute[ATR_HITPOINTS] = slf.attribute[ATR_HITPOINTS_MAX];
	slf.exp = slf.level * slf.level * slf.level * XP_PER_VICTORY;
	slf.exp_next = (slf.level + 1) * (slf.level + 1) * (slf.level + 1) * XP_PER_VICTORY;
};

