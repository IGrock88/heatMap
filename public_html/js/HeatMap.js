'use strict';
/**
 * Класс реализующий сбор информации о кликах и отправке получении кликов по ajax на сервер
 * @param selector
 * @constructor
 */
function HeatMap(selector) {

    this.selector = selector;

}

/**
 * Функция отрисовки тепловой карты на основании переданных точек
 * @param points
 */
HeatMap.prototype.drawMap = function (points) {

    var config = {
        container: document.querySelector(this.selector),
        radius: 20,
        maxOpacity: 0.5,
        minOpacity: 0.1,
        blur: 0.75
    };
    var heatmapInstance = h337.create(config);

    var data = {
        max: points.max,
        min: points.min,
        data: points.data
    };
    heatmapInstance.setData(data);
};

/**
 * Функция для передачи по ajax данных на сервер
 * @param point
 */
HeatMap.prototype.sendCoords = function (point) {

    $.ajax({
        type: 'POST',
        url: '/api/setClicks',
        data: point,
        dataType: 'JSON',
    });
};

/**
 * Функция для получения данных о точках нажатия с сервера по ajax
 * @param callback
 */
HeatMap.prototype.getCoords = function (callback) {
    $.ajax({
        type: 'POST',
        url: '/api/getClicks',
        success: function (data) {
            console.log(data);
            callback(data);
        },
        dataType: 'JSON',
    });
};