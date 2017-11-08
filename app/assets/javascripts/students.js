function getState(val) {
    console.log(val)
    $.ajax({
        type: "GET",
        url: "get_state",
        data: 'country_id=' + val,
        success: function(data) {
            console.log(data.states)
            var stateSelect = document.getElementById("state");
            stateSelect.innerHTML = "";
            var citySelect = document.getElementById("city");
            citySelect.innerHTML = "";
            for (var i = 0; i < data.states.length; i++) {
                var opt = document.createElement('option');
                opt.innerHTML = data.states[i].name;
                opt.setAttribute("value", data.states[i].id)
                stateSelect.appendChild(opt);

            }


        }
    });

}

function getCity(val) {

    $.ajax({
        type: "GET",
        url: "get_city",
        data: 'state_id=' + val,
        success: function(data) {
            console.log(data.cities[0].name)
            var citySelect = document.getElementById("city");
            citySelect.innerHTML = "";
            for (var i = 0; i < data.cities.length; i++) {
                var opt = document.createElement('option');
                opt.innerHTML = data.cities[i].name;
                opt.setAttribute("value", data.cities[i].id)
                citySelect.appendChild(opt);

            }
        }
    });

}