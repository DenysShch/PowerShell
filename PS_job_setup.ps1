."K:\02_Data_integrity\03_Articles\11_Templates\41_PS_log\core.ps1"

$excel_file_name = "My job name" 
$excel_file_location = "Path to your excel-file K:\Check_Add_Errors.xlsm"
$excel_file_macro_name = "Excel Macros name" # or $null

$teradata_conn = $True  # or $True
$oracle_conn =  $False # or $False

$copy_file_to = "Q:\Buyers\" # or #$False
$fastload_file_location = $False  # or "K:\03_Merchandising\02_Planograms\05_POG_Data\Fastload2\upload_pog_info.fld" 
$SQL_macro_file = $False #or "K:\03_Merchandising\02_Planograms\05_POG_Data\fastload2\Update_MDW_SQL.txt"
$if_save_file = $True # or $False
$if_refresh = $False  # or $True


job_settings $excel_file_name $excel_file_location $excel_file_macro_name $teradata_conn $oracle_conn $copy_file_to $fastload_file_location $if_save_file $SQL_macro_file $if_refresh|
	Wait-Process
