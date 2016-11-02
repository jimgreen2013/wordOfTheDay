#!/usr/bin/env python3

def printStat(date, count):
    i = 0;
    if len(date) != len(count):
        print('date length', len(date), 'not equals count length', len(count))
        return
    while i < len(date):
        print(date[i], count[i])
        i = i + 1


print('词汇统计')
try:
    f = open('./word_list_2016.txt', 'r')
    date = []
    count = []
    temp = -1
    for line in f:
        if line.startswith('#'):
            date.append(line[2:len(line) - 1])
            if temp >= 0:
                count.append(temp)
                temp = 0
        elif line.startswith('*'):
            temp = temp + 1
    count.append(temp)
    printStat(date, count)
except IOError as e:
    print(e)
finally :
    if f:
        f.close()
