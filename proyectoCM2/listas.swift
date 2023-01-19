//
//  listas.swift
//  proyectoCM2
//
//  Created by Alumno on 18/01/23.
//

import Foundation
import UIKit



var carritoL:listaProductos = listaProductos()

var inventarioL:listaProductos = listaProductos()

var favoritosL:listaProductos = listaProductos()

var categoria1:listaProductos = listaProductos()

var categoria2:listaProductos = listaProductos()

var categoria3:listaProductos = listaProductos()

var novedadesL:listaProductos = listaProductos()


var agua:producto = producto(name: "Agua", precio: 10.1, descripcion:"Agua natural", imagen: "agua", categoria: 1,id:0)

var jugo:producto = producto(name: "jugo", precio: 20, descripcion: "Jugo de manzana", imagen: "jugo", categoria: 1,id: 2)

var mayonesa:producto = producto(name: "mayonesa", precio: 55, descripcion: "mayonesa", imagen: "mayonesa", categoria: 1,id: 3)

var cafe:producto = producto(name: "cafe", precio: 70, descripcion: "cafe soluble", imagen: "cafe", categoria: 1,id: 4)

var cocaCola:producto = producto(name: "coca cola", precio: 20, descripcion: "refresco gacificado", imagen: "coca", categoria: 1,id: 5)

var cereal:producto = producto(name: "cereal", precio: 80, descripcion: "Cereal de chocolate", imagen: "cereal", categoria: 1,id: 6)

var atun:producto = producto(name: "atun", precio: 16, descripcion: "atun enlatado", imagen: "atun", categoria: 1,id: 7)

var leche:producto = producto(name: "leche", precio: 25, descripcion: "leche de vaca descremada", imagen: "leche", categoria: 1,id: 8)

var sopa:producto = producto(name: "sopa", precio: 8, descripcion: "bolsa de sopa de fideos", imagen: "sopa", categoria: 1,id: 9)

var frijoles:producto = producto(name: "frijoles", precio: 36, descripcion: "frijoles refritos", imagen: "frijoles", categoria: 1,id: 10)

var celular:producto = producto(name: "celular", precio: 4999, descripcion: "SmartPhone", imagen: "celular", categoria: 2,id: 20)

var tele:producto = producto(name: "smartTV", precio: 20000, descripcion: "television inteligente", imagen: "tele", categoria: 2,id: 21)

var audifonos:producto = producto(name: "audifonos", precio: 999, descripcion: "audifonos inalambricos", imagen: "audifonos", categoria: 2,id: 22)

var tableta:producto = producto(name: "tableta", precio: 6999, descripcion: "tableta electronica", imagen: "tableta", categoria: 2,id: 23)

var lapiz:producto = producto(name: "lapiz", precio: 999, descripcion: "lapiz inalambrico para tabletas", imagen: "lapiz", categoria: 2,id: 24)

var reloj:producto = producto(name: "reloj", precio: 950, descripcion: "reloj inteligente", imagen: "reloj", categoria: 2,id: 25)

var laptop:producto = producto(name: "laptop", precio: 16569, descripcion: "laptop", imagen: "lap", categoria: 2,id: 26)

var impresora:producto = producto(name: "impresora", precio: 4500, descripcion: "impresora", imagen: "impresora", categoria: 2,id: 27)

var mouse:producto = producto(name: "mouse", precio: 560, descripcion: "audifonos inalambricos", imagen: "mouse", categoria: 2,id: 28)

var teclado:producto = producto(name: "teclado", precio: 999, descripcion: "teclado con luces de colores", imagen: "teclado", categoria: 2,id: 29)



var plumones:producto = producto(name: "plumones", precio: 230, descripcion: "plumones de colores pastel", imagen: "plumones", categoria: 3,id: 30)

var colores:producto = producto(name: "colores", precio: 560, descripcion: "lapices de colores", imagen: "colores", categoria: 3,id: 31)

var lapicera:producto = producto(name: "lapicera", precio: 400, descripcion: "lapicera con varios compartimientos", imagen: "lapicera", categoria: 3,id: 32)

var calculadora:producto = producto(name: "calculadora", precio: 450, descripcion: "calculadora cientifica", imagen: "calcu", categoria: 3,id: 33)

var cuaderno:producto = producto(name: "cuaderno", precio: 100, descripcion: "cuaderno con pasta dura", imagen: "cuaderno", categoria: 3,id: 34)

var plumas:producto = producto(name: "plumas", precio: 150, descripcion: "plumas de 3 colores diferentes", imagen: "plumas", categoria: 3,id: 35)

var organizador:producto = producto(name: "organizador", precio: 550, descripcion: "organizador de escritorio", imagen: "organizador", categoria: 3, id: 36)

var agenda:producto = producto(name: "agenda", precio: 150, descripcion: "agenda organizadora de actividades", imagen: "agenda", categoria: 3,id: 37)

var tijeras:producto = producto(name: "tijeras", precio: 50, descripcion: "tijeras para cortar papel", imagen: "tijeras", categoria: 3,id: 38)

var hojas:producto = producto(name: "paquete de hojas", precio: 230, descripcion: "paquete de 100 hojas color blaco", imagen: "hojas", categoria: 3,id: 39)

