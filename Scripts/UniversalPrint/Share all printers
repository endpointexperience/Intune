###Share all printers###
Import-Module UniversalPrintManagement
connect-uPService

$printers = get-upprinter
foreach($printer in $printers.results){
    new-upprintershare -PrinterId $printer.id -ShareName $printer.displayname -confirm
}
