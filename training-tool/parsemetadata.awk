BEGIN {
	# file is comma separated
	FS=",";
	
	# set default folder to "training-data"
	if (trainingfolder=="") trainingfolder="training-data";
	
	# set counter
	num=0;
}

# search for anterior posterior cxr
$7~/(AP|PA)/ { 
	# declare filename variable
	file="";
	
	# look for filename ended with jpef, jpg and png	
	for(i=1;i<=NF;i++) if($i~/(jpeg|jpg|png)$/) file=$i; 

	# prepare command for sorting file into folders
	command="cp -rf images/" file " \"" trainingfolder "/" $5"\"";
	
	# execute command
	system("mkdir -p \"" trainingfolder "/" $5 "\"" );
	system (command); # copy it to training-data folder
	
	# some feedback for user
	print ("handling: " file); 
	
	# update counter
	num=num+1;
}

END { 
	# print summary
	print "Jobs finished. Total of " num " images handled. You can now start training using \"" trainingfolder "\" folder." 
} 
 
