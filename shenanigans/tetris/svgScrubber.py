
#!/usr/local/bin/python

import os, re, shutil
re.DOTALL

for filename in os.listdir('filesToScrub'):
	print filename
	match = re.search("\.svg", filename)
	if(match):
		print filename
		f = open('filesToScrub/' + filename, 'r')
		fileS = f.read()
		svgs2 = re.split('</svg>.*?<svg xmlns=', fileS, flags=re.DOTALL)
		print len(svgs2)
		n = 0 
		for i in svgs2:
			i = '<svg xmlns=' + i + '</svg>'
			writeFile = open('svgs/'+filename+str(n)+'.svg','w+')
			writeFile.write(i)
			n+=1
		shutil.move('filesToScrub/'+filename,'scrubbed/')


for 