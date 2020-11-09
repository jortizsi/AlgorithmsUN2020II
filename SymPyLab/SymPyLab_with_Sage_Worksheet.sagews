︠caf5eac8-89d9-41ac-8acc-f3019595e56a︠
%md
# -------------------------------------------------------------------------------------------------------
# Laboratorio 5 SymPy

Grupo 31
* Javier Alejandro Ortiz Silva.
* Gustavo Alberto Puentes Romero
* Cristian Daniel Ramirez Marin

# -------------------------------------------------------------------------------------------------------
︡41f17c13-9e18-4f52-a512-67ce154d1b0f︡{"done":true,"md":"# -------------------------------------------------------------------------------------------------------\n# Laboratorio 5 SymPy\n\nGrupo 31\n* Javier Alejandro Ortiz Silva.\n* Gustavo Alberto Puentes Romero\n* Cristian Daniel Ramirez Marin\n\n# -------------------------------------------------------------------------------------------------------"}
︠21dec60b-6377-40b7-beab-65f391c0f617︠

%md
# Solucion Laboratorio 5 punto 2
2.Create a Sage Math notebook in CoCalc to replicate 1.

︡d7d9b1f6-880d-4270-9293-ce242aecb08b︡{"done":true,"md":"# Solucion Laboratorio 5 punto 2\n2.Create a Sage Math notebook in CoCalc to replicate 1."}
︠934920b6-d59f-4861-afd2-8c55e29a3353︠
%md
-------------------------------------------------------------------------------------------------------------------------------------------------------------
# Parte 1: Polinomios en SymPy

Ingresamos el polinomio (x-1)(x-2)(x-3)(x-4)(x-5)(x-6)(x-7)(x-8)(x-9)(x-10) en WolframAlpha

<img src="https://raw.githubusercontent.com/jortizsi/SymPyLab/main/1ero.jpg"/>
︡7cd940f5-ff4c-46f5-92d1-83c8091a5f3c︡{"done":true,"md":"-------------------------------------------------------------------------------------------------------------------------------------------------------------\n# Parte 1: Polinomios en SymPy\n\nIngresamos el polinomio (x-1)(x-2)(x-3)(x-4)(x-5)(x-6)(x-7)(x-8)(x-9)(x-10) en WolframAlpha\n\n<img src=\"https://raw.githubusercontent.com/jortizsi/SymPyLab/main/1ero.jpg\"/>"}
︠8b322914-079a-418f-9b87-bba18256ff46︠

︡0fdef947-ba54-4c74-ad93-1c1389e7ce31︡
︠ddce40d7-7c49-4d03-acdc-d2716ae5b667︠

︡53d575b5-fca5-40af-a51e-f796c8bf6ccb︡
︠db53e90b-58f8-4dc1-883b-11a4ca47ef34︠
%md
Usando la fucion factor ingresamos la forma extendida del polinomio para que nos genere la forma completamente factorizada
︡ff15fa95-40e7-4089-ac98-19fd317e9584︡{"done":true,"md":"Usando la fucion factor ingresamos la forma extendida del polinomio para que nos genere la forma completamente factorizada"}
︠3f952b01-213c-42c7-a91b-7ce0c5d13ee5s︠
%python3
from sympy import *

x = Symbol('x')
factor(x**10 - 55*x**9  + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5+ 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800 )
︡fb464615-c947-4391-b364-7a4a968bd3ac︡{"file":{"filename":"/tmp/tmpfy7y7jbz.png","show":true,"text":null,"uuid":"99893e90-8d8a-48a2-b8e2-d73d28411dc1"},"once":false}︡{"done":true}
︠9d86baa8-76a0-434a-9efb-1a9920830bf1︠
%md
Ahora usaremos la division de polinomios mediante la fucion div. Dividiremos el polinomio en su forma expandida por cada uno de sus terminos, excepto el ultimo, de la forma factorizada. El resultado sera el termino faltante (X-10). Tambien notese que con cada division el polinomio ve su grado reducido en 1.
︡6148a54d-4e22-4de5-bf93-676ad5118779︡{"done":true,"md":"Ahora usaremos la division de polinomios mediante la fucion div. Dividiremos el polinomio en su forma expandida por cada uno de sus terminos, excepto el ultimo, de la forma factorizada. El resultado sera el termino faltante (X-10). Tambien notese que con cada division el polinomio ve su grado reducido en 1."}
︠8717c388-a1d1-41e9-8aba-dfce711918b9s︠
%python3
from sympy import Symbol
from sympy import div

