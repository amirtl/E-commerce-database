TableName = input('Enter Table name ')
FileName = TableName+'.csv'
File = TableName+'.txt'

file = open(FileName, "r")
file2 = open(File, "w+")

for values in file:
    cnt = 0
    Command = 'INSERT INTO ' + TableName + '\nValues('
    for x in values.split(','):
        if cnt :
            Command += ', ' 
        Number = True
        for t in x :
            if (t<'0' or t>'9') and (t != '\n'):
                Number = False
        if cnt == 7 :
            Number = False
        if len(x) == 0 or x[0] == "\n":
            Command += "NULL"
        else :
            if(Number):
                Command += x
            else:
                if(x[len(x)-1] == '\n'):
                    x = x[:len(x)-1]
                Command += "\'"
                Command += x
                Command += "\'"
        cnt += 1
    if Command[len(Command)-1] == '\n':
        Command = Command[:len(Command)-1]
    print(Command + ')\n')
    file2.write(Command + ');\n') 
    
       
file.close()
file2.close()
