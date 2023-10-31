def diagnostico_enfermedad(sintomas):
    if "escalofríos" in sintomas and "tos" in sintomas:
        return "Posible gripe"
    elif "dolor de pecho" in sintomas and "falta de aliento" in sintomas:
        return "Posible problema cardíaco"
    elif "dolor de cabeza" in sintomas and "náuseas" in sintomas:
        return "Posible migraña"
    elif "sed constante" in sintomas and "visión borrosa" in sintomas:
        return "Posible Diabetes"
    elif "ardor estomacal" in sintomas and "mal sabor en la boca" in sintomas:
        return "Posible Gastritis"
    elif "presión en el pecho" in sintomas and "silbidos al respirar" in sintomas:
        return "Posible Asma"
    elif "tos con sangre" in sintomas and "fiebre" in sintomas:
        return "Posible Tuberculosis"
    else:
        return "Enfermedad desconocida"

# Interfaz
print("Bienvenido al sistema de diagnóstico de enfermedades en personas mayores.")
sintomas = input("Por favor, ingrese los síntomas separados por comas: ").split(',')
resultado = diagnostico_enfermedad(sintomas)
print(f"El diagnóstico es: {resultado}")
