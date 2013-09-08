import Data.List

a=[1..999]
b=[1..100]

c=[1,2,3,4,5,6,7,8,9]

itoa 0 = []
itoa i = (itoa (i `div` 10)) ++ [i `mod` 10]

weird l = foldr(\x y -> x*10^x+y) 0 l 
check l = foldr(\x y -> x*10^x+y) 0 l == 9876543210

d=[a*b|a<-[10..99],b<-[100..999],check (itoa a ++ itoa b ++ itoa (a*b)) && a*b<10000 ]
e=[a*b|a<-[1..9],b<-[1000..9999],check (itoa a ++ itoa b ++ itoa (a*b)) && a*b<10000 ]
f=nub (d++e)

main = sum f
