# hardwareApp

Aplicación móvil construida con Flutter para mostrar catálogos de herramientas, materiales y equipos de seguridad.

## Descripción

Este repositorio contiene una app Flutter (Android / iOS / web / desktop) creada como ejemplo/plantilla para administrar y mostrar productos de ferretería y artículos relacionados. Incluye pantallas de login, pestañas con distintos tipos de productos y utilidades para renderizar tiles y manejar un carrito mínimo.

## Requisitos

- Flutter (recomendado 3.x o superior)
- SDK de Dart incluido con Flutter
- Android Studio / Xcode para builds nativos (opcional para desarrollo y pruebas en emulador/dispositivo)

## Instalación y ejecución (rápida)

1. Clona el repositorio:

	git clone <url-del-repo>
	cd hardwareApp

2. Instala dependencias:

	flutter pub get

3. Ejecuta en un dispositivo/emulador:

	flutter run

Para ejecutar en Android/iOS/desktop/web, selecciona el dispositivo objetivo con `flutter devices` o usa las opciones del IDE.

## Estructura del proyecto

- `lib/` — código fuente de la app:
  - `main.dart` — punto de entrada.
  - `screens/` — pantallas principales (login, home, ...).
  - `tab/` — componentes de pestañas por categoría.
  - `utils/` — tiles, componentes reutilizables y utilidades.
- `android/`, `ios/`, `linux/`, `macos/`, `web/` — carpetas del proyecto generadas por Flutter para cada plataforma.
- `test/` — pruebas unitarias/widget.

## Assets

Las imágenes y recursos están dentro de `lib/icons` y `lib/images`. Asegúrate de incluirlos en el `pubspec.yaml` si añades nuevos activos.

## Consejos de desarrollo

- Ejecuta `flutter analyze` para revisar problemas estáticos.
- Ejecuta `flutter test` para correr las pruebas.
- Usa `flutter format .` para dar formato al código.

## Contribuciones

Si quieres contribuir:

1. Crea un fork.
2. Abre una rama descriptiva (`feature/`, `fix/`).
3. Envía un Pull Request explicando los cambios y cómo probarlos.

## Contacto

Autor: JoseAque

Para preguntas o soporte, abre un issue en el repositorio.

## Licencia

Incluye una licencia si corresponde (p. ej. MIT). Si no hay licencia, los derechos quedan reservados al autor.
