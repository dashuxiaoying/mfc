$(function() {
    var orderTable=$('#dataTables-example').DataTable({
        responsive: true,
        processing:true,
        //serverSide:true,
        //ajax:"/orders/json",
    });

    // Elements for taking the snapshot
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    var video = document.getElementById('video');

    // Trigger photo take
    document.getElementById("snap").addEventListener("click", function() {
        context.drawImage(video, 0, 0, 200, 160);
    });
    // Get access to the camera!
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        navigator.mediaDevices.getUserMedia({video: true}).then(function (stream) {
            video.src = window.URL.createObjectURL(stream);
            video.play();
        });
    }else if (navigator.webkitGetUserMedia){
        navigator.webkitGetUserMedia({"video":true},function(stream){
            video.src=window.webkitURL.createObjectURL(stream);
            video.play();
        },function(){
            console.log("error ");
        })
    }

});