Algoritmo Proyecto1
	definir nom, destino Como Cadena
	definir peso,cupon,tax,desc, total, p, q, costoenvio, pesototal, costofijo como real
	Escribir "Hola, Bienvenido/a a tu carro de compras"
	p<-0
	cupon<-0
	tax<-0
	q<-0
	desc<-0
	total<-0
	peso<-0
	pesototal<-0
	costoenvio<-0
	costofijo<-10
	//pido nombre y valido que el dato ingresado este correcto
	Escribir "Ingresa el nombre del producto a comprar"
	leer nom
	Mientras nom=" "
		Escribir "Ingresa nombre de producto valido: "
		leer nom
	FinMientras
	//pido precio y valido que el dato ingresado este correcto
	Escribir "Ingresa precio del producto"
	leer p
	Mientras p<=0
		Escribir "Ingresa precio valido: "
		leer p
	FinMientras
	//pido cantidad y valido que el dato ingresado este correcto
	Escribir "Ingresa la cantidad de productos"
	leer q
	Mientras q<=0
		Escribir "Ingresa una cantidad valida "
		leer q
	FinMientras
	//pido cupon de descuento y valido que el dato ingresado este correcto
	Escribir "Tienes cupón de descuento?, si no tienes uno puedes poner 0"
	leer cupon
	si cupon<0 entonces
		Escribir "Ingresa un cupón de descuento válido" 
		leer cupon
	finsi
	//pido impuesto y valido que el dato ingresado este correcto
	Escribir "Ingresa el impuesto"
	leer tax
	si tax<=0 entonces
		Escribir "Ingresa impuesto válido" 
		leer tax
	finsi
	//si el cliente compra mas de 2 articulos le haré un descuento de 5% sobre el total
	si q>=2 entonces
		desc<-5
		total<-total*(1-desc)
	FinSi
	//pido el peso del producto y valido que dato ingresado este correcto
	Escribir "Ingresa el peso del producto"
	leer peso
	si peso<=0 entonces
		Escribir "Ingresa peso válido" 
		leer peso
	finsi
	pesototal<-peso*q
	//pido destino y valido que el dato ingresado este correcto
	Escribir "Ingresa la cuidad de despacho: "
	leer destino
	Mientras destino=" "
		Escribir "Ingresa ciudad de destino valida: "
		leer destino
	FinMientras
	costoenvio<-costofijo+q*peso
	//Muestro costo final y detalle
	Escribir "Resumen de tu compra:"
	Escribir "Producto: ", nom
	Escribir "Precio: $", p
	si cupon>0 entonces
		Escribir "- Descuento cupón: ", cupon "%"
	sino 
		cupon<-0
	FinSi
	Escribir "+ IVA: ", tax "% es $",(tax/100)*p 
	si q>=2 entonces
		Escribir "- Descuento por cantidad: ", desc, "% es $", (desc/100)*p
	SiNo
		desc<-0
	FinSi
	Escribir "Costo envío: $", costoenvio
	total<-p-p*cupon/100
	//escribir total
	total<-total+total*tax/100
	//escribir total
	total<-total-total*desc/100
	//escribir total
	total<-total*q+costoenvio
	escribir "Total a pagar: $ ",total
FinAlgoritmo
