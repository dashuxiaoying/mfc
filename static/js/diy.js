$(function() {
    var orderTable=$('#dataTables-example').DataTable({
        responsive: true,
        processing:true,
        //serverSide:true,
        //ajax:"/orders/json",
    });

    // Elements for taking the snapshot
    var canvas_gw = document.getElementById('canvas-gw');
    var canvas_rt = document.getElementById('canvas-rt');
    var context_gw = canvas_gw.getContext('2d');
    var context_rt = canvas_rt.getContext('2d');
    var video = document.getElementById('video');

    // Trigger photo take
    document.getElementById("snap-gw").addEventListener("click", function() {
        context_gw.drawImage(video, 0, 0, 200, 160);
    });
    document.getElementById("snap-rt").addEventListener("click", function() {
        context_rt.drawImage(video, 0, 0, 200, 160);
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