x = Symbol('x')
print("------------------------")
print("Division sintetica")
print("------------------------\n\n\n")



print("Polinomio en forma expandida grado 10:")
print("      x**10 - 55*x**9  + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5+ 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800\n\n\n")


print("division por (x - 1):")
p = x**10 - 55*x**9  + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5+ 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800 

p, r = div(p,  x-1)

print(p)
print(r)


print("\n\n\ndivision por (x - 2):")
p, r = div(p,  x-2)

print(p)
print(r)


print("\n\n\ndivision por (x - 3):")
p, r = div(p,  x-3)

print(p)
print(r)


print("\n\n\ndivision por (x - 4):")
p, r = div(p,  x-4)

print(p)
print(r)


print("\n\n\ndivision por (x - 5):")
p, r = div(p,  x-5)

print(p)
print(r)


print("\n\n\ndivision por (x - 6):")
p, r = div(p,  x-6)

print(p)
print(r)


print("\n\n\ndivision por (x - 7):")
p, r = div(p,  x-7)

print(p)
print(r)



print("\n\n\ndivision por (x - 8):")
p, r = div(p,  x-8)

print(p)
print(r)


print("\n\n\ndivision por (x - 9):")
p, r = div(p,  x-9)

print(p)
print(r)
︡4d16d860-5fba-4f72-bad0-725f2418b42d︡{"stdout":"------------------------\nDivision sintetica\n------------------------\n\n\n\nPolinomio en forma expandida grado 10:\n      x**10 - 55*x**9  + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5+ 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800\n\n\n\ndivision por (x - 1):\nx**9 - 54*x**8 + 1266*x**7 - 16884*x**6 + 140889*x**5 - 761166*x**4 + 2655764*x**3 - 5753736*x**2 + 6999840*x - 3628800\n0\n\n\n\ndivision por (x - 2):\nx**8 - 52*x**7 + 1162*x**6 - 14560*x**5 + 111769*x**4 - 537628*x**3 + 1580508*x**2 - 2592720*x + 1814400\n0\n\n\n\ndivision por (x - 3):\nx**7 - 49*x**6 + 1015*x**5 - 11515*x**4 + 77224*x**3 - 305956*x**2 + 662640*x - 604800\n0\n\n\n\ndivision por (x - 4):\nx**6 - 45*x**5 + 835*x**4 - 8175*x**3 + 44524*x**2 - 127860*x + 151200\n0\n\n\n\ndivision por (x - 5):\nx**5 - 40*x**4 + 635*x**3 - 5000*x**2 + 19524*x - 30240\n0\n\n\n\ndivision por (x - 6):\nx**4 - 34*x**3 + 431*x**2 - 2414*x + 5040\n0\n\n\n\ndivision por (x - 7):\nx**3 - 27*x**2 + 242*x - 720\n0\n\n\n\ndivision por (x - 8):\nx**2 - 19*x + 90\n0\n\n\n\ndivision por (x - 9):\nx - 10\n0\n"}︡{"done":true}
︠42ad61c9-859a-4f62-9da7-f932dbef38fb︠


%md
# -------------------------------------------------------------------------------------------------------

# Parte 2: Integrales en SymPy

## A. Integrales simples en una variable


︡76e1d523-0013-4a92-ae18-a02176048859︡{"done":true,"md":"# -------------------------------------------------------------------------------------------------------\n\n# Parte 2: Integrales en SymPy\n\n## A. Integrales simples en una variable"}
︠5cce7c86-f8b6-4ad5-85d8-e2d0fe283caf︠
%md

## Ejemplo 1

Integral de una funcion producto de polinomio, seno y exponencial.

