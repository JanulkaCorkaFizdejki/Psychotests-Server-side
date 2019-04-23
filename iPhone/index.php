<?php

// Author: Robert Nowiński
// Email: nowinski.robert@gmail com
// Project: "PSYCHOTESTS" / AGH (PUM)/ Kraków 2019 

require_once ('php_class/controller.php');
$show = new Controller ();

if (isset ($_GET['data'])) {
    if ($_GET['data'] == 'testhtml') {
        $show -> showTestHTML (10);
    } else if ($_GET['data'] == 'testjson') {
        header('Content-type: application/json');
        $show -> showTestJSON (10);
    } else if ($_GET['data'] == 'imgtesthtml') {
        $show -> ShowImageIshiharaTestHTML (10);
    }
    else if ($_GET['data'] == 'imgtestjson') {
        header('Content-type: application/json');
        $show -> ShowImageIshiharaTestJSON (10);
    }
    else if ($_GET['data'] == 'ravenjson') {
        header('Content-type: application/json');
        $show -> ShowRavenTestsJSON(10);
    }
    else if ($_GET['data'] == 'addtest') {
        header('Content-type: application/json');
        if(strcasecmp($_SERVER['REQUEST_METHOD'], 'POST') != 0){
            throw new Exception('Request method must be POST!');}
            else {
                $contentType = isset($_SERVER["CONTENT_TYPE"]) ? trim($_SERVER["CONTENT_TYPE"]) : '';
                if(strcasecmp($contentType, 'application/json') != 0){
                    throw new Exception('Content type must be: application/json');
                } else {
                        $content = trim(file_get_contents("php://input"));
                        $decoded = json_decode($content, true);
                        if(!is_array($decoded)){
                            throw new Exception('Received content contained invalid JSON!');
                        } else {
                            $output =  $show -> AddResult ($decoded['customerID'], $decoded['testNumber'], $decoded['sumOfPoints']);
                            echo json_encode($output);
                        }
                    }
            }
        } else if ($_GET['data'] == 'showmytests') {
            header('Content-type: application/json');
            if(strcasecmp($_SERVER['REQUEST_METHOD'], 'POST') != 0){
                throw new Exception('Request method must be POST!');}
                else{
                    $contentType = isset($_SERVER["CONTENT_TYPE"]) ? trim($_SERVER["CONTENT_TYPE"]) : '';
                    if(strcasecmp($contentType, 'application/json') != 0){
                        throw new Exception('Content type must be: application/json');
                    } else {
                        $content = trim(file_get_contents("php://input"));
                        $decoded = json_decode($content, true);
                        if(!is_array($decoded)){
                            throw new Exception('Received content contained invalid JSON!');
                        } else {
                            $output =  $show -> ShowMyTests($decoded['customerID']);
                            echo json_encode($output);
                        }
                    }
                }
        } else if ($_GET['data'] == "deletetest") {
            header('Content-type: application/json');
            if(strcasecmp($_SERVER['REQUEST_METHOD'], 'POST') != 0){
                throw new Exception('Request method must be POST!');}
             else {
                $contentType = isset($_SERVER["CONTENT_TYPE"]) ? trim($_SERVER["CONTENT_TYPE"]) : '';
                if(strcasecmp($contentType, 'application/json') != 0){
                    throw new Exception('Content type must be: application/json');
                } else {
                    $content = trim(file_get_contents("php://input"));
                    $decoded = json_decode($content, true);
                    if(!is_array($decoded)){
                        throw new Exception('Received content contained invalid JSON!');
                    } else {
                        $output = $show -> DeleteTest ($decoded['id_user'], $decoded['id_data_test']);
                        echo json_encode($output);
                    }
                }
            }
        }
    }
    


else {
    $show -> showTestHTML (10);
}



?>
