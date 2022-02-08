<?php
putenv('PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games');
if (isset($_FILES["file"])) {
    if ($_FILES["file"]["error"] > 0)
        die("Error:" . $_FILES["file"]["error"]);
    $allowedExts = array("cpp", "c", "zip");
    $temp = explode(".", $_FILES["file"]["name"]);
    $extension = end($temp);
    if ($_FILES["file"]["size"] > 1048576 || !in_array($extension, $allowedExts))
        die("Size transcended the limit or Not acceptable file type!");
    $rootDir = dirname(__FILE__);
    $fileMD5 = md5($_FILES["file"]["tmp_name"]);
    $fileName = $fileMD5;
    $fullName = $rootDir . "/tmp/" . $fileName;
    $scriptDirName = $rootDir . '/CallGraph.py';
    move_uploaded_file($_FILES["file"]["tmp_name"], $fullName . '.' . $extension);
    $retCode = 1;
    $message = "";
    $STL = isset($_POST['STL']);
    $PLT = isset($_POST['PLT']);
    $igraph = isset($_POST['igraph']);
    if ($extension != "zip") {
        $command = "g++ --std=c++17 -S \"$fullName.$extension\" -o \"$fullName.s\" 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            die("g++ compiler error!");
        }
        $command = "callgraph -f \"$fullName.s\"" . ($STL?" --enable-stl ":"") . ($PLT?" --enable-plt ":"") . ($igraph?" -d igraph ":"") . " 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            die("Script execution error!");
        }
        header("Location:  tmp/$fileMD5.png");
    } else {
        $command = "unzip -l \"$fullName.zip\" | grep php 2>&1";
        exec($command,$message,$retCode);
        if(count($message)){
            die("Don't try to do bad things!");
        }
        $command = "unzip \"$fullName.zip\" -d \"$fullName\" 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            die("unzip error!");
        }
        if (file_exists($fullName . '/main.cpp')) $extension = 'cpp';
        else if (file_exists($fullName . '/main.c')) $extension = 'c';
        else die("No entrypoint file named main.c/main.cpp! Please check!");
        $command = "g++ --std=c++17 -S \"$fullName/main.$extension\" -o \"$fullName/main.s\" 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            die("g++ compiler error!");
        }
        $command = "callgraph -f \"$fullName/main.s\"" . ($STL?" --enable-stl ":"") . ($PLT?" --enable-plt ":"") . ($igraph?" -d igraph ":"") . " 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            die("Script execution error!");
        }
        header("Location:  tmp/$fileMD5/main.png");
    }
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Call Graph Generator</title>
</head>
<body>
<div style="text-align: center;" class="container">
    <div class="alert alert-primary" role="alert">
        Call Graph Generator
    </div>
    <div class="alert alert-secondary" role="alert">
        Please submit your .cpp/.c/.zip file.
        <br>
        If you have .h or .hpp files customized, rename your ENTRYPOINT .c/.cpp file to main.c/main.cpp and simply pack them with your main code file in ZIP format.
        <br>
        File size must be less than 1MB.
    </div>
	<div class="alert alert-warning" role="alert">
		Compiler Command: g++ --std=c++17 -S main.cpp -o main.s
		<br>
		For security reasons, g++ compiler error log won't show in the result page if your program has a syntax error. Please try with the above command in your local LINUX machine to find out where the error is located and what it is in order to fix it.
		<br>
		If you encountered any problem in the usage, please click the copyright information hyperlink to open an issue. The repo's maintainer is glad to solve your problem.
	</div>
    <form method="post" enctype="multipart/form-data" role="form">
        <div class="checkbox">
            <label><input type="checkbox" class="form-control" name="STL">Draw STL Functions</label>
            <br>
            <label>(Also Draw Call Graph of functions in C++ Standard Library)</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" class="form-control" name="PLT">Draw PLT Functions</label>
            <br>
            <label>(Also Draw Call Graph of EXTERNAL functions in PLT (IMPORT TABLE) )</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" class="form-control" name="igraph">Use igraph plotter</label>
            <br>
            <label>(Check to use python-igraph plotter, default pygraphviz)</label>
        </div>
        <input type="file" class="form-control" name="file" id="file">
        <br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <br>
    <p>Powered by <a href="https://github.com/bjrjk/LinuxASMCallGraph">bjrjk/LinuxASMCallGraph</a></p>
</div>
</body>
</html>
