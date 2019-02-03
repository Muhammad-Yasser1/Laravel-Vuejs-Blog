<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name='csrf-token' content='{{ csrf_token() }}'>
    <title>MoBlog</title>
    <link rel="stylesheet" href="{{ mix('css/app.css') }}">
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css' />
    <link href="https://fonts.googleapis.com/css?family=Prompt:200,300,400,500,700" rel="stylesheet">
    <link href="https://unpkg.com/nprogress@0.2.0/nprogress.css" rel="stylesheet" />
    <script src="https://unpkg.com/nprogress@0.2.0/nprogress.js"></script>
</head>

<body>

    <div id="app">
        <App></App>
    </div>

    <script src="{{ mix('js/app.js') }}"></script>
</body>

</html>