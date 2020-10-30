x1:x1 x2:x2 y1:y1 y2:y2 r1:r1 r2:r2
"Pregunta 1" 
|dist radsum| 
dist := ((x1 - x2 )*(x1 -x2))+((y1 -y2)*(y1 - y2)).
radsum := (r1+r2)*(r1 +r2).
(dist<radsum)
	ifTrue: [Transcript show: 'No se interceptan'.]
	ifFalse: [dist = radsum ifTrue: [Transcript show: 'Se interceptan'.] ifFalse: [Transcript show: 'Se tocan'.].].



|obj result|
obj:=Classprac8   new.
result := obj x1:-10 x2:8 y1:14 y2:-24 r1:30 r2:10



"Pregunta 2"
primos:n
|bull|
bull:=true.
(n=0)
ifTrue: [ bull:=false. ]
ifFalse: [(n=1) ifTrue:[bull:=false.].].
(bull=true) 
ifTrue: [ 2 to: (n/2) do: [:x | ((n%x)=0) ifTrue: [ bull:=false ]]].
^bull.

sheldon: n
|x r pos res aux|
x:=0.
r:=1.
res:=1.
pos:=0.
[x<n] whileTrue: [ 
	res:=1.
	((self verif: r)=true) ifTrue: [ 
		pos:=pos+1.
		x:=x+1. 
		aux:=r.
		[aux>=10]whileTrue:[
			res:=res*(aux%10).
			aux:=aux//10.
		].
		(aux=0)ifFalse: [res:=aux*res.].
		
		(res=pos)ifTrue:[
			Transcript show: r asString , '<-primo'.
			Transcript show: res asString , '<-producto |'.
		].
	].
	r:=r+1
]