(menu-bar-mode -1)

;; General formatting
(require 'whitespace)
 (setq whitespace-style '(face empty tabs lines-tail trailing))
 (global-whitespace-mode t)

;; Google Specific
(require 'google nil 'noerror)
(require 'p4-google nil 'noerror)                ;; g4-annotate, improves find-file-at-point
(require 'compilation-colorization nil 'noerror) ;; colorizes output of (i)grep
(require 'rotate-clients nil 'noerror)           ;; google-rotate-client
(require 'rotate-among-files nil 'noerror)       ;; google-rotate-among-files
(require 'googlemenu nil 'noerror)               ;; handy Google menu bar
(require 'p4-files nil 'noerror)                 ;; transparent support for Perforce filesystem
(eval-after-load 'p4-files '(p4-enable-file-name-handler))  ;; Google file depot paths
(require 'google3 nil 'noerror)                  ;; magically set paths for compiling google3 code
(require 'google3-build nil 'noerror)            ;; support for blaze builds
(eval-after-load 'google3-build '(setq google-build-system "blaze")) ;; build options
(require 'csearch nil 'noerror)                  ;; Search the whole Google code base.


;; Required for init.
(provide 'init-local)
