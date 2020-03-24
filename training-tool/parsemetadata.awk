# Copyright (C) 2020 Mohd Kholid Yaacob (http://mrharmonies.blogspot.com)

# This source is free software; you can redistribute it and/or modify it under the terms 
# of the GNU General Public License as published by the Free Software Foundation; either 
# version 2 of the License, or (at your option) any later version.

# This code is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
# See the GNU General Public License for more details.

# A copy of the GNU General Public License is available on the World Wide Web 
# at http://www.gnu.org/copyleft/gpl.html. You can also obtain it by writing to the Free 
# Software Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston, MA 02110-1335, USA.

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
	
	# look for filename ended with jpeg, jpg and png	
	for(i=1;i<=NF;i++) if($i~/(jpeg|jpg|png)$/) { file=$i; break; }; 

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
 
