// NU UMBLA AICI
$(function() {
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
        if(item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
// NU UMBLA AICI
    $("#close").click(function () {
        $.post('http://jobs/exit', JSON.stringify({}));
        return
    })
    
    $("#farmercp").click(function () {
        console.log("BUTTON FARMER")
        $.post("http://jobs/farmer", JSON.stringify({
        }));
        $.post('http://jobs/exit', JSON.stringify({}));
        return;
    })

    $("#drugscp").click(function () {
        $.post("http://jobs/drugs", JSON.stringify({
        }));
        $.post('http://jobs/exit', JSON.stringify({}));
        return;
    })
    
})
// NU UMBLA AICI