$$\int_{-5}^5 x^2sin(x)e^x dx$$
︡63478bb0-bc9d-4125-bbc9-37a2e94fbd15︡{"done":true,"md":"\n## Ejemplo 1\n\nIntegral de una funcion producto de polinomio, seno y exponencial.\n\n$$\\int_{-5}^5 x^2sin(x)e^x dx$$"}
︠eb6301c2-a97d-455b-8aff-c57bbc96f4ae︠
%md
<img src="https://raw.githubusercontent.com/jortizsi/SymPyLab/main/Integral1.png"/>
︡5d7d6faa-92fb-4014-b72e-dbdf600e9a2a︡{"done":true,"md":"<img src=\"https://raw.githubusercontent.com/jortizsi/SymPyLab/main/Integral1.png\"/>"}
︠f3828ad7-ccca-407e-b891-be75e727d7f9︠
%md
## Solucion analitica usando el teorema fundamental del calculo
︡ef8e684e-1e64-4e91-8488-fdfe42e1538c︡{"done":true,"md":"## Solucion analitica usando el teorema fundamental del calculo"}
︠9da34050-a783-4e56-af36-6b950020c8a3s︠
%python3
import sympy
# we’ll save results using different methods in this data structure, called a dictionary
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(x**2*sympy.sin(x) * sympy.exp(x))
print("Antiderivada o integral indefinida\n      ",i,"\n\n\n")

print("Solucion analitica F(b) - F(a) donde F es la antiderivada, b limite superior y a limite inferior")

result["analytical"] = float(i.subs(x, 5) - i.subs(x, -5))

print("    ",result["analytical"])
︡b33f6c95-c5f3-45e4-ab3a-3963f39e12f5︡{"stdout":"Antiderivada o integral indefinida\n       x**2*exp(x)*sin(x)/2 - x**2*exp(x)*cos(x)/2 + x*exp(x)*cos(x) - exp(x)*sin(x)/2 - exp(x)*cos(x)/2 \n\n\n\nSolucion analitica F(b) - F(a) donde F es la antiderivada, b limite superior y a limite inferior\n     -2044.6405105725285\n"}︡{"done":true}
︠5e752dbb-fc86-4970-94fa-79418ca6d166︠
%md
## Estimacion por metodo de montecarlo
︡272e8196-c45c-4e7c-a5ef-8d6056ca321f︡{"done":true,"md":"## Estimacion por metodo de montecarlo"}
︠2178f954-3d5a-4f28-b85e-43118866d3d7s︠
%python3
import numpy
N = 100_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(-5, 5)
    accum += x**2*sympy.sin(x) * sympy.exp(x)
volume = 5- (-5)
result["MC"] = volume * accum / float(N)
print("Estimacion por metodo estandar de MonteCarlo: {}".format(result["MC"]))
︡74cb9bea-ca44-43bb-bfdb-61ff5ae46eab︡{"stdout":"Estimacion por metodo estandar de MonteCarlo: -2023.70542253138\n"}︡{"done":true}
︠9487da96-f06a-48ba-989c-0547b1b62130︠

%md
## Ejemplo 2

Integral de una funcion producto de polinomio y logaritmo.
$$\int_{1}^5-x^4log_{2}{(x)} dx$$ 
︡7f71a667-7013-4290-a652-618010d5c7e4︡{"done":true,"md":"## Ejemplo 2\n\nIntegral de una funcion producto de polinomio y logaritmo.\n$$\\int_{1}^5-x^4log_{2}{(x)} dx$$"}
︠a3fdfaaa-8090-4b72-aaff-601a5f5fd2b8︠

%md
<img src="https://raw.githubusercontent.com/jortizsi/SymPyLab/main/Integral2Log.png"/>
︡f5bc7789-c039-4f98-9798-a6a029e46106︡{"done":true,"md":"<img src=\"https://raw.githubusercontent.com/jortizsi/SymPyLab/main/Integral2Log.png\"/>"}
︠cc9722f4-8da2-4108-b44a-f3489a29b845︠

︡f4288326-3a08-41f5-9366-01e70c14736f︡
︠01f4ec22-5853-4799-8abc-8b90af5e2d2c︠
%md
## Solucion analitica usando el teorema fundamental del calculo
︡a3653be4-05f1-4d6f-bdc8-14e99976e4fc︡{"done":true,"md":"## Solucion analitica usando el teorema fundamental del calculo"}
︠8bac8936-be8e-492b-bea9-4378197873d4s︠

