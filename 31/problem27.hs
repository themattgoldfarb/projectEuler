coins = [200,100,50,20,10,5,2,1]
total = 200


sums counts = sum(map (\x->fst x*snd x)  (zip counts coins))

cr value (counts) =[0..(total-sums counts) /value] 

combos = [[a,b,c,d,e,f,g,h] | a<-cr 200 [], b<-cr 100 [a], c<-cr 50 [a,b], d<-cr 20 [a,b,c], e<-cr 10 [a,b,c,d], f<-cr 5 [a,b,c,d,e], g<-cr 2 [a,b,c,d,e,f], h<-cr 1 [a,b,c,d,e,f,g], sums [a,b,c,d,e,f,g,h]==total]

s = sum (map (\x->1) combos)

main=print s
