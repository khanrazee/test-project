var seconds;
var array
function startGame(display, image, arr) {
    var timer = 10;
    array = createArray(arr)
    setInterval(function () {
        seconds = parseInt(timer % 60);
        seconds = seconds < 10 ? "0" + seconds : seconds;
        display.textContent = seconds;
        image.src = array[seconds-1]
        if (--timer < 1) {
            timer = 10;
        }
    }, 1000);
}

function createArray(array) {
    var tmp, current = array.length-1, top = 11;
    var arr= []
    if(top) while(--top) {
        arr[top-1] = array[current];
        current--
        if (current < 0) {
            current = array.length-1 ;
        }
    }
    return arr;
}

$(function(){
    $(".btn").click(function(){
        $.ajax({
            type: "POST",
            url: "/plays",
            data: { authenticity_token: $('[name="csrf-token"]')[0].content,
                tick: seconds,
                image_url: array[seconds-1]  },
            success: function (res) {
                if (res){
                    $('#table').append(res);
                }
            }
        });
    });
});

