;;; accent-light-theme.el --- Construction Paper Light Theme

;; Copyright (C) 2021 Matthias Margush <matthias.margush@gmail.com>

;; Author: Matthias Margush <matthias.margush@me.com>
;; URL: https://github.com/matthias-margush/accent-theme-emacs
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

;; Construction paper-inspired theme

;; See the README for more info:
;; https://github.com/matthias-margush/accent-theme-emacs

;;; Code:
(deftheme accent-light)

(require 'accent-theme-faces)

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
    (message "l: %s" l)
    (apply #'color-rgb-to-hex
           (color-hsl-to-rgb h s lightness))))

(defun accent-light-theme-provide ()
  (interactive)
  (setq accent-theme--accent "#56A375"
        accent-theme--highlight (accent-theme--lightness accent-theme--accent 0.9)
        accent-theme--inverted-text accent-theme--highlight
        accent-theme--text "black"
        accent-theme--background "white"

        ;; colors
        accent-theme--red (accent-theme--hue accent-theme--accent 0.0)
        accent-theme--yellow (accent-theme--hue accent-theme--accent 60.0)
        accent-theme--green (accent-theme--hue accent-theme--accent 120.0)
        accent-theme--cyan (accent-theme--hue accent-theme--accent 180.0)
        accent-theme--blue (accent-theme--hue accent-theme--accent 240.0)
        accent-theme--magenta (accent-theme--hue accent-theme--accent 300.0)

        ;; highlighters
        accent-theme--red-highlight (accent-theme--lightness accent-theme--red 0.8)
        accent-theme--blue-highlight (accent-theme--lightness accent-theme--blue 0.8)
        accent-theme--yellow-highlight (accent-theme--lightness accent-theme--yellow 0.8)
        accent-theme--green-highlight (accent-theme--lightness accent-theme--green 0.8)
        accent-theme--cyan-highlight (accent-theme--lightness accent-theme--cyan 0.8)
        accent-theme--magenta-highlight (accent-theme--lightness accent-theme--magenta 0.8)

        ;; backgrounds
        accent-theme--background (accent-theme--lightness accent-theme--accent 1.0)
        accent-theme--background-medium (accent-theme--lightness accent-theme--accent 0.97)
        accent-theme--background-dark (accent-theme--lightness accent-theme--accent 0.94)

        ;; inverted backgrounds
        accent-theme--inverted-background (accent-theme--lightness accent-theme--accent 0.0)
        accent-theme--inverted-background-medium (accent-theme--lightness accent-theme--accent 0.3)
        accent-theme--inverted-background-bright (accent-theme--lightness accent-theme--accent 0.6)

        accent-theme--shadow-bright accent-theme--inverted-background-medium
        accent-theme--light-dark accent-theme--background-medium

        accent-theme--added accent-theme--blue
        accent-theme--removed accent-theme--red
        accent-theme--changed accent-theme--yellow
        accent-theme--added-highlight accent-theme--blue-highlight
        accent-theme--removed-highlight accent-theme--red-highlight
        accent-theme--changed-highlight accent-theme--yellow-highlight

        accent-theme--deemphasize (color-lighten-name accent-theme--text 3)
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

  (accent-theme-faces 'accent-light)
  (provide-theme 'accent-light))

(provide 'accent-light-theme)

;;; constrution-paper-theme-light.el ends here
