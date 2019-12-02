#TUNIO 2019
#Wordlist fix

#%% get file
f = open('wordlist2.txt','r')

out = f.readlines()

#%% smash lines together
allword = ''

for line in out:
    print(line[-5:])
    allword += line
    
#%% fix

allf = allword.replace('\n',' ').replace('  ', ' ')

allsplit= allf.split(' ')
del allsplit[-1]

#%% OUT

with open('words_final.txt', 'w') as f:
    for item in allsplit:
        f.write("%s\n" % item)