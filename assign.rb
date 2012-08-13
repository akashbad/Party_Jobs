module Assign
	def assign(party_name)
		#Get all of the brothers and clean out the absentees
		bros = Brother.all.delete_if {|brother| brother.social_score.absent}
		#Go through each brother and make sure his prefs are sorted accordingly
		bros.each do |brother|
			brother.party_prefs.sort!{|pref| pref.rank}
		end
		#Get the necessary jobs as decided by the type of party
		needed_jobs = PartyType.find(Party.find(party_name).type_name.party_jobs)
		#Find the job corresponding to none and expand its capacity to the correct amount
		needed_jobs[needed_jobs.index {|job| job.name == "none"}].capacity = bros.length - needed_jobs.length
		#Create the hash we will use to assign and look up jobs
		jobs = Hash.new
		#Instantiate every job to an empty array
		needed_jobs.each {|job| jobs[job] = []}
		
		#The meat of the algorithm, loop twice too see if any bros need to be assigned
		while bros.any?
			#The first loop goes through the list and temp assigns bros
			while bros.any?
				#Use the list as a queue
				current = bros.shift
				#Bros are pulled off in FIFO order and pushed into the suitors array for their next desired job
				jobs[current.party_prefs.shift.party_job].push(current)
			end
			#After all brothers have been assigned we go and make more permanent assignments
			jobs.each do |job, suitors|
				#Check if a job is oversubscribed
				if suitors.length > job.capacity
					#Now we sort the list of suitors by social_score
					suitors.sort {|brother| brother.social_score.value}.reverse
					#Pop off the extras and add them back to the master bros list
					bros.push(suitors.pop(job.capacity-suitors.length))
				end
			end
		#repeat until everyone has a permanent assignment
		end

		#Get the party so we can use it to create assignments
		party = Party.find(party_name)
		#Now we have to create the actual assignments
		jobs.each do |job, husbands|
			husbands.each {|brother| brother.party_assignments.create(name: job.name, :time job.time, party_id: party.id)}
		end

	end

end
