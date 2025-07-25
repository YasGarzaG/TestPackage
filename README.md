# 📦 SDK Swift Binario – FrameworkTestUI + FrameworkTestApi

Swift Package que expone componentes de UI preconstruidos y lógica de red/API, distribuido como binario vía `.xcframework.zip`. Ideal para integraciones rápidas, seguras y sin acceso al código fuente.

---

## 🚀 Instalación vía Swift Package Manager

1. En tu proyecto Xcode, ve a `File > Add Packages…`
2. Ingresa la URL del repositorio:
```
https://github.com/YasGarzaG/TestPackage
```
3. Elige la versión estable (`v1.0.0`)
4. Selecciona los frameworks a integrar (`FrameworkTestUI`, `FrameworkTestApi`)

---

## 🛠 Inicialización en tu App

En la entrada principal (`@main`) de tu app, inicializa el framework pasando tu API Key:

```swift
import FrameworkTestUI

@main
struct MyApp: App {
 init() {
     FrameworkTestUIInitializer.initialize(apiKey: "TU_API_KEY_AQUÍ")
 }

 var body: some Scene {
     WindowGroup {
         ContentView()
     }
 }
}
```
> ⚠️ La inicialización debe hacerse una sola vez al inicio de la app antes de usar cualquier componente del SDK.

---

## 📐 Uso de componentes UI

Después de inicializar `FrameworkTestUI`, puedes importar y usar las vistas del framework:

```swift
import FrameworkTestUI

struct ContentView: View {
    var body: some View {
        CustomSDKView() // Vista provista por el SDK
    }
}
```

Las vistas están completamente encapsuladas y listas para uso inmediato dentro de tus `SwiftUI`.

---

## 📄 Requisitos
* iOS 13+
* Swift 5.9+
* Conectividad activa (según funcionalidad del API)

---

## 🔐 Seguridad & Buenas prácticas
* Tu API Key es sensible, evita exponerla en repos públicos.
* Puedes rotar la Key sin necesidad de re-integrar el SDK.