%python3
import sympy
# we’ll save results using different methods in this data structure, called a dictionary
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(-(x**4)*sympy.log(x,2))

print("Antiderivada o integral indefinida\n      ",i,"\n\n\n")

print("Solucion analitica F(b) - F(a) donde F es la antiderivada, b limite superior y a limite inferior")

result["analytical"] = float(i.subs(x, 5) - i.subs(x, 1))

print("    ",result["analytical"])



︡c01bca4f-ea05-4f4c-b5d7-5d60ec2ce445︡{"stdout":"Antiderivada o integral indefinida\n       -x**5*log(x)/(5*log(2)) + x**5/(25*log(2)) \n\n\n\nSolucion analitica F(b) - F(a) donde F es la antiderivada, b limite superior y a limite inferior\n     -1270.9258869951166\n"}︡{"done":true}
︠7465ed5e-e163-434c-aec8-898e4ade2891︠
%md
## Estimacion por metodo de montecarlo
︡0e468d05-371a-46f5-a743-ab5208ff44e1︡{"done":true,"md":"## Estimacion por metodo de montecarlo"}
︠0040ecb8-557f-4b05-b79a-8e24f17ab162s︠
%python3
import numpy
N = 100_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(1, 5)
    accum += -(x**4)*float(sympy.log(x,2))
volume = 5- 1
result["MC"] = volume * accum / float(N)
print("Estimacion por metodo estandar de MonteCarlo: {}".format(result["MC"]))
︡420aa45f-ef4f-40b1-b2c4-1eeb003c2119︡{"stdout":"Estimacion por metodo estandar de MonteCarlo: -1270.154609252245\n"}︡{"done":true}
︠5ad6b658-679e-458d-b266-7baf0724fa26︠

%md
## B. Integrales triples para funciones de 3 variables
︡8abb3a32-e7b2-49d1-b053-3e81d14f3cf4︡{"done":true,"md":"## B. Integrales triples para funciones de 3 variables"}
︠c36b53ed-9bde-4ad7-9743-c1d8a55b45c7︠
%md

## Ejemplo 1
Integral triple de una funcion producto de seno, polinomio, exponencial y logaritmo natural
$$\int_{0}^2 \int_{0}^2 \int_{0}^2 sen(x)y^3e^{z}ln(y) dx dy dz$$ 
︡24559e79-6f5b-434c-a201-056ec701b721︡{"done":true,"md":"\n## Ejemplo 1\nIntegral triple de una funcion producto de seno, polinomio, exponencial y logaritmo natural\n$$\\int_{0}^2 \\int_{0}^2 \\int_{0}^2 sen(x)y^3e^{z}ln(y) dx dy dz$$"}
︠cbb855d6-5019-4667-aeb7-82c8e35e0e1e︠
%md
<img src="https://raw.githubusercontent.com/jortizsi/SymPyLab/main/funcion3variables1.png"/>
︡6af87155-42e9-4290-ba08-79ba5792bbe0︡{"done":true,"md":"<img src=\"https://raw.githubusercontent.com/jortizsi/SymPyLab/main/funcion3variables1.png\"/>"}
︠3da77ae9-30e6-4094-8c0b-73e4ec9cdea6︠


%md
## Solucion analitica usando el teorema fundamental del calculo
︡19190f80-44ed-43c9-9cfc-8eff4de0a4c7︡{"done":true,"md":"## Solucion analitica usando el teorema fundamental del calculo"}
︠b85e11eb-9e2a-42d6-97dd-6ec55bdfd070s︠
%python3
import sympy
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")
expr =   sympy.sin(x)*y**3*sympy.exp(z)*sympy.ln(y)

res = sympy.integrate(expr,
                      (x, 0,2),
                      (y, 0,2),
                      (z, 0,2))
# Note: we use float(res) to convert res from symbolic form to floating point form
result = {} 
result["analytical"] = float(res)
print("Solucion analitica: {}".format(result["analytical"]))



