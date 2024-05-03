[RedisServer]: <https://redis.io/docs/getting-started/>
[StimulusReflex]: <https://docs.stimulusreflex.com/>
[StimulusReflexController]: <https://docs.stimulusreflex.com/hello-world/quickstart#trigger-reflex-actions-inside-stimulus-controllers>
[Bootstrap 5]: <https://getbootstrap.com/docs/5.0/getting-started/introduction/>
[ClaveJS]: <https://nosir.github.io/cleave.js/>
[Debounced]: <https://docs.stimulusreflex.com/appendices/events#debounced>
[StartPoint]: <https://www.loom.com/share/b0452c9a78614d63a1b4f107b6cfe4ed>
[EndPoint]: <https://www.loom.com/share/7862db34f4114a3ea388576caa9465d4>
# README

This README would normally document whatever steps are necessary to get the
application up and running.

## Setup application
* Clone project
* Run ``` bundle install ```
* Run ``` yarn install ```
* Run ``` rails db:create ```
* Run ``` rails db:migrate ```

Start application
> Note: The Application requires redis-server,
> please start redis-server before running the application via command `redis-server` 
> or other command depends on your OS and environment. For more information please read 
"[RedisServer]".

* Run ``` redis-server ```
* Run ``` rails s ```

## General Information about project
Для начала работы у Вас подготовленно 2 страницы:
* Root page где есть список Users и кнопка "Create User"
* И вторая страница это форма где мы заполняем поля для этого User

## Technical requirement

Videos:
* "[StartPoint]" - The start point which functionality is prepared.
* "[EndPoint]" - The expected results.

Home Page:
  * Cделайте кнопку "Delete" рабочей.

Form Page:
 * На странице User Form нужно сделать авто сохранение информации о User в базе данных
в реальном времени, для этого нужно использовать технологию "[StimulusReflex]", для обновления данных в DB пожалуйста используйте "[Debounced]" method for all text inputs.
 * Добавьте валидацию для email поля, но только чтобы она срабатывала когда поле заполненно. Маска для валидации
уже добавлена в User modal, нужно только дописать метод валидации используя эту маску.
 * В селекторе "Country", при выборе опции "Other", в форме должно появляться дополнительное text input field "Other country name",
в котором можно вручную ввести данные, а при выборе опции "United States", это поле должно пропасть
на строне UI.
 * В поле Social Security когда вводим данные они должны в реальном времени конвертироваться в формат xxx-xx-xxxx, для этого нужно задействовать библиотеку "[ClaveJS]", и для нее написать js-controller. Больше информации
об этом вы можете узнать здесь "[StimulusReflexController]", маска для форматирования указана ниже:
```  
new Cleave(e, {
   numericOnly: true,
   delimiters: ['-'],
   blocks: [3,2,4],
   uppercase: true
});
```

> Note: Все технологии которые указаны в проекте уже подключены, Вам только нужно
> с их помощю написать функционал.
>
> Перечень технологий которые установлены в проекте:
> 1. "[StimulusReflex]" - framework for updating data on the page via WebSocket.
> 2. "[Bootstrap 5]" - framework for building responsive design.
> 3. "[ClaveJS]" - JS library for formatting text inside input field.
> 

