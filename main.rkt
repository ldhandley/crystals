#lang codespells

(require crystals/mod-info)

(define-classic-rune (orange-crystal)
  #:background "blue"
  #:foreground (circle 40 'solid 'orange)
  (with-scale 5 (spawn-mod-blueprint pak-folder mod-name "OrangeCrystal")))

(define-classic-rune (green-crystal)
  #:background "blue"
  #:foreground (circle 40 'solid 'green)
  (with-scale 5 (spawn-mod-blueprint pak-folder mod-name "GreenCrystal")))

(define-classic-rune (blue-crystal)
  #:background "blue"
  #:foreground (circle 40 'solid 'blue)
  (with-scale 5 (spawn-mod-blueprint pak-folder mod-name "BlueCrystal")))

(define-classic-rune (dark-crystal)
  #:background "blue"
  #:foreground (circle 40 'solid 'purple)
  (with-scale 5 (spawn-mod-blueprint pak-folder mod-name "DarkCrystal")))

(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (orange-crystal green-crystal blue-crystal dark-crystal))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".."))


  (once-upon-a-time
   #:world (arena-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))