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

;;; Variables:
(defgroup accent-theme nil
  "Construction paper inspired theme."
  :group 'accent-theme
  :prefix "accent-theme-")

;;; Code:

(require 'accent-theme-light)

;; (accent-light-theme-provide)

;; (defun accent-theme-light ()
;;   "Enable the construction paper light theme."
;;   (interactive)
;;   (accent-theme-light-provide)
;;   (enable-theme 'accent-light))

;; (accent-light-theme-provide)
(provide 'accent-theme)

;;; accent-theme.el ends here
