Приложение «Лошадиные Скачки».

Таббар – 2 экрана: 
1) Первый: Скачки с кнопкой "Старт" и "Рестарт", когда скачки закончились. 5 лошадей скачут параллельно
![Simulator Screenshot - iPhone 16 Pro - 2025-05-04 at 15 05 56](https://github.com/user-attachments/assets/7bfe0de8-c9c0-4a2d-b0c5-b1c96d9c600a)

2) Второй: история скачек
![Simulator Screenshot - iPhone 16 Pro - 2025-05-05 at 11 01 12](https://github.com/user-attachments/assets/0dee3e07-502a-45df-83f1-1a18d50e0bb6)

Приложение написано на фреймворке SwiftUI, с использованием архитектурного паттерна MVVM.
Паралельные скачки реализованы с помощью многопоточности с использованием Structured Concurency

Приложение запрашивает доступ к пуш уведомлениям при первом запуске.

Приложение адаптивно к изменению цветовой схемы и размером текста:
![Simulator Screenshot - iPhone 16 Pro - 2025-05-05 at 11 00 51](https://github.com/user-attachments/assets/c0e20ea7-8002-4e8c-87b8-9501b61ab045)

