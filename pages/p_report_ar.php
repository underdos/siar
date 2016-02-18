<?php

//memanggil fpdf
require_once ("../func/fpdf/fpdf.php");
require_once ("../func/function.php");

//get the inforrmation
$nip = $_GET['nip'];
$period = $_GET['period'];
connect();
foreach(getName($nip) as $nama);

$pdf = new FPDF();
$pdf->AddPage('L','A4');
$pdf->SetLeftMargin(15);

$pdf->SetFont('Arial','B','12');
$pdf->Cell(0,10,"LAPORAN ACCOUNT RECEIVABLE PT. LUXINDO RAYA",0,1,'C');
$pdf->Ln(5);

$pdf->SetFont('Arial','','10');
$pdf->SetFillColor(241,178,178);
$pdf->SetDrawColor(255,255,255);
$pdf->Cell(25,6," NIP ",1,0,'L',true);
$pdf->Cell(5,6," : ",1,0,'L',true);
$pdf->Cell(50,6,$nip,1,0,'L',true);
$pdf->Ln();
$pdf->Cell(25,6," Nama ",1,0,'L',true);
$pdf->Cell(5,6," : ",1,0,'L',true);
$pdf->Cell(50,6,$nama['nama'],1,0,'L',true);
$pdf->Ln();
$pdf->Cell(25,6," Type ",1,0,'L',true);
$pdf->Cell(5,6," : ",1,0,'L',true);
$pdf->Cell(50,6,"Advance ",1,0,'L',true);
$pdf->Ln();
$pdf->Cell(25,6," Period ",1,0,'L',true);
$pdf->Cell(5,6," : ",1,0,'L',true);
$pdf->Cell(50,6,date('F',strtotime($period))." ".date('Y',strtotime($period)),1,0,'L',true);
$pdf->Ln();
$pdf->Ln();


//header table
$pdf->SetFont('Arial','B','10');
$pdf->SetFillColor(255,84,84);
$pdf->SetTextColor(255,255,255);
$pdf->SetDrawColor(255,255,255);
$pdf->Cell(10,6," No ",1,0,'C',true);
$pdf->Cell(20,6," Tanggal ",1,0,'C',true);
$pdf->Cell(30,6," Voucher ",1,0,'C',true);
$pdf->Cell(100,6," Description ",1,0,'C',true);
$pdf->Cell(30,6," Debit ",1,0,'C',true);
$pdf->Cell(30,6," Credit ",1,0,'C',true);
$pdf->Cell(45,6," Infos ",1,0,'C',true);
$pdf->Ln();

$pdf->SetFont('Arial','','8');
$pdf->SetFillColor(241,178,178);
$pdf->SetDrawColor(255,255,255);
$pdf->SetTextColor(0);
$i=1;
foreach(tampil_data_ar($nip, $period) as $data){
$pdf->Cell(10,6,$i,1,0,'C',true);
$pdf->Cell(20,6,$data['tgl'],1,0,'C',true);
$pdf->Cell(30,6,$data['voucher'],1,0,'C',true);
$pdf->Cell(100,6,$data['deskripsi'],1,0,'L',true);
$pdf->Cell(30,6,$data['debit'],1,0,'C',true);
$pdf->Cell(30,6,$data['credit'],1,0,'C',true);
$pdf->Cell(45,6,$data['remarks'],1,0,'C',true);	
$pdf->Ln();
$i++;

}
$pdf->Ln(2);
//header table
foreach(subtotal_ar($nip,$period) as $jumlah);
$pdf->SetFont('Arial','B','10');
$pdf->SetFillColor(255,84,84);
$pdf->SetTextColor(255,255,255);
$pdf->SetDrawColor(255,255,255);
$pdf->Cell(160,6," Subtotal ",1,0,'C',true);
$pdf->Cell(30,6,$jumlah['j
debit'],1,0,'C',true);
$pdf->Cell(30,6,$jumlah['jcredit'],1,0,'C',true);
$pdf->Cell(45,6,'',1,0,'C',true);
$pdf->Ln();


$pdf->Output($nip."_".$nama['nama']."_".date('F',strtotime($period))."_".date('Y',strtotime($period)).".pdf",'D');
?>