<?php
require MODX_BASE_PATH . 'vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// === Создание структуры директорий ===
$uploadDir = MODX_CORE_PATH . 'files/order-excel/' . date('Y') . '/' . date('M') . '/';
if (!is_dir($uploadDir)) {
    mkdir($uploadDir, 0775, true);
}

// === Создание Excel-документа ===
$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();

$row = 1;
$sheet->setCellValue("A{$row}", 'Заявка от');
$sheet->setCellValue("B{$row}", 'Физическое лицо');

$row += 2;
$sheet->setCellValue("A{$row}", 'Информация о клиенте:');
$row += 1;

foreach ($form_data as $label => $value) {
    $sheet->setCellValue("A{$row}", $label);
    $sheet->setCellValue("B{$row}", $value);
    $row++;
}

$row += 1;
$sheet->setCellValue("A{$row}", 'Заказ:');
$row++;

$sheet->setCellValue("A{$row}", 'Наименование');
$sheet->setCellValue("B{$row}", 'Кол-во');
$sheet->setCellValue("C{$row}", 'Цена за единицу');
$sheet->setCellValue("D{$row}", 'Сумма');
$row++;

$total = 0;

foreach ($products as $product) {
    $sum = $product['count'] * $product['price'];
    $total += $sum;

    $sheet->setCellValue("A{$row}", $product['pagetitle']);
    $sheet->setCellValue("B{$row}", $product['count']);
    $sheet->setCellValue("C{$row}", $product['price']);
    $sheet->setCellValue("D{$row}", $sum);
    $row++;
}

$row += 2;
$sheet->setCellValue("A{$row}", 'Доставка');
$row++;
$sheet->setCellValue("A{$row}", 'Адрес доставки');
$sheet->setCellValue("B{$row}", $form_data['Адрес']);

// === Сохранение файла ===
$filename = 'order_' . date('Ymd_His') . '.xlsx';
$filepath = $uploadDir . $filename;

$writer = new Xlsx($spreadsheet);
$writer->save($filepath);

// === Вернуть путь или что-то сделать ===
return $filepath;
