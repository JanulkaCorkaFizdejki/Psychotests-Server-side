<?php
// Author: Robert Nowiński
// Email: nowinski.robert@gmail com
// Project: "PSYCHOTESTS" / AGH (PUM) / Kraków 2019 


require_once ('settings.php');

class DatabaseConnect extends Settings {
    private $db_currentConnect;
    private $db_serverName = self::DB_SERVER_NAME;
    private $db_userName = self::DB_USER_NAME;
    private $db_password = self::DB_PASSWORD;
    private $db_name = self::DB_NAME;
    private $dsn;
    private $db_error_message;
    private $tablename_QuestionsNameTest = "QuestionsNameTest"; // Table Question Name Test
    private $tablename_answerslist = "answerslist"; // Table Anwser List
    private $table_user = "user"; // Table user
    private $table_listoftestanswers = "listoftestanswers";


    function __construct () {
        $this -> dsn = 'mysql:dbname='.$this -> db_name.';host='.$this -> db_serverName;
        try {
            $dsn = $this -> dsn;
            $this -> db_currentConnect = new PDO ("$dsn", $this -> db_userName, $this -> db_password);
            $this -> db_currentConnect -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this -> db_currentConnect ->exec('SET NAMES utf8');
        }
        catch (PDOException $e) {
            $this -> db_error_message = "Connection failed: " . $e->getMessage();
        }
    }

    public function checkConnect () { // RETURN ARRAY 
        $array = array (); // [0] = STATUS, [1] = message
        if ( $this -> db_currentConnect) {
            array_push($array, 1, "Connect DB!");
        } else {
            array_push($array, 0, $this -> db_error_message);
        }
        return $array;
    }

    private function countRow () { // RETURN INT.
        if ($this -> checkConnect ()[0] == 1) {
            $question = 'SELECT id FROM '.$this -> tablename_QuestionsNameTest;
            $select = $this -> db_currentConnect -> query($question);
            $select -> execute();
            return count ($select -> fetchAll(PDO::FETCH_ASSOC));
        } else {return 0;}
    }

// M: A method that draws a unique pool of tests =============================================== //
// (pl) metoda losująca unikalną pulę testów --------------------------------------------------- //
    private function numberRandomTests ($pool_of_test) { // $pool_of_test Maximum number of tests to be drawn 
        if ($this -> countRow () > 0 && $this -> countRow () >= $pool_of_test) {
            $array = array();
            $row1 = rand (1, $this -> countRow ());
            array_push($array, $row1);
            do {
                $row2 = rand (1, $this -> countRow ());
            } while ($row1 == $row2);
            array_push($array, $row2);
            if ($pool_of_test > 2) {
                for ($i = 2; $i < $pool_of_test; $i++){
                    do {
                        $row = rand (1, $this -> countRow ());
                    } while (in_array($row, $array));
                array_push($array, $row);
                }
            }
            sort ($array);
            return $array;
        } 
        else { exit ("Failed: The number of expected tests is greater than the number of tests in the database!");}
    }

// M: A method that returns a unique pool of tests from a database based on a table returned by numberRandomTests ()
// (pl) Metoda zwracająca unikalną pulę testów z bazy danych na podstawie tablicy zwróconej przez numberRandomTests ()
    public function returnTests ($pool_of_test) {
        $numberRandomTests = $this -> numberRandomTests ($pool_of_test);
        $array = array ();
        $iterator = 1;
        $question = 'SELECT * FROM '.$this -> tablename_QuestionsNameTest;
        $select = $this -> db_currentConnect -> query($question)->fetchAll();
        $array2 = array();
        foreach ($select as $row) {
            for ($i = 0; $i < count ($numberRandomTests); $i++) {
                    if ($iterator == $numberRandomTests[$i]) {
                        array_push ($array, $row['questionname']);
                        $question = 'SELECT * FROM '.$this -> tablename_answerslist.'  WHERE id_question_name_list='.$row['id'];
                        $select = $this -> db_currentConnect -> query($question)->fetchAll();
                        for ($x = 0; $x < count($select); $x++){
                            $array2[$i][$x]= $select[$x]['answere'].'|'.$select[$x]['correct_answere'];
                        }
                    }
            }
            $iterator++;
        }
        return array ($array, $array2);
    }

    public function addData ($id_user, $id_tests, $points) {
        if ($this -> checkConnect ()[0] == 1) {
            $question = 'SELECT * FROM '.$this -> table_user;
            $array =  $this -> db_currentConnect -> query($question)->fetchAll();
            $check_row = 0;
            foreach ($array as $user) { // Check user in database
                if ($id_user == $user['id_user']) {
                    $check_row = 1;
                    $this -> addTest ($id_user, $id_tests, $points);
                    break;
                }
                else {} 
            }
            if ($check_row == 0) { // If user not exissts
                $sql = 'INSERT INTO '.$this -> table_user.' (id_user) VALUES (:id_user)';
                $db = $this -> db_currentConnect ->prepare($sql);
                $db -> bindParam (':id_user', $id_user);
                $db -> execute();
                $this -> addTest ($id_user, $id_tests, $points);
                return array ('output' => 'Testy zostały dodane!');
            } else { return array ('output' => 'Testy zostały dodane!');}
        } else {}
    }

    private function addTest ($id_user, $id_tests, $points) {
             $sql = 'INSERT INTO '.$this -> table_listoftestanswers.' (id_user, id_tests, points) VALUES (:id_user, :id_tests, :points)';
             $db = $this -> db_currentConnect ->prepare($sql);
             $db -> bindParam (':id_user', $id_user);
             $db -> bindParam (':id_tests', $id_tests);
             $db -> bindParam (':points', $points);
             $db -> execute();
        }

    public function showMyTests ($id_user) {
        if ($this -> checkConnect ()[0] == 1) {
            $question = 'SELECT * FROM '.$this -> table_listoftestanswers.' WHERE id_user="'.$id_user.'"';
            $array =  $this -> db_currentConnect -> query($question)->fetchAll();
            return $array;
        } else {

        }
    }

    public function deleteTest ($id_user, $id_data_test) {
        $sql = 'DELETE FROM '.$this -> table_listoftestanswers.' WHERE id_user = :id_user and datetime = :datetime';
        $db = $this -> db_currentConnect -> prepare($sql);
        $db -> bindParam(':id_user', $id_user); 
        $db -> bindParam(':datetime', $id_data_test);   
        $db -> execute();
        if ($db) {
            return array('output' => 'DELETE OK');
        } else {
            return array('output' => 'DELETE FAILED');
        }
    }

// D: disconnect ============================================================================== //
    function __destruct () {
        $this -> db_currentConnect = null;
    }
}
?>

