#lang racket

(provide mod-name pak-folder main.rkt)

(require racket/runtime-path)

(define
  mod-name
  "Crystals")

(define-runtime-path
  pak-folder
  "BuildUnreal/WindowsNoEditor/Crystals/Content/Paks/")

(define-runtime-path
  main.rkt
  "main.rkt")


