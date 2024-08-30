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
    $tradeUnionName = $_POST['trade-union-name'];
    $address = $_POST['address'];
    $establishmentDate = $_POST['establishment-date'];
    $presidentName = $_POST['president-name'];
    $presidentNIC = $_POST['president-nic'];
    $presidentContact = $_POST['president-contact'];
    $presidentWhatsapp = $_POST['president-whatsapp'];
    $presidentEmail = $_POST['president-email'];
    $secretaryName = $_POST['secretary-name'];
    $secretaryNIC = $_POST['secretary-nic'];
    $secretaryContact = $_POST['secretary-contact'];
    $secretaryWhatsapp = $_POST['secretary-whatsapp'];
    $secretaryEmail = $_POST['secretary-email'];


    $uploadedFile = '';
    if (isset($_FILES['b-form']) && $_FILES['b-form']['error'] == 0) {
        $uploadedFile = $_FILES['b-form']['name'];
        $uploadDir = 'uploads/';
        if (!is_dir($uploadDir)) {
            mkdir($uploadDir, 0777, true);
        }
        $uploadFilePath = $uploadDir . basename($uploadedFile);
        move_uploaded_file($_FILES['b-form']['tmp_name'], $uploadFilePath);
    }

    $sql = "INSERT INTO trade_union (trade_union_name, address, establishment_date, president_name, president_nic, president_contact, president_whatsapp, president_email, secretary_name, secretary_nic, secretary_contact, secretary_whatsapp, secretary_email, b_form_path)
            VALUES ('$tradeUnionName', '$address', '$establishmentDate', '$presidentName', '$presidentNIC', '$presidentContact', '$presidentWhatsapp', '$presidentEmail', '$secretaryName', '$secretaryNIC', '$secretaryContact', '$secretaryWhatsapp', '$secretaryEmail', '$uploadFilePath')";

    if ($conn->query($sql) === TRUE) {
        echo "Form submitted successfully!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
