<?php
function printArray($arr){
    $len = count($arr);
    for($i=0;$i<$len;$i++){
        echo $arr[$i];
        echo "\n<br>\n";
    }
}
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
    if ($extension != "zip") {
        $command = "g++ -S \"$fullName.$extension\" -o \"$fullName.s\" 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            printArray($message);
            die("g++ compiler error!");
        }
        $command = "python3 \"$scriptDirName\" \"$fullName.s\"" . ($STL?" --enable-stl ":"") . ($PLT?" --enable-plt ":"") . " 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            printArray($message);
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
            printArray($message);
            die("unzip error!");
        }
        if (file_exists($fullName . '/main.cpp')) $extension = 'cpp';
        else if (file_exists($fullName . '/main.c')) $extension = 'c';
        else die("No entrypoint file named main.c/main.cpp! Please check!");
        $command = "g++ -S \"$fullName/main.$extension\" -o \"$fullName/main.s\" 2>&1";
        exec($command,$message,$retCode);
        if($retCode != 0){
            printArray($message);
            die("g++ compiler error!");
        }
        $command = "python3 \"$scriptDirName\" \"$fullName/main.s\"" . ($STL?" --enable-stl ":"") . ($PLT?" --enable-plt ":"") . " 2>&1";
        echo $command;
        exec($command,$message,$retCode);
        if($retCode != 0){
            printArray($message);
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
    <form method="post" enctype="multipart/form-data" role="form">
        <div class="checkbox">
            <label><input type="checkbox" class="form-control" name="STL">Enable STL</label>
            <br>
            <label>(Also Draw Call Graph of functions in C++ Standard Library)</label>
        </div>
        <div class="checkbox">
            <label><input type="checkbox" class="form-control" name="PLT">Enable PLT</label>
            <br>
            <label>(Also Draw Call Graph of EXTERNAL functions in LIBC(Runtime Library))</label>
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