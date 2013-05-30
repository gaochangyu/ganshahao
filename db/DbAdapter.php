<?php
require_once(dirname(__FILE__) . '/db_config.php');

class DbAdapter {
    private $_db;

    public function __construct(){
        $this->_db = new mysqli(MYSQL_HOST, MYSQL_USER_NAME, MYSQL_PASSWORD) or die('could not connect to database'.mysqli_error);
        $this->_db->select_db(DB_NAME) or die("could not select " . DB_NAME . " : " . mysqli_error);
    }

    public function format( $data = null){
        return array($data, $this->errno(), $this->errmsg());
    }
    public function errno() {
        return $this->_db->errno;
    }

    public function errmsg() {
        return $this->_db->errmsg;
    }

    public function escape($string) {
        return mysql_escape_string($string);
    }

    public function runSql($sql) {
        $result = $this->_db->query($sql);
        return $this->format($result->affected_rows);
    }

    public function getVar($sql) {
        $result = $this->_db->query($sql);
        return $this->format($result->fetch_assoc());
    }

    public function getData($sql) {
        $result = $this->_db->query($sql);
        for($i = 0; $i<$result->num_rows; $i++)
            $data[$i] = $result->fetch_assoc();
        return $this->format($data);
    }

    public function getLine($sql) {
        $result = $this->_db->query($sql);
        return $this->format($result->fetch_assoc());
    }

    private function format_data($params, $separator = ','){
        $str = $s = '';
        foreach ($params as $k => $v) {
            $v = $this->escape($v);
            $v = is_int($v) ? $v : "'{$v}'";
            $str .= $s . "`{$k}`={$v}";
            $s = $separator;
        }
        return $str;
    }

    private function format_list_to_string($list) {
        $list_string = '';
        foreach($list as $e) {
            $e = $this->escape($e);
            if($list_string == '') {
                $list_string = "'{$e}'";
            } else {
                $list_string .= ", '{$e}'";
            }
        }
        return $list_string;
    }

    ##################
    # user
    ##################

    /*
    * @param params:Array
    * @return affected rows
    */
    public function insert_user($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    user
                SET
                    {$data}";
        return $this->runSql($sql);
    }

    /*
    * @param id:int
    * @param params:Array
    * @return affected rows
    */
    public function update_user($id, $params) {
        $data = $this->format_data($params);
        $sql = "UPDATE
                    user
                SET
                    {$data}
                WHERE
                    id = {$id}";
        return $this->runSql($sql);
    }

    /*
    * @param email:string
    * @return user_info:Array or null
    */
    public function select_user_by_email($email) {
        $email = $this->escape($email);
        $sql = "SELECT
                    *
                FROM
                    user
                WHERE
                    email = '{$email}'
                LIMIT 1";
        return $this->getLine($sql);
    }

    ##################
    # company
    ##################
    public function insert_company($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    company
                SET
                    {$data}";
        return $this->runSql($sql);
    }

    public function select_company_by_id($id) {
        $id = $this->escape($id);
        $sql = "SELECT
                    *
                FROM
                    company
                WHERE
                    id = {$id}";
        return $this->getLine($sql);
    }

    public function select_jobs_by_company_id($id) {
        $id = $this->escape($id);
        $sql = "SELECT
                    *
                FROM
                    job
                WHERE
                    company_id = {$id}";
        return $this->getData($sql);
    }

    public function select_candidates_by_company_id($id) {
        $id = $this->escape($id);
        $sql = "SELECT
                    user_id, job_id
                FROM
                    job_application
                WHERE
                    job_id
                IN
                    (SELECT
                        id
                    FROM
                        job
                    WHERE
                        company_id = {$id})";
        return $this->getData($sql);
    }

    ##################
    # job
    ##################
    public function insert_job($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    job
                SET
                    {$data}, update_time = NOW()";
        return $this->runSql($sql);
    }

    public function updata_job($id, $params) {
        $data = $this->format_data($params);
        $sql = "UPDATE
                    job
                SET
                    {$data}
                WHERE
                    id = {$id}";
        return $this->runSql($sql);
    }

    public function select_trainings_by_job_id($id) {
        $id = $this->escape($id);
        $sql = "SELECT
                    *
                FROM
                    training
                WHERE
                    job_id = {$id}";
        return $this->getData($sql);
    }

    public function select_job_list_by_zip_code($zip_code) {
        $zip_code = $this->escape($zip_code);
        $sql = "SELECT
                    job.id as job_id,
                    company.id as company_id,
                    company.name as company_name,
                    job.name as job_name
                FROM
                    job, company
                WHERE
                    company.id = job.company_id and
                    job.zip_code = {$zip_code}";
        return $this->getData($sql);
    }

    ##################
    # training
    ##################
    public function insert_training($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    training
                SET
                    {$data}";
        return $this->runSql($sql);
    }

    public function update_training($id, $params) {
        $data = $this->format_data($params);
        $sql = "UPDATE
                    training
                SET
                    {$data}
                WHERE
                    id = {$id}";
        return $this->runSql($sql);
    }

    ##################
    # question
    ##################
    public function insert_question($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    question
                SET
                    {$data}";
        return $this->runSql($sql);
    }

    public function update_question($id, $params) {
        $data = $this->format_data($params);
        $sql = "UPDATE
                    question
                SET
                    {$data}
                WHERE
                    id = {$id}";
        return $this->runSql($sql);
    }

    public function select_questions_by_training_id($id) {
        $id = $this->escape($id);
        $sql = "SELECT
                    *
                FROM
                    question
                WHERE
                    training_id = {$id}";
        return $this->getData($sql);
    }

    ##################
    # training_completed
    ##################
    public function insert_training_complete($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    training_completed
                SET
                    {$data}";
        return $this->runSql($sql);
    }

    public function count_training_complete_by_user_id($id) {
        $id = $this->escape($id);
        $sql = "SELECT
                    count(training_id) as count
                FROM
                    training_completed
                WHERE
                    user_id = {$id}";
        return $this->getVar($sql);
    }

    ##################
    # job_application
    ##################
    public function insert_job_application($params) {
        $data = $this->format_data($params);
        $sql = "INSERT INTO
                    job_application
                SET
                    {$data}";
        return $this->runSql($sql);
    }

    public function get_status_by_job_id_and_user_id($job_id, $user_id) {
        $job_id  = $this->escape($job_id);
        $user_id = $this->escape($user_id);
        $sql = "SELECT
                    status
                FORM
                    job_application
                WHERE
                    job_id = {$job_id} and user_id = {$user_id}";
        return $this->getVar($sql);
    }
}
?>
