<?php
header('Content-Type: application/json');
include("connectDB.php");

class prescriptionList extends db_connect{
    public function fetchprescriptionList() {
        $conn = $this->db_connect();
        $result = array(); 
        $sql = "SELECT * 
                FROM prescription_list;";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $stmt->bind_result($id, $title, $desription, $price, $medical_uses);

        while($stmt->fetch()){
            $temp = [
                'id'=>$id,
                'title'=>$title,
                'desription'=>$desription,
                'price'=>$price,
                'medical_uses'=>$medical_uses,
            ];

            array_push($result, $temp);
        }

        return json_encode($result, JSON_PRETTY_PRINT);
    }
}

$prescriptionList = new prescriptionList();
echo $prescriptionList->fetchprescriptionList();
?>