p "Subsets!"

# Function is Recursive
# Takes in three arguments:
# data: the array holding a given set
# subset: an array containing the subsets
# i: the current index
# No return value, only prints to std output.
def subsets data, subset=[], i=0

	# When i is out of range, we have found a subset.
	if i == data.length
		p subset

	else
		# For the nil subsets 
		subset[i] = nil

		subsets data, subset, i + 1

		# Subsets containing values
		subset[i] = data[i]

		subsets data, subset, i + 1
	end	

end	