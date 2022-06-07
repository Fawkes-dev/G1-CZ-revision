func int B_CompareNpcinstance (var C_NPC first, var C_NPC second)
{
	PrintDebugNpc( PD_ZS_FRAME, "B_CompareNpcInstance");

	var int first_id;
	var int second_id;
	first_id = Hlp_GetInstanceID ( first);
	second_id = Hlp_GetInstanceID ( second);
	if ( first_id == second_id )
	{
		PrintDebugNpc( PD_ZS_CHECK, "B_CompareNpcinstance True");
		return 1;
	}
	else
	{
		PrintDebugNpc( PD_ZS_CHECK, "B_CompareNpcinstance False");
		return 0;
	};
};
