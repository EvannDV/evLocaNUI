$(function () {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
})


function closeAll() {
    let c = "close";
    let directory = GetParentResourceName()
    $.post('https://'+directory+'/closeAll', JSON.stringify({
        data: c
    }))
};


function giveBlista() {
    let b = "blista";
    let directory = GetParentResourceName()
    $.post('https://'+directory+'/giveBli', JSON.stringify({
        data: b
    }))
};



function giveFaggio() {
    let f = "faggio";
    let directory = GetParentResourceName()
    $.post('https://'+directory+'/giveFaggio', JSON.stringify({
        data: f
    }))
};