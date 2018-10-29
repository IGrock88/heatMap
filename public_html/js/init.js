window.onload = function () {
    'use strict';

    var CLOSE_MAP_TEXT_BUTTON = 'Скрыть тепловую карту';
    var OPEN_MAP_TEXT_BUTTON = 'Открыть тепловую карту';
    var isOpenMap = false;

    var heatMap = new HeatMap('body');

    // обработчик на клик мыши, в нем получаем координаты мыши при клике
    document.addEventListener('click', function (event) {
        var point = {
            coordX: event.clientX,
            coordY: event.clientY
        };

        heatMap.sendCoords(point);
    });

    // обработчик на кнопку отображения тепловой карты, в зависимости от состояния переменной isOpenMap открываем или закрываем карту
    document.getElementById('showHeatMap').addEventListener('click', function (event) {
        if (isOpenMap){
            document.getElementsByClassName('heatmap-canvas')[0].remove();
            event.target.innerText = OPEN_MAP_TEXT_BUTTON;
            isOpenMap = false;
        }
        else {
            heatMap.getCoords(function (points) {
                heatMap.drawMap(points);
                event.target.innerText = CLOSE_MAP_TEXT_BUTTON;
                isOpenMap = true;
            });
        }
    });
};
