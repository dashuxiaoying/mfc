<!DOCTYPE html>
<html>
<head>
    <title>test</title>
    <style>
        video { border: 1px solid #ccc; display: block; margin: 0 0 20px 0; }
        #canvas { margin-top: 20px; border: 1px solid #ccc; display: block; }
    </style>
</head>
<body>
<h1>
    {{ .title }}
</h1>

<video id="video" width="640" height="480" autoplay></video>
<button id="snap">截屏</button>
<canvas id="canvas" width="640" height="480"></canvas>

<script>
    // Elements for taking the snapshot
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    var video = document.getElementById('video');

    // Trigger photo take
    document.getElementById("snap").addEventListener("click", function() {
        context.drawImage(video, 0, 0, 640, 480);
    });
    // Get access to the camera!
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        // Not adding `{ audio: true }` since we only want video now
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
</script>
</body>

</html>