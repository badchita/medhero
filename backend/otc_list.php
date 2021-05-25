<?php
header('Content-Type: application/json');
include("connectDB.php");

class otcList extends db_connect{
    public function fetchOtcList() {
        $conn = $this->db_connect();
        $result = array(); 
        $sql = "SELECT * 
                FROM otc_list;";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $stmt->bind_result($id, $title, $desription, $drug_name);

        while($stmt->fetch()){
            $temp = [
                'id'=>$id,
                'title'=>$title,
                'desription'=>$desription,
                '$drug_name'=>$drug_name,
            ];

            array_push($result, $temp);
        }

        return json_encode($result, JSON_PRETTY_PRINT);
    }
}

$otcList = new otcList();
echo $otcList->fetchOtcList();
?>