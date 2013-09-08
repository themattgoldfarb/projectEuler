check a b c =  c/=11 && a*c<100 && b*c<100 && ((a==(a*c `div` 10) && b==(b*c `mod` 10) && ( a*c `mod` 10 == b*c `div` 10   ) )   ||( b==(b*c `div` 10)&& a==(a*c `mod` 10) && ( b*c `mod` 10 == a*c `div` 10 ) )) 
a=[[a,b,a*c,b*c,c]|a<-[1..9],b<-[a..49],c<-[2..49],check a b c]





