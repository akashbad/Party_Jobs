=begin
TODO in the assigner

acquire all brothers: names, prefs, soc_points
	All brothers should automatically pref no-job first
	Dont pull brothers with social exemption or absent

Put brothers in a list, shuffle the list
	
Generate a list of jobs
	Look at the party types, get the list of needed jobs
	Look at the number of brothers and calculate the total
	number of jobs, then add the appropriate number of blank
	spots for the highest social_points
	Create a nested hash for party jobs , party_job maps to a hash
		of times which maps to empty arrays

Start assignments
	Pop through brothers, pop their next pref, use its time and party_job
		attributes to look up the array in the hash, add this brother to
		that array
	Block through through the hashes: sort each array and then keep only
		the capacity in the array, put the rest of the brothers back into
		the master brother list
	Repeat until the brother list remains empty

Now block through the hashes to create party_job assignment objects



Algorithm skeleton code:

	brothers Brother.all


=end
