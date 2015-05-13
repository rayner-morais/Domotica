$(function () {
    var dps = [];
    var x = 0;
    var chart = new CanvasJS.Chart("chartContainer", {
        title: {
            text: "Live Random Data"
        },
        data: [{
                type: "line",
                dataPoints: dps
            }]
    });
    setInterval(function () {
        $.get('arduino_3.jsp', function (data) {
            var current = data.current;
            if (current !== null && current !== undefined) {
                dps.push({
                    y: current,
                    x: x
                });
                x++;
                chart.render();
            }
        }
        );
    }, 1000);

});