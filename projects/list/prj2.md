# Създаване на приложение за оцветяване на PixelArt

Деца и възрастни обичат да оцветяват картинки, но стандартните книжки за оцветяване понякога изглеждат скучни. Защо да не създадем мобилно приложение, което позволява на потребителите да оцветяват PixelArt картини, съставени от квадрати, и дори да създават свои собствени шедьоври?

Реализирайте iOS приложение, което предоставя на потребителите възможността да оцветяват предварително подготвени PixelArt шаблони или да създават собствени такива чрез поставяне и оцветяване на пиксели.


Основна функционалност:
-----------------------

1.  **Готови PixelArt шаблони**  
    Приложението включва предварително подготвени шаблони с различна трудност (от малки 8x8 до големи 64x64 пиксела).
    
2.  **Режим за свободно създаване**  
    Потребителите могат да започнат от празна мрежа и да създават свои собствени PixelArt изображения чрез избор на размер на мрежата (напр. 16x16, 32x32).
    
3.  **Палитра от цветове**  
    Предоставя се широка гама от цветове, които потребителите могат да използват за оцветяване на квадратчетата.
    
4.  **Записване и споделяне**  
    Създадените или оцветени картини могат да се запазят локално или да се споделят в социалните мрежи.
    
5.  **Режим "оцвети по номер"**  
    За предварително подготвени шаблони, потребителите могат да следват номерата в мрежата, които указват кой цвят трябва да се използва.
    



Допълнителни функционалности (Bonus):
-------------------------------------

*   **AI разпознаване на снимки**  
    Потребителите могат да качат снимка, която AI преобразува в пикселизирана версия за оцветяване.
    
*   **Динамична анимация**  
    Създадените изображения могат да се анимират (например: плавно запълване на пикселите).
    
*   **Колекция и предизвикателства**  
    Система от предизвикателства, където потребителите оцветяват определени шаблони, за да отключват нови.
    
*   **Мултиплейър режим**  
    Позволете на няколко потребители да работят върху едно и също изображение едновременно.
    



Технически изисквания:
----------------------

*   **Canvas с Touch взаимодействия**  
    Потребителите да могат лесно да докосват и запълват квадратчетата с цвят.
    
*   **CoreGraphics**  
    Използвайте CoreGraphics за динамично рисуване и управление на пикселите.
    
*   **Firebase Backend**  
    За съхранение на шаблони, споделени картини и профили на потребители.


Технически изисквания (Bonus):
---
*   **GameKit интеграция**  
    Позволява на потребителите да се състезават по точки за време на завършване на PixelArt или брой оцветени шаблони.
    



Ресурси:
--------

*   **Шаблони за PixelArt**  
    Базова библиотека от лесни и сложни картинки (напр. животни, пейзажи, предмети).
    
*   **Wireframes**:
    
    *   Екран с избор на шаблони.
    *   Canvas за оцветяване.
    *   Палитра с цветове.
    *   Екран за записване и споделяне.



Презентация:
------------

*   Направете кратко видео, което показва:
    *   Избор на PixelArt шаблон.
    *   Оцветяване на няколко квадрата.
    *   Завършената картина и процеса на запазване.
*   Интерактивна презентация за демонстриране на допълнителните функции, като режима за свободно създаване и оцветяване по номер.