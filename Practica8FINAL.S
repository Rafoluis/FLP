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

Convex:n
|x val|
x:=''.
val:=n.
(val>0)
ifTrue: [ [ val>0 ] 
	whileTrue: [ ((val%2)=0) 
		ifTrue: [x:='0',x.]
		ifFalse: [x:='1',x.].
		val:=val//2
	].
]
ifFalse: [ x:='0'].
^x.


"A)"
Ejer2_1: n
|val_1 val_2 x res aux val_f|
val_1:=0.
val_2:=1.
res:=1.
x:=0.

[val_1<n] whileTrue: [ 
	((self primos: r)=true) ifTrue: [ 
		x:=x+1.
		val_1:=val_1+1. 
		aux := val_2 asString.
		aux := aux reverse.
		val_f:= aux asNumber.
		((self primos: val_f)=true) ifTrue:[Transcript show: val_2  asString , ' es un numero primo y su espejo es', val_f asString.].
	].

	val_2:=val_2+1
]

"B)"
Principal: num
|val_1 val_2 x res cont aux|
val_1:=0.
val_2:=1.
res:=1.
x:=0.
[val_1<num] whileTrue: [ 
	res:=1.
	((self primos: val_2)=true) ifTrue: [ 
		x:=x+1.
		val_1:=val_1+1. 
		cont:=val_2.
		aux:=10.
		[cont>(aux//10)]whileTrue:[
			res:=((cont%aux))-(cont%(aux//10)).
			aux=(aux*10). 
		].
		(cont=0)
			ifFalse:[res:=cont*res.].
		(res=x)
			ifTrue:[ Transcript show: 'El producto ',res asString, 'del numero primo', val_2 asString, 'tambien es primo'.].
		].
		val_2:=val_2+1.
]

"C)"
Ejer2_3
|val_1 val_2 x1 x2|
val_1 :=0.
val_2:=1.

[val_1 <10] whileTrue: [ 
	((self primos: val_2)=true) ifTrue: [ val_1 :=val_1 +1. x1:=self Convex:val_2.		x2 := x1 reverse.
		(x1=x2 )
		ifTrue: [ Transcript show: val_2 asString , ' es un numero primo y su valor en binario es :'. x1:=self Convex:val_2,'y su espejo es'. x1.
		].
	].
	val_2:=val_2+1
]



