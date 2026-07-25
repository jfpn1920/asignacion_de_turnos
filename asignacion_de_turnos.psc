Algoritmo asignacion_de_turnos
	Definir opcion, totalTurnos, i, j, idBuscar, siguienteID Como Entero
	Definir encontrado Como Logico
	Dimension id[100]
	Dimension empleado[100]
	Dimension cargo[100]
	Dimension turno[100]
	Dimension horaInicio[100]
	Dimension horaFin[100]
	Dimension dia[100]
	Dimension estado[100]
	totalTurnos <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_asignacion_de_turnos|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal asignacion de turnos"
		Escribir "1) registrar turno"
		Escribir "2) editar turno"
		Escribir "3) eliminar turno"
		Escribir "4) buscar turno"
		Escribir "5) listar turnos"
		Escribir "6) ver detalles"
		Escribir "7) mostrar estadisticas"
		Escribir "8) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//---------------------//
			//--|registrar_turno|--//
			//---------------------//
			1:
				Escribir "registrar asignacion de turno"
				id[totalTurnos + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "ingrese el nombre del empleado:"
				Leer empleado[totalTurnos + 1]
				Escribir "ingrese el cargo:"
				Leer cargo[totalTurnos + 1]
				Escribir "ingrese el turno (mañana/tarde/noche):"
				Leer turno[totalTurnos + 1]
				Escribir "ingrese la hora de inicio:"
				Leer horaInicio[totalTurnos + 1]
				Escribir "ingrese la hora de finalizacion:"
				Leer horaFin[totalTurnos + 1]
				Escribir "ingrese el dia:"
				Leer dia[totalTurnos + 1]
				Escribir "ingrese el estado (activo/inactivo/pendiente):"
				Leer estado[totalTurnos + 1]
				totalTurnos <- totalTurnos + 1
				Escribir "asignacion registrada correctamente."
			//------------------//
			//--|editar_turno|--//
			//------------------//
			2:
				Escribir "editar asignacion"
				Si totalTurnos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalTurnos Hacer
						Escribir id[i], " | ", empleado[i], " | ", cargo[i], " | ", turno[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", dia[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTurnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo empleado:"
							Leer empleado[i]
							Escribir "ingrese el nuevo cargo:"
							Leer cargo[i]
							Escribir "ingrese el nuevo turno:"
							Leer turno[i]
							Escribir "ingrese la nueva hora de inicio:"
							Leer horaInicio[i]
							Escribir "ingrese la nueva hora de finalizacion:"
							Leer horaFin[i]
							Escribir "ingrese el nuevo dia:"
							Leer dia[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "asignacion editada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
					
				FinSi
			//--------------------//
			//--|eliminar_turno|--//
			//--------------------//
			3:
				Escribir "eliminar asignacion"
				Si totalTurnos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalTurnos Hacer
						Escribir id[i], " | ", empleado[i], " | ", cargo[i], " | ", turno[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", dia[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTurnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalTurnos Entonces
								Para j <- i Hasta totalTurnos-1 Hacer
									id[j] <- id[j+1]
									empleado[j] <- empleado[j+1]
									cargo[j] <- cargo[j+1]
									turno[j] <- turno[j+1]
									horaInicio[j] <- horaInicio[j+1]
									horaFin[j] <- horaFin[j+1]
									dia[j] <- dia[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalTurnos <- totalTurnos-1
							Escribir "asignacion eliminada correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
				FinSi
			//------------------//
			//--|buscar_turno|--//
			//------------------//
			4:
				Escribir "buscar asignacion"
				Si totalTurnos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTurnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", empleado[i], " | ", cargo[i], " | ", turno[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", dia[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|listar_turnos|--//
			//-------------------//
			5:
				Escribir "listar asignaciones"
				Si totalTurnos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalTurnos Hacer
						Escribir id[i], " | ", empleado[i], " | ", cargo[i], " | ", turno[i], " | ", horaInicio[i], " | ", horaFin[i], " | ", dia[i], " | ", estado[i]
					FinPara
				FinSi
			//------------------------//
			//--|ver_detalles_turno|--//
			//------------------------//
			6:
				Escribir "ver detalles de la asignacion"
				Si totalTurnos = 0 Entonces
					Escribir "no hay asignaciones registradas."
				SiNo
					Escribir "ingrese el id de la asignacion:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalTurnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles de la asignacion"
							Escribir "id: ", id[i]
							Escribir "empleado: ", empleado[i]
							Escribir "cargo: ", cargo[i]
							Escribir "turno: ", turno[i]
							Escribir "hora inicio: ", horaInicio[i]
							Escribir "hora finalizacion: ", horaFin[i]
							Escribir "dia: ", dia[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontro una asignacion con ese id."
					FinSi
					
				FinSi
			//--------------------------//
			//--|mostrar_estadisticas|--//
			//--------------------------//
			7:
				Escribir "mostrar estadisticas"
				Si totalTurnos = 0 Entonces
					Escribir "no hay turnos registrados."
				SiNo
					totalActivos <- 0
					totalInactivos <- 0
					totalPendientes <- 0
					Para i <- 1 Hasta totalTurnos Hacer
						Si estado[i] = "activo" Entonces
							totalActivos <- totalActivos + 1
						FinSi
						Si estado[i] = "inactivo" Entonces
							totalInactivos <- totalInactivos + 1
						FinSi
						Si estado[i] = "pendiente" Entonces
							totalPendientes <- totalPendientes + 1
						FinSi
					FinPara
					Escribir "estadistica general"
					Escribir "total de turnos: ", totalTurnos
					Escribir "turnos activos: ", totalActivos
					Escribir "turnos inactivos: ", totalInactivos
					Escribir "turnos pendientes: ", totalPendientes
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			8:
				Escribir "gracias por utilizar asignacion de turnos."
			De Otro Modo:
				Escribir "opcion no valida."
		FinSegun
	Hasta Que opcion = 8
FinAlgoritmo