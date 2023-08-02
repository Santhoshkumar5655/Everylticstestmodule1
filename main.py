#question2

list = [10,-20,30,40,-50,60,12,-12,11,1,90,-20,-10,-5,-4]
positivenum = []
negativenum = []
for x in list:
    #checking whether it is postive or not
    if x>0:
        positivenum.append(x)
    else:
        negativenum.append(x)
#print(positivenum,negativenum)
sumofpositive = 0
sumofnegative = 0
for l in positivenum:
    if l<40:
        sumofpositive = sumofpositive + l
for k in negativenum:
    if k<40:
        sumofnegative = sumofnegative + k
print("The sum of positive elements in the list below 40:", sumofpositive)        
print("The sum of negative elements in the list below is 40:", sumofnegative)

#question1
import pandas as pd
dct = [{'2022-03-31': {'A': 12323, 'B': 123123}},{'2021-03-31': {'A': 12, 'B': 123}}]
date=[]
A=[]
B=[]
for i in range(len(dct)):
  c=dct[i]
  for i in c:
    date.append(i)
    A.append(c[i]['A'])
    B.append(c[i]['B'])
df=pd.DataFrame({'Date': date, 'A': A,'B':B})
print(df)
