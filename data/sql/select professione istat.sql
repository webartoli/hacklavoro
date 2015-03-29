-- SELECT Professione Istat

SELECT 
	*
FROM 
	public.prof_istat_l4_categorie "L4" 
	INNER JOIN public.prof_istat_l3_classi "L3"  ON "L3".pk_prof_istat_l3 = "L4".fk_prof_istat_l3 
	INNER JOIN public.prof_istat_l2_gruppi "L2" ON "L2".pk_prof_istat_l2 = "L3".fk_prof_istat_l2 
	INNER JOIN public.prof_istat_l1_grandi_gruppi "L1" ON "L1".pk_prof_istat_l1 = "L2".fk_prof_istat_l1
WHERE 
	"L4".pk_prof_istat_l4 = 1222;