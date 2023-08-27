@inject('customfunct', 'App\Models\UserForm')
@inject('calculation', 'App\Models\Calculation')
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Alex+Brush&family=Galada&family=Graduate&family=Oswald:wght@300&family=Rochester&family=Sail&display=swap"
        rel="stylesheet">
</head>
<style>
    @font-face {
        src: url('public/admin_asset/fonts/hind/Hind_Siliguri_Light-Regular.ttf');
        font-family: hindis;
    }

    @font-face {
        src: url('public/admin_asset/fonts/hind/Hind_Siliguri-Bold.ttf');
        font-family: hindis_bold;
    }

    * {
        box-sizing: border-box;
    }

    @media print {

        .no-print,
        .no-print * {
            display: none !important;
        }

        .print-m-0 {
            margin: 0 !important;
        }
    }

    .btn {
        padding: 10px 17px;
        border-radius: 3px;
        background: #f4b71a;
        border: none;
        font-size: 12px;
        margin: 10px 5px;
    }

    .toolbar {
        background: #333;
        width: 100vw;
        position: fixed;
        left: 0;
        top: 0;
        text-align: center;
    }

    .cert-container {
        margin: 65px 0 10px 0;
        width: 100%;
        display: flex;
        justify-content: center;
        padding-left: 30rem;
        padding-bottom: 5rem;
    }

    .cert {
        width: 800px;
        height: 600px;
        padding: 15px 20px;
        text-align: center;
        position: relative;
        z-index: -1;
    }

    .cert-bg {
        position: absolute;
        left: 0px;
        top: 0;
        z-index: -1;
        width: 100%;
    }

    .cert-content {
        width: 750px;
        height: 455px;
        padding: 41px 60px 0px 60px;
        text-align: center;
        font-family: Arial, Helvetica, sans-serif;
    }



    h1 {
        font-size: 44px;
    }

    p {
        font-size: 25px;
    }

    small {
        font-size: 14px;
        line-height: 12px;
    }

    .bottom-txt {
        padding: 12px 5px;
        display: flex;
        justify-content: space-between;
        font-size: 16px;
    }

    .bottom-txt * {
        white-space: nowrap !important;
    }

    .other-font {
        font-family: Cambria, Georgia, serif;
        font-style: italic;
    }

    .ml-215 {
        margin-left: 215px;
    }

    .logoclass {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
    }
</style>

<body>
    <div class="toolbar no-print">
        <button class="btn btn-info" onclick="window.print()">
            Print Certificate
        </button>
        <button class="btn btn-info" id="downloadPDF">Download PDF</button>
    </div>
    <div class="cert-container print-m-0">
        <div id="content2" class="cert">
            <img src="{{ asset('public/cerbg.jpg') }}" class="cert-bg" alt="" />
            <div class="cert-content">
                <img src="{{ asset('public/sponser/quiz360.png') }}" alt="">
                <h1 class="other-font" style="font-family: 'Rochester', cursive;margin-top:0px;font-size: 39px;">
                    Certificate of Completion</h1>
                <span
                    style="font-size: 30px;font-family: 'Alex Brush', cursive;font-weight: 900;">{{ $customfunct->getUserName($users_get[0]->answerd_by) }}</span>
                <br /> <br />
                <span class="other-font"><i><b>has completed the</b></i></span>
                <br /><br />
                <span
                    style="font-size: 31px; font-family: 'Sail', cursive;"><b>{{ $info[0]->subjective_quiz_name }}</b></span>
                <br />
                <small>({{ $calculation->getGrad($users_get[0]->total_marks, $subject->quiz_number) }} Grade With
                    {{ ($users_get[0]->total_marks * 100) / $subject->quiz_number }})</small>
                <br /><br />
                <small style="font-family: 'Oswald', cursive;"><span
                        style="font-size: 30px;font-family: 'Alex Brush', cursive;font-weight: 600;">{{ $customfunct->getUserName($users_get[0]->answerd_by) }}</span>
                    Has Successfully Passed The Test With Number {{ $users_get[0]->total_marks }}</small>
                {{-- <div class="bottom-txt" style="margin-top:25px;font-family: 'Rochester', cursive;">
                    <div id="signature">
                        <hr style="margin-bottom: 0;width:80px">
                        <Span>Signature</Span>
                    </div>
                    <span style="font-size:20px;">{{ date('F d, Y') }}</span>
                </div> --}}
                <div class="logoclass">

                    <div>
                        <img src="{{ asset('public/sponser/bgcertificate.png') }}" width="48px" height=""
                            alt="">
                    </div>

                </div>


            </div>
        </div>
    </div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
<script type="text/javascript">
    $("#downloadPDF").click(function() {
        // $("#content2").addClass('ml-215'); // JS solution for smaller screen but better to add media queries to tackle the issue
        getScreenshotOfElement(
            $("div#content2").get(0),
            0,
            0,
            $("#content2").width() +
            45, // added 45 because the container's (content2) width is smaller than the image, if it's not added then the content from right side will get cut off
            $("#content2").height() +
            30, // same issue as above. if the container width / height is changed (currently they are fixed) then these values might need to be changed as well.
            function(data) {
                var pdf = new jsPDF("l", "pt", [
                    $("#content2").width(),
                    $("#content2").height(),
                ]);

                pdf.addImage(
                    "data:image/png;base64," + data,
                    "PNG",
                    0,
                    0,
                    $("#content2").width(),
                    $("#content2").height()
                );
                pdf.save("azimuth-certificte.pdf");
            }
        );
    });

    // this function is the configuration of the html2cavas library (https://html2canvas.hertzen.com/)
    // $("#content2").removeClass('ml-215'); is the only custom line here, the rest comes from the library.
    function getScreenshotOfElement(element, posX, posY, width, height, callback) {
        html2canvas(element, {
            onrendered: function(canvas) {
                // $("#content2").removeClass('ml-215');  // uncomment this if resorting to ml-125 to resolve the issue
                var context = canvas.getContext("2d");
                var imageData = context.getImageData(posX, posY, width, height).data;
                var outputCanvas = document.createElement("canvas");
                var outputContext = outputCanvas.getContext("2d");
                outputCanvas.width = width;
                outputCanvas.height = height;

                var idata = outputContext.createImageData(width, height);
                idata.data.set(imageData);
                outputContext.putImageData(idata, 0, 0);
                callback(outputCanvas.toDataURL().replace("data:image/png;base64,", ""));
            },
            width: width,
            height: height,
            useCORS: true,
            taintTest: false,
            allowTaint: false,
        });
    }
</script>

</html>
