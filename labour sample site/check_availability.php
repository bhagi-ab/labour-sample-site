<?php
$servername = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "trade_union_db";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $tradeUnionName = $_POST['trade_union_name'];
    $sql = "SELECT * FROM trade_union WHERE trade_union_name = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $tradeUnionName);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "not available";
    } else {
        echo "available";
    }

    $stmt->close();
}

$conn->close();
?>
