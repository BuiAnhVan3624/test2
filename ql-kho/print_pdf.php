<?php
include_once("ketnoi.php"); // Include file kết nối

use Dompdf\Dompdf;

if (isset($_GET['sophieuxuat'])) {
    $sophieuxuat = $_GET['sophieuxuat'];

    // Truy vấn cơ sở dữ liệu để lấy thông tin của phiếu mượn (sử dụng prepared statement)
    $stmt = $conn->prepare("SELECT phieuxuathang.sophieuxuat, nhanvien.hoten AS tennhanvien, phieuxuathang.ngayxuathang, khohang.tenkho, khachhang.tenkhachhang, sanpham.tensanpham, chitietphieuxuat.soluongxuat, sanpham.hinhanh
                            FROM phieuxuathang
                            INNER JOIN nhanvien ON phieuxuathang.tendangnhap = nhanvien.tendangnhap
                            INNER JOIN khohang ON phieuxuathang.makho = khohang.makho
                            INNER JOIN khachhang ON phieuxuathang.makhachhang = khachhang.makhachhang
                            INNER JOIN chitietphieuxuat ON phieuxuathang.sophieuxuat = chitietphieuxuat.sophieuxuat
                            INNER JOIN sanpham ON chitietphieuxuat.masanpham = sanpham.masanpham
                            WHERE phieuxuathang.sophieuxuat = ?");
    $stmt->bind_param("s", $sophieuxuat);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Bắt đầu tạo nội dung HTML cho tài liệu PDF
        $html = "<style>";
        $html .= "@font-face { font-family: 'DejaVu Sans'; src: url('fonts/Arial.ttf') format('truetype'); }";
        $html .= "body { font-family: 'DejaVu Sans', sans-serif; }";
        $html .= "</style>";
        $html .= "<h1>Thông tin phiếu mượn</h1>";
        $html .= "<table border='1'>";
        $html .= "<thead>";
        $html .= "<tr>";
        $html .= "<th>Mã phiếu mượn</th>";
        $html .= "<th>Tên nhân viên</th>";
        $html .= "<th>Ngày mượn</th>";
        $html .= "<th>Kho</th>";
        $html .= "<th>Khách mượn</th>";
        $html .= "<th>Sản phẩm mượn</th>";
        $html .= "<th>Số lượng mượn</th>";
        $html .= "</tr>";
        $html .= "</thead>";
        $html .= "<tbody>";
        
        // Thêm thông tin của phiếu mượn vào table
        while ($row = $result->fetch_assoc()) {
            $html .= "<tr>";
            $html .= "<td>" . $row["sophieuxuat"] . "</td>";
            $html .= "<td>" . $row["tennhanvien"] . "</td>";
            $html .= "<td>" . $row["ngayxuathang"] . "</td>";
            $html .= "<td>" . $row["tenkho"] . "</td>";
            $html .= "<td>" . $row["tenkhachhang"] . "</td>";
            $html .= "<td>" . $row["tensanpham"] . "</td>";
            $html .= "<td>" . $row["soluongxuat"] . "</td>";
            $html .= "</tr>";
        }
        
        $html .= "</tbody>";
        $html .= "</table>";
        

        // Bao gồm thư viện Dompdf
        require_once 'vendor/autoload.php';

        // Tạo một đối tượng Dompdf
        $dompdf = new Dompdf();

        // Chỉ định font chữ cho tài liệu PDF
        $dompdf->set_option('isHtml5ParserEnabled', true);
        $dompdf->set_option('isPhpEnabled', true);
        $dompdf->set_option('defaultFont', 'Arial');

        // Load HTML vào tài liệu PDF
        $dompdf->loadHtml($html);

        // Render tài liệu PDF
        $dompdf->render();

        // Ghi tài liệu PDF ra đầu ra (ví dụ: hiển thị trong trình duyệt hoặc tải xuống)
        $dompdf->stream("phieu_muon.pdf");
    } else {
        echo "Không tìm thấy thông tin phiếu mượn";
    }

    // Đóng kết nối
    $stmt->close();
}
?>
