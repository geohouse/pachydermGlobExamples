import os

print("Running the Python glob file listing script for fruits and vegetables.")

# Neither setting 'a' or 'w' makes a difference in the final output file
# (the output contains 3 datum calls for either), which seems odd to me 
# that 'w' doesn't overwrite the existing output file and therefore only leave 
# the output for the most recently processed datum.
with open("/pfs/out/log.txt", "a") as outFile:
	outFile.write("Processing a new datum.\n")
	for dirpath, dirs, files in os.walk("/pfs/fruits"):
		for file in files:
			outFile.write(os.path.join(dirpath, file) + "\n")
	for dirpath, dirs, files in os.walk("/pfs/vegetables"):
		for file in files:
			outFile.write(os.path.join(dirpath, file) + "\n")
