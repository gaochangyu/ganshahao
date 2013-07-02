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
        print_r( $_db->getLine($sql));
?>