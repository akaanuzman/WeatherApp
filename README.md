## ☁️ WeatherApp
### 🔎 Preview
https://github.com/akaanuzman/WeatherApp/assets/55639112/0c43a3c8-d402-4162-90ae-f9da3eca08e8

### 🇹🇷 Türkçe 
* #### 👨🏻‍💻 Uygulama Hakkında
  * Uygulama temel olarak Swift içerisindeki CoreLocation'u kullanarak kullanıcının anlık konumu almaktadır. Konumundaki enlem ve boylama göre [API'ya](https://openweathermap.org/api) istek atılıp güncel hava durumu bilgisi gösterilmektedir.

* #### 📁 Klasör Yapısı, Yazılım Mimarisi ve Teknik Detaylar
  * Verilen çalışma SwiftUI ile geliştirilmiş olup temiz kod yazılımına ve SOLID prensiplerine oldukça dikkat edilmeye çalışılmıştır. Ayrıca Swift programlama dilinin ve nesne yönelimli programlamanın tüm efektif özelliklerinin kullanılmasına özen gösterilmiştir. SwiftUI framework'ünün vermiş olduğu özellikler, esneklikler kullanılmaya ve uygulanmaya çalışılmıştır.Design Pattern olarak MVMM kullanılmış olup tasarım kısmında ise Atomic Design metodolijisi uygulanmıştır. API tarafından çekilmeyen string veriler için localizastion yapısı kurulmuştur. Github tarafında ise branch yapısına aşina olunması açısında feature bazlı branch yapısı kurgulanmış ve gerekli işlemler bittikten sonra pull request atılarak çalışma main branch'inde mergelenmiştir.
  * Klasör yapısı olarak tüm uygulama içi sabitlerimiz, modellerimiz, viewmodel sınıflarımız, enum type'larımız viewmodifier'larımız gibi projenin tüm ana hatları products klasörü altında bulunmaktadır. Uygulama içi bulunan tüm ekranlarımız ise views klasörü altında yerini almaktadır.

### 📀 Kurulum
* Projeyi klonlayın
```bash
git clone https://github.com/akaanuzman/WeatherApp
```
* WeatherApp klasörü içinde bir .env dosyası oluşturun.
    * Dosya içine API_KEY'inizi girin. `API_KEY = <YOUR_API_KEY>`
<br>

### 🏴󠁧󠁢󠁥󠁮󠁧󠁿 English 
* #### 👨🏻‍💻 About App
   * The application basically gets the instant location of the user using CoreLocation in Swift. According to the latitude and longitude of its location, a request is made to [API](https://openweathermap.org/api) and current weather information is displayed.

* #### 📁 Folder Structure, Software Architecture and Technical Details
   * The given work has been developed with SwiftUI and a great deal of attention has been paid to clean code software and SOLID principles. In addition, care has been taken to use all the effective features of the Swift programming language and object-oriented programming. The features and flexibility provided by the SwiftUI framework have been tried to be used and applied. MVMM has been used as the Design Pattern and the Atomic Design methodology has been applied in the design part. A localization structure has been established for string data that is not retrieved by the API. On the Github side, a feature-based branch structure was designed in order to become familiar with the branch structure, and after the necessary operations were completed, a pull request was made and merged into the working main branch.
   * As a folder structure, all the main lines of the project such as our in-app constants, models, viewmodel classes, enum types, viewmodifiers are under the products folder. All our in-app screens are located under the views folder.

### 📀 Installation
* Clone the project
```bash
git clone https://github.com/akaanuzman/WeatherApp
```
* Create an .env file inside the WeatherApp folder.
     * Set your API_KEY in the file. `API_KEY = <YOUR_API_KEY>`
