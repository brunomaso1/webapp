package clases.utils;

import clases.configuration.Parametros;
import java.util.Calendar;
import java.util.Map;

public class HistorialUtils {

	public String buildStringFecha(int año, int mes) {
		return new StringBuilder()
				.append(String.valueOf(año))
				.append(Parametros.SEPARADOR_FECHA)
				.append(String.valueOf(mes + 1))
				.toString();
	}

	public boolean fechaDentroDeRango(Calendar fechaInicio, Calendar fechaFin, Calendar fechaViaje) {
		return (fechaViaje.compareTo(fechaInicio) >= 0) && (fechaViaje.compareTo(fechaFin) <= 0);
	}

	public void agregarIntervalosFaltantes(Calendar fechaInicio, Calendar fechaFin, Map<String, Integer> orderedMap) {
		int añoInicio = fechaInicio.get(Calendar.YEAR);
		int mesInicio = fechaInicio.get(Calendar.MONTH);
		int añoFin = fechaFin.get(Calendar.YEAR);
		int mesFin = fechaFin.get(Calendar.MONTH);

		for (int i = añoInicio; i < añoFin; i++) {
			for (int j = mesInicio; j < 12; j++) {
				orderedMap.putIfAbsent(buildStringFecha(i, j), 0);
			}
		}
		for (int i = 0; i <= mesFin; i++) {
			orderedMap.putIfAbsent(buildStringFecha(añoFin, i), 0);
		}
	}
}