︡ded67d61-c00e-47b7-8df5-b0cf12fc2a73︡{"stdout":"Solucion analitica: 16.038101950678463\n"}︡{"done":true}
︠77e9ee63-c25b-4391-9441-76977f074a9c︠
%md
## Estimacion por metodo de montecarlo
︡babe36ad-7dda-48d3-997e-40c622898eff︡{"done":true,"md":"## Estimacion por metodo de montecarlo"}
︠ba6eea4a-65e6-4d12-b4df-a56c27e873b0s︠
%python3

N = 1_000_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(0,2)
    y = numpy.random.uniform(0,2)
    z = numpy.random.uniform(0,2)
    accum += numpy.sin(x)*y**3*numpy.exp(z)*numpy.log(y)
volume = 8
result = {} 
result["MC"] = volume * accum / float(N)
print("Estimacion por metodo estandar de MonteCarlo: {}".format(result["MC"]))
︡31c7c6d2-4016-4f63-954b-939c5b3e4113︡{"stdout":"Estimacion por metodo estandar de MonteCarlo: 16.101680519459443\n"}︡{"done":true}
︠546e1ac8-c15b-4b5d-aef8-c15a49e79723︠
%md
## Ejemplo 2



Integral triple de una funcion producto de polinomio, seno cuadrado, exponencial negativo y logaritmo base dos
$$\int_{-3}^2 \int_{-1}^4 \int_{0}^5 x^2sen^2(y)e^{-z}log_{2}(x) dx dy dz$$ 

︡6bc746b7-9416-468a-b241-7e8c21bee3cb︡{"done":true,"md":"## Ejemplo 2\n\n\n\nIntegral triple de una funcion producto de polinomio, seno cuadrado, exponencial negativo y logaritmo base dos\n$$\\int_{-3}^2 \\int_{-1}^4 \\int_{0}^5 x^2sen^2(y)e^{-z}log_{2}(x) dx dy dz$$"}
︠538371d1-81b8-4d18-93b9-1ec4959c0fd1︠
%md
<img src="https://raw.githubusercontent.com/jortizsi/SymPyLab/main/funcion3variables2.png"/>
︡6f0cb904-5e99-4180-b3a9-af4721288e5d︡{"done":true,"md":"<img src=\"https://raw.githubusercontent.com/jortizsi/SymPyLab/main/funcion3variables2.png\"/>"}
︠45b6efc9-a3fb-4bf3-8d11-ff2adf40790e︠



%md
## Solucion analitica usando el teorema fundamental del calculo
︡f5a144a0-4604-430b-abf5-b784783f4a70︡{"done":true,"md":"## Solucion analitica usando el teorema fundamental del calculo"}
︠9bdfb451-f674-4875-82d9-fcdcd7b6ca20s︠
%python3
import sympy
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")
expr =   (x**2)*((sympy.sin(y))**2)*sympy.exp(-z)*sympy.log(x,2)
res = sympy.integrate(expr,
                      (x, 0,5),
                      (y, -1,4),
                      (z, -3,2))
# Note: we use float(res) to convert res from symbolic form to floating point form
result = {} 
result["analytical"] = float(res)
print("Solucion analitica: {}".format(result["analytical"]))
︡35dd06d4-7a11-465b-b3b2-e78229e1f2d3︡{"stdout":"Solucion analitica: 3099.5165072370155\n"}︡{"done":true}
︠9d6226f2-9314-44f3-8185-1eb889a5ad65︠
%md
## Estimacion por metodo de montecarlo
︡2373f9a9-0f09-4a94-b514-63a02193e5f9︡{"done":true,"md":"## Estimacion por metodo de montecarlo"}
︠31953289-c49a-441c-b8b1-c79cd593f61bs︠
%python3

N = 10_000_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(0,5)
    y = numpy.random.uniform(-1,4)
    z = numpy.random.uniform(-3,2)
    accum += (x**2)*((numpy.sin(y))**2)*numpy.exp(-z)*numpy.math.log2(x)
volume = 125
result = {} 
result["MC"] = volume * accum / float(N)
print("Estimacion por metodo estandar de MonteCarlo: {}".format(result["MC"]))
︡5f794a50-0680-4f8b-ab28-7df98974454c︡{"stdout":"Estimacion por metodo estandar de MonteCarlo: 3101.448008621367\n"}︡{"done":true}
︠90e6a098-d1be-4512-9f44-e022dfc74b01︠









