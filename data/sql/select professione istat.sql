-- SELECT Professione Istat

SELECT 
	*
FROM 
	public.prof_istat_l4_categorie "PR_L4" 
	INNER JOIN public.prof_istat_l3_classi "PR_L3"  ON "PR_L3".pk_prof_istat_l3 = "PR_L4".fk_prof_istat_l3 
	INNER JOIN public.prof_istat_l2_gruppi "PR_L2" ON "PR_L2".pk_prof_istat_l2 = "PR_L3".fk_prof_istat_l2 
	INNER JOIN public.prof_istat_l1_grandi_gruppi "PR_L1" ON "PR_L1".pk_prof_istat_l1 = "PR_L2".fk_prof_istat_l1
WHERE 
	"PR_L4".pk_prof_istat_l4 = 1222;