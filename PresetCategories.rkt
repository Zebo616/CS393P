#lang rosette
(require "NameClassifier.rkt")

; A compilation of preset categories to aid in classification.

(provide get-preset-categories)
(define (get-preset-categories)
  (define categories (list))
  ; add each preset category to the list
  (set! categories (append categories (list ())))
)
