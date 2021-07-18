# Get TODO

from datetime import datetime
 
target = open('gabor_cda.sce', 'r')
target_lines = target.readlines()
todo_string = "### TODO"

todo_list = []
line_count = -1

for line in target_lines:
	line_count += 1
	if todo_string in line:
		line_new = "Line " + str(line_count) + line
		todo_list.append(line_new)

# Write the todo file

todo_file = open('TODO.txt','w')

# Write header

now = datetime.now()
dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

header = "TODO file: Updated " + dt_string

todo_file.write(header + "\n\n\n")

for line in todo_list:
	todo_file.write(line)

todo_file.close()
