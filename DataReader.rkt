#lang rosette
 (require simple-xlsx)

; Reads in data from an excel file.
(provide read-in-data)
(define (read-in-data filename sheetNumber)
  (with-input-from-xlsx-file filename (lambda (xlsx)
  (define sheetName (list-ref (get-sheet-names xlsx) (- sheetNumber 1)))
    (load-sheet sheetName xlsx)
    ; We don't want to include the column labels.
    (list-tail (get-sheet-rows xlsx) 1)
  ))
)

; (read-in-data "foodData.xlsx" 2)