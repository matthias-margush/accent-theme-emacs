;;; construction-paper-light-theme.el --- Construction Paper Light Theme

;; Copyright (C) 2021 Matthias Margush <matthias.margush@gmail.com>

;; Author: Matthias Margush <matthias.margush@me.com>
;; URL: https://github.com/matthias-margush/construction-paper-emacs
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

;; Construction paper paper-inspired theme

;; See the README for more info:
;; https://github.com/matthias-margush/construction-paper-emacs

;;; Code:
(deftheme construction-paper-light)

(require 'construction-paper-theme)

(let* ((construction-paper--added sacred-theme--moss)
       (construction-paper--alert sacred-theme--fire)
       (construction-paper--link sacred-theme--water)
       (construction-paper--good sacred-theme--moss)
       (construction-paper--removed sacred-theme--fire)
       (construction-paper--changed sacred-theme--sun)
       (construction-paper--warning sacred-theme--sun)
       (construction-paper--background sacred-theme--light-bright)
       (construction-paper--background-medium sacred-theme--light-medium)
       (construction-paper--background-dark sacred-theme--light-dark)
       (construction-paper--inverted-background sacred-theme--shadow-dark)
       (construction-paper--inverted-background-medium sacred-theme--shadow-medium)
       (construction-paper--inverted-background-bright sacred-theme--shadow-bright)
       (construction-paper--block sacred-theme--light-medium)
       (construction-paper--text sacred-theme--shadow-dark)
       (construction-paper--block sacred-theme--light-medium)
       (construction-paper--highlight-background sacred-theme--moss)
       (construction-paper--text sacred-theme--shadow-dark)
       (construction-paper--inverted-text sacred-theme--shadow-dark)
       (construction-paper--highlight-foreground sacred-theme--shadow-dark)
       (construction-paper--deemphasize sacred-theme--shadow-bright)
       (construction-paper--keyword sacred-theme--bark)
       (construction-paper--doc sacred-theme--shadow-bright)
       (construction-paper--nav sacred-theme--bark))

  (construction-paper 'construction-paper-light)
  (provide-theme 'construction-paper-light))

(provide 'construction-paper-light-theme)

;;; constrution-paper-theme.el ends here
