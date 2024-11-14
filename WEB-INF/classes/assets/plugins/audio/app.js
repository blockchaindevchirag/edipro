

function makeWaveform(j) {
    var analyser = Fr.voice.recorder.analyser;

    var bufferLength = analyser.frequencyBinCount;
    var dataArray = new Uint8Array(bufferLength);

    /**
     * The Waveform canvas
     */
    var WIDTH = 500,
    HEIGHT = 200;

    var canvasCtx = $("#level"+j)[0].getContext("2d");
    canvasCtx.clearRect(0, 0, WIDTH, HEIGHT);

    function draw() {
        var drawVisual = requestAnimationFrame(draw);

        analyser.getByteTimeDomainData(dataArray);

        canvasCtx.fillStyle = 'rgb(200, 200, 200)';
        canvasCtx.fillRect(0, 0, WIDTH, HEIGHT);
        canvasCtx.lineWidth = 2;
        canvasCtx.strokeStyle = 'rgb(0, 0, 0)';

        canvasCtx.beginPath();

        var sliceWidth = WIDTH * 1.0 / bufferLength;
        var x = 0;
        for (var i = 0; i < bufferLength; i++) {
            var v = dataArray[i] / 128.0;
            var y = v * HEIGHT / 2;

            if (i === 0) {
                canvasCtx.moveTo(x, y);
            } else {
                canvasCtx.lineTo(x, y);
            }

            x += sliceWidth;
        }
        canvasCtx.lineTo(WIDTH, HEIGHT / 2);
        canvasCtx.stroke();
    };
    draw();
}

$(document).ready(function () {
    
});
