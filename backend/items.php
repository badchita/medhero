<?php
header('Content-Type: application/json');
include("connectDB.php");

class items extends db_connect{
    public function getAllItem() {
        $conn = $this->db_connect();
        $result = array(); 
        $sql = "SELECT id, item_name, item_price, item_color, item_brand 
                FROM items;";

        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $stmt->bind_result($id, $item_name, $item_price, $item_color, $item_brand);

        while($stmt->fetch()){
            $temp = [
                'id'=>$id,
                'item_name'=>$item_name,
                'item_price'=>$item_price,
                'item_color'=>$item_color,
                'item_brand'=>$item_brand,
            ];

            array_push($result, $temp);
        }

        return json_encode($result, JSON_PRETTY_PRINT);
    }
}

$items = new items();
echo $items->getAllItem();
?>