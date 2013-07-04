<?php
    require_once "$_SERVER[DOCUMENT_ROOT]/db/DbAdapter.php";
    
    $_db = new DbAdapter();
    
    $zipcode = '阿土伯';
        $sql = "SELECT
                    DISTINCT company.id as company_id,
                    company.name as company_name,
                    company.logo as company_logo
                FROM
                    job, company
                WHERE
                    job.company_id = company.id
                        AND
                    job.zipcode = 'asd'";
    //print_r($_db->getData($sql));
    
        $id = 1;
        $sql = "SELECT
                    id as id,
                    training_type as type,
                    name as name,
                    description as description,
                    link as link,
                    training_order as traing_order
                FROM
                    training
                WHERE
                    id = {$id}";
        //print_r( $_db->getLine($sql));
        
        $id  = 1;
        $data = 1;
        $sql = "update
                    job_application
                SET
                    status = {$data}
                WHERE
                    id = {$id}";
        //$_db->runSql($sql);
        
           $sql = "SELECT
                    DISTINCT company.id as company_id,
                    company.name as company_name,
                    company.logo as company_logo,
                    job.district as job_district,
                    job.zipcode  as job_zipcode
                FROM
                    job, company
                WHERE
                    job.company_id = company.id
                        AND
                    job.zipcode = '武东路'";
        //print_r( $_db->getData($sql));
        
        $id = 2;
        $sql = "SELECT
                    training.name as training_name,
                    training.job_id as job_id,
                    training_completed.score as score,
                    count(DISTINCT training.id)
                FROM
                    training, training_completed
                WHERE
                    training_completed.user_id = {$id}
                        AND
                    training_completed.training_id = training.id 
                GROUP By
                    training.id";
        print_r($_db->getData($sql));
?>