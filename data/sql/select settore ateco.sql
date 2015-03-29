-- SELECT Settore Ateco

SELECT 
	* 
FROM 
	public.sett_ateco_l1_ipersettore "SE_L1" 
	INNER JOIN  public.sett_ateco_l2_macrosettore "SE_L2" on "SE_L1".pk_sett_ateco_l1 = "SE_L2".fk_sett_ateco_l1
	INNER JOIN  public.sett_ateco_l3_settore "SE_L3" ON "SE_L2".pk_sett_ateco_l2 = "SE_L3".fk_sett_ateco_l2
	INNER JOIN public.sett_ateco_l4_microsettore "SE_L4" ON "SE_L3".pk_sett_ateco_l3 = "SE_L4".fk_sett_ateco_l3
WHERE
	"SE_L4".pk_sett_ateco_l4 = 201010102;