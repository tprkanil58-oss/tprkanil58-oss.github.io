<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kod ile Uçak Tasarımı</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #1a1c23;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: sans-serif;
        }

        /* Uçak Gövdesi */
        .airplane {
            position: relative;
            animation: fly 3s ease-in-out infinite alternate;
        }

        .body {
            width: 150px;
            height: 40px;
            background: #e74c3c;
            border-radius: 20px 50px 30px 20px;
            position: relative;
        }

        /* Kanatlar */
        .wing {
            position: absolute;
            background: #c0392b;
            width: 40px;
            height: 100px;
            left: 50px;
            top: -30px;
            border-radius: 10px;
            transform: skewX(-10deg);
            z-index: -1;
        }

        /* Kuyruk */
        .tail {
            position: absolute;
            background: #c0392b;
            width: 30px;
            height: 40px;
            left: 5px;
            top: -25px;
            border-radius: 5px;
            transform: skewX(-20deg);
        }

        /* Pervane Motoru */
        .propeller-nose {
            position: absolute;
            right: -10px;
            top: 10px;
            width: 15px;
            height: 20px;
            background: #f1c40f;
            border-radius: 0 5px 5px 0;
        }

        /* Dönen Pervane */
        .propeller {
            position: absolute;
            right: -15px;
            top: -15px;
            width: 6px;
            height: 70px;
            background: #ecf0f1;
            border-radius: 3px;
            animation: spin 0.2s linear infinite;
        }

        /* Animasyonlar */
        @keyframes fly {
            0% { transform: translateY(0) rotate(0deg); }
            100% { transform: translateY(-20px) rotate(2deg); }
        }

        @keyframes spin {
            100% { transform: rotate(360deg); }
        }
    </style>
</head>
<body>

    <div class="airplane">
        <div class="tail"></div>
        <div class="wing"></div>
        <div class="body">
            <div class="propeller-nose">
                <div class="propeller"></div>
            </div>
        </div>
    </div>

</body>
</html>
