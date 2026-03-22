# 📱 Flutter Responsive Pokedex

A beautifully designed, fully responsive Pokedex application built with Flutter. This project demonstrates REST API integration, dynamic UI rendering based on data, and complex device orientation handling.

<details>
<summary><b>🇹🇷 Türkçe Açıklama İçin Tıklayın</b></summary>
<br>

Flutter ile geliştirilmiş, şık tasarımlı ve tamamen duyarlı (responsive) bir Pokedex uygulamasıdır. Bu proje; REST API entegrasyonunu, veriye dayalı dinamik arayüz oluşturmayı ve cihaz yönelimi (dikey/yatay) yönetimini göstermektedir.

</details>

## 🚀 Key Features

* **REST API Integration:** Fetching and parsing JSON data efficiently using `Dio`.
* **Responsive Design:** Seamlessly adapts to both Portrait and Landscape orientations using `flutter_screenutil`.
* **Dynamic Theming:** UI colors automatically adapt based on the Pokemon's type (e.g., Red for Fire, Green for Grass).
* **Image Caching:** Optimized network image loading and caching using `cached_network_image`.
* **Smooth Animations:** Integrated `Hero` animations for fluid page transitions.

<details>
<summary><b>🇹🇷 Temel Özellikler (Türkçe)</b></summary>
<br>

* **REST API Entegrasyonu:** `Dio` paketini kullanarak JSON verilerinin verimli bir şekilde çekilmesi ve işlenmesi.
* **Duyarlı (Responsive) Tasarım:** `flutter_screenutil` ile hem Dikey (Portrait) hem de Yatay (Landscape) ekranlara kusursuz uyum sağlayan arayüz.
* **Dinamik Temalandırma:** Arayüz renklerinin Pokemon'un tipine göre (Örn: Ateş için Kırmızı, Çimen için Yeşil) dinamik olarak değişmesi.
* **Görsel Önbellekleme:** `cached_network_image` ile optimize edilmiş ağ görseli yükleme ve verimli önbellekleme sistemi.
* **Akıcı Animasyonlar:** Sayfalar arası yumuşak ve şık geçişler için `Hero` animasyonlarının kullanımı.

</details>

## 🛠️ Tech Stack & Architecture

* **Framework:** Flutter
* **Network & API:** [Dio](https://pub.dev/packages/dio)
* **Responsive UI:** [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
* **Image Caching:** [cached_network_image](https://pub.dev/packages/cached_network_image)
* **Architecture:** Feature-based modular folder structure (`core`, `features`, `models`)

## 📸 Screenshots & Responsive Preview

The UI dynamically adapts its color palette and handles multiple device orientations natively.

| 1. Main Pokedex (Dark Theme) | 2. Detail Page (Dynamic Color: Fire) |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/2e09d3ca-dd6e-4a46-8db0-22db14a4de5e" width="250"> | <img src="https://github.com/user-attachments/assets/5f9422a9-ad4e-4836-9ade-e35bcba8e655" width="250"> |
| *Grid view with dynamically colored cards.* | *Detailed view with type-specific background.* |

| 3. Detail Page (Dynamic Color: Grass) | 4. Landscape Orientation Support |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/9ad3f6ca-9c75-4271-a4d8-cf5fb4fc8557" width="250"> | <img src="https://github.com/user-attachments/assets/17f99920-0002-4bab-a2a4-f4f77beba46c" width="400"> |
| *Smooth transitions and UI element positioning.* | *Fully responsive layout adapting to horizontal view.* |

## 💡 How to Run / Nasıl Çalıştırılır

1. **Clone the repository / Repoyu klonlayın:**
```bash
git clone [https://github.com/obasm/flutter-responsive-pokedex.git](https://github.com/obasm/flutter-responsive-pokedex.git)

2. **Install dependencies / Bağımlılıkları yükleyin:**
```bash
flutter pub get
```

3. **Run the app / Uygulamayı çalıştırın:**
```bash
flutter run
```
