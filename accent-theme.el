;;; accent-theme.el --- Construction Paper Inspired Theme -*- lexical-binding: t; -*-

;; Copyright (C) 2021 Matthias Margush <matthias.margush@me.com>

;; Author: Matthias Margush <matthias.margush@me.com>
;; URL: https://github.com/matthias-margush/accent-theme
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.4.0"))
;; Keywords: theme, faces

;; This file is NOT part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING. If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; A theme centered around a single, configurable accent color

;; See the README for more info:
;; https://github.com/matthias-margush/accent-theme

(require 'accent-theme-faces)

;;; Variables:
(defgroup accent-theme nil
  "Construction paper inspired theme."
  :group 'accent-theme
  :prefix "accent-theme-")

;;; Code:

;;;  colors:
;; highlight
;; text
;; background
;; added, removed, changed
;; warning, error, suggestion
;; search highlight
;; selection highlight
;; navigable

(defvar accent-theme--accent)
(defvar accent-theme--highlight)

(defvar accent-theme--shadow-bright)
(defvar accent-theme--light-dark)

(defvar accent-theme--text)
(defvar accent-theme--background)

(defvar accent-theme--moss)
(defvar accent-theme--fire)
(defvar accent-theme--water)
(defvar accent-theme--bark)
(defvar accent-theme--soil)
(defvar accent-theme--sun )

(defvar accent-theme--added)
(defvar accent-theme--changed)
(defvar accent-theme--nav)
(defvar accent-theme--alert)

;; backgrounds
(defvar accent-theme--background)
(defvar accent-theme--background-medium )
(defvar accent-theme--background-dark)

;; inverted backgrounds
(defvar accent-theme--inverted-background)
(defvar accent-theme--inverted-background-medium)
(defvar accent-theme--inverted-background-bright)

(defvar accent-theme--warning)
(defvar accent-theme--block)
(defvar accent-theme--deemphasize)
(defvar accent-theme--doc)
(defvar accent-theme--good)
(defvar accent-theme--highlight-background)
(defvar accent-theme--highlight-foreground)
(defvar accent-theme--link)
(defvar accent-theme--removed)
;; (defvar accent-theme--text)
(defvar accent-theme--inverted-text)

(require 'color)

(defun accent-theme--hue (accent hue)
  ""
  (pcase-let ((`(,h ,s ,l) (apply #'color-rgb-to-hsl (color-name-to-rgb accent))))
    (apply #'color-rgb-to-hex
           (color-hsl-to-rgb (/ hue 360.0) s l))))

(defun accent-theme--lightness (accent lightness)
  ""
  (pcase-let ((`(,h ,s ,l) (apply #'color-rgb-to-hsl (color-name-to-rgb accent))))
    (apply #'color-rgb-to-hex
           (color-hsl-to-rgb h s lightness))))

(defun accent-theme--lightness-flip (accent)
  ""
  (pcase-let ((`(,h ,s ,l) (apply #'color-rgb-to-hsl (color-name-to-rgb accent))))
    (apply #'color-rgb-to-hex
           (color-hsl-to-rgb h s (- 1.0 l)))))

(defun accent-theme--saturation (accent saturation)
  ""
  (pcase-let ((`(,h ,s ,l) (apply #'color-rgb-to-hsl (color-name-to-rgb accent))))
    (apply #'color-rgb-to-hex
           (color-hsl-to-rgb h saturation l))))

(defun accent-theme-provide (theme-name accent adj sat-adj)
  (setq
   accent-theme--accent accent
   ;; (accent-theme--saturation
   ;;  (accent-theme--lightness-flip accent)
   ;;  0.7)

   accent-theme--highlight (accent-theme--lightness accent-theme--accent (funcall adj 0.9))
   accent-theme--inverted-text accent-theme--highlight
   accent-theme--text (accent-theme--lightness accent-theme--accent (funcall adj 0.01))

   ;; colors
   accent-theme--red (accent-theme--hue accent-theme--accent 0.0)
   accent-theme--yellow (accent-theme--hue accent-theme--accent 60.0)
   accent-theme--green (accent-theme--hue accent-theme--accent 120.0)
   accent-theme--cyan (accent-theme--hue accent-theme--accent 180.0)
   accent-theme--blue (accent-theme--hue accent-theme--accent 240.0)
   accent-theme--magenta (accent-theme--hue accent-theme--accent 300.0)

   ;; highlighters
   accent-theme--red-highlight (accent-theme--lightness accent-theme--red (funcall adj 0.8))
   accent-theme--blue-highlight (accent-theme--lightness accent-theme--blue (funcall adj 0.8))
   accent-theme--yellow-highlight (accent-theme--lightness accent-theme--yellow (funcall adj 0.8))
   accent-theme--green-highlight (accent-theme--lightness accent-theme--green (funcall adj 0.8))
   accent-theme--cyan-highlight (accent-theme--lightness accent-theme--cyan (funcall adj 0.8))
   accent-theme--magenta-highlight (accent-theme--lightness accent-theme--magenta (funcall adj 0.8))

   ;; backgrounds
   accent-theme--background (accent-theme--lightness
                             (color-desaturate-name accent-theme--accent sat-adj)
                             (funcall adj 1.0))
   accent-theme--background-medium (accent-theme--lightness
                                    (color-desaturate-name accent-theme--accent sat-adj)
                                    (funcall adj 0.96))
   accent-theme--background-dark (accent-theme--lightness
                                  (color-desaturate-name accent-theme--accent sat-adj)
                                  (funcall adj 0.92))

   ;; inverted backgrounds
   accent-theme--inverted-background
   (accent-theme--lightness
    (color-desaturate-name accent-theme--accent sat-adj)
    (funcall adj 0.0))

   accent-theme--inverted-background-medium
   (accent-theme--lightness
    (color-desaturate-name accent-theme--accent sat-adj)
    (funcall adj 0.2))

   accent-theme--inverted-background-bright
   (accent-theme--lightness
    (color-desaturate-name accent-theme--accent sat-adj)
    (funcall adj 0.4))

   accent-theme--shadow-bright accent-theme--inverted-background-medium
   accent-theme--light-dark accent-theme--background-medium

   accent-theme--string accent-theme--accent
   accent-theme--added accent-theme--blue
   accent-theme--removed accent-theme--red
   accent-theme--changed accent-theme--yellow
   accent-theme--added-highlight accent-theme--blue-highlight
   accent-theme--removed-highlight accent-theme--red-highlight
   accent-theme--changed-highlight accent-theme--yellow-highlight

   accent-theme--deemphasize
   (accent-theme--lightness
    (color-desaturate-name accent-theme--text 100)
    (funcall adj 0.5))

   accent-theme--doc accent-theme--deemphasize
   accent-theme--keyword accent-theme--accent
   accent-theme--highlight-background accent-theme--highlight
   accent-theme--highlight-foreground accent-theme--text
   accent-theme--link accent-theme--accent
   accent-theme--block accent-theme--background-medium

   accent-theme--moss accent-theme--green
   accent-theme--good accent-theme--green
   accent-theme--fire accent-theme--red
   accent-theme--alert accent-theme--red
   accent-theme--water accent-theme--blue
   accent-theme--nav accent-theme--blue
   accent-theme--bark accent-theme--accent
   accent-theme--soil accent-theme--accent
   accent-theme--sun accent-theme--yellow
   accent-theme--warning accent-theme--yellow)

  (accent-theme-faces theme-name))

;; (defvar accent-theme-accent "#DDC293")
(defvar accent-theme-accent "#56A375")
;; (defvar accent-theme-accent "green")
;; (defvar accent-theme-accent "blue")

(deftheme accent-light)
(accent-theme-provide 'accent-light accent-theme-accent (lambda (n) (max 0.0 n)) 0.0)

(deftheme accent-dark)
(accent-theme-provide 'accent-dark accent-theme-accent (lambda (n) (min 1.0 (- 1.15 n))) 100)

(provide 'accent-theme)

;;; accent-theme.el ends here
