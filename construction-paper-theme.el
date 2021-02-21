;;; construction-paper-theme.el --- Construction Paper Inspired Theme -*- lexical-binding: t; -*-

;; Copyright (C) 2019 Matthias Margush <matthias.margush@gmail.com>

;; Author: Matthias Margush <matthias.margush@gmail.com>
;; URL: https://github.com/matthias-margush/construction-paper
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

;; Construction-paper-inspired theme

;; See the README for more info:
;; https://github.com/matthias-margush/construction-paper

;;; Variables:
(defgroup construction-paper nil
  "Construction paper inspired theme."
  :group 'construction-paper
  :prefix "construction-paper-")

;;; Code:
(defvar construction-paper--shadow-dark "#3C4C55")
(defvar construction-paper--shadow-medium "#405057")
(defvar construction-paper--shadow-bright "#687A8D")
(defvar construction-paper--light-dark "#E3DCCA")
(defvar construction-paper--light-medium "#FBF5F0")
(defvar construction-paper--light-medium "#FBF6F0")
(defvar construction-paper--light-bright "#FFFAF2")
(defvar construction-paper--moss "#557755")
(defvar construction-paper--fire "#884444")
(defvar construction-paper--water "#555577")

(defvar construction-paper--bark "#6a5C56")
(defvar construction-paper--soil "#B2A488")
(defvar construction-paper--sun "#D8D915")

(defvar construction-paper--added)
(defvar construction-paper--changed)
(defvar construction-paper--nav)
(defvar construction-paper--alert)
(defvar construction-paper--background)
(defvar construction-paper--background-medium)
(defvar construction-paper--background-dark)
(defvar construction-paper--inverted-background)
(defvar construction-paper--inverted-background-medium)
(defvar construction-paper--inverted-background-bright)
(defvar construction-paper--warning)
(defvar construction-paper--block)
(defvar construction-paper--deemphasize)
(defvar construction-paper--doc)
(defvar construction-paper--good)
(defvar construction-paper--highlight-background)
(defvar construction-paper--highlight-foreground)
(defvar construction-paper--keyword)
(defvar construction-paper--link)
(defvar construction-paper--removed)
(defvar construction-paper--text)
(defvar construction-paper--inverted-text)

(defun construction-paper (theme-name)
  "Create a construction-paper theme named THEME-NAME."
  (custom-theme-set-faces
   theme-name
   ;; Built-in stuff (Emacs 23)
   `(border ((t (:background ,construction-paper--text))))
   `(internal-border ((t (:background ,construction-paper--background))))
   `(border-glyph ((t (nil))))
   `(cursor ((t (:background ,construction-paper--text))))
   `(default ((t (:background ,construction-paper--background :foreground ,construction-paper--text))))
   `(fringe ((t (:background ,construction-paper--background))))
   `(gui-element ((t (:background ,construction-paper--text :foreground ,construction-paper--added))))
   `(highlight-background ((t (:background ,construction-paper--background))))
   `(link ((t (:foreground ,construction-paper--link :underline t))))
   `(link-visited ((t (:foreground ,construction-paper--link))))
   `(minibuffer-prompt ((t (:inherit default :inverse-video nil))))
   `(outline-1 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-2 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-3 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-4 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-5 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-6 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-7 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(outline-8 ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(region ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--highlight-foreground))))
   `(secondary-selection ((t (:background ,construction-paper--text :foreground ,construction-paper--background))))
   `(error ((t (:foreground ,construction-paper--alert :weight bold))))
   `(warning ((t (:foreground ,construction-paper--doc :weight bold))))
   `(success ((t (:foreground ,construction-paper--keyword :weight bold))))
   `(header-line ((t (:background ,construction-paper--background :foreground ,construction-paper--good))))
   `(escape-glyph ((t (:foreground ,construction-paper--link))))

   `(highlight-indentation-face ((t (:background ,construction-paper--light-dark))))

   ;; mode line
   `(mode-line ((t (:background ,construction-paper--background :foreground ,construction-paper--inverted-background :box nil :underline nil :weight normal :inverse-video nil))))
   `(mode-line-inactive ((t (:inherit mode-line))))
   `(mode-line-buffer-id ((t (:inherit mode-line))))
   `(mode-line-buffer-id-inactive ((t (:inherit mode-line-inactive))))
   `(mode-line-emphasis ((t (:inherit mode-line :weight bold))))
   `(vertical-border ((t (:background ,construction-paper--background :foreground ,construction-paper--inverted-background :box nil :underline nil :weight normal :inverse-video nil))))
   `(eyebrowse-mode-line-inactive ((t (:background ,construction-paper--background :foreground ,construction-paper--keyword :box nil :weight normal :inverse-video t))))
   `(eyebrowse-mode-line-separator ((t (:background ,construction-paper--background :foreground ,construction-paper--keyword :box nil :weight normal :inverse-video t))))
   `(eyebrowse-mode-line-delimiters ((t (:background ,construction-paper--background :foreground ,construction-paper--keyword :box nil :weight normal :inverse-video t))))
   `(mode-line-highlight-background ((t (:inherit mode-line :weight bold))))
   `(powerline-active1 ((t (:inherit mode-line :inverse-video t))))
   `(powerline-active2 ((t (:inherit mode-line :background ,construction-paper--background-dark))))
   `(powerline-inactive1 ((t (:inherit modeline-inactive :background ,construction-paper--background-medium))))
   `(powerline-inactive2 ((t (:inherit modeline-inactive :background ,construction-paper--background-medium))))
   `(persp-face-lighter-buffer-not-in-persp ((t (:weight bold :foreground ,construction-paper--inverted-text :background ,construction-paper--alert))))


   ;; Font-lock stuff
   `(font-lock-builtin-face ((t (:foreground ,construction-paper--keyword))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,construction-paper--doc))))
   `(font-lock-comment-face ((t (:foreground ,construction-paper--doc))))
   `(font-lock-constant-face ((t (:foreground ,construction-paper--keyword))))
   `(font-lock-doc-face ((t (:foreground ,construction-paper--doc))))
   `(font-lock-doc-string-face ((t (:foreground ,construction-paper--text))))
   `(font-lock-function-name-face ((t (:foreground ,construction-paper--keyword))))
   `(font-lock-keyword-face ((t (:foreground ,construction-paper--keyword :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,construction-paper--highlight-background))))
   `(font-lock-preprocessor-face ((t (:foreground ,construction-paper--keyword))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,construction-paper--link))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,construction-paper--link))))
   `(font-lock-string-face ((t (:foreground ,construction-paper--moss))))
   `(font-lock-type-face ((t (:foreground ,construction-paper--text))))
   `(font-lock-variable-name-face ((t (:foreground ,construction-paper--text))))
   `(font-lock-warning-face ((t (:foreground ,construction-paper--sun))))

   ;; web mode
   `(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face))))
   `(web-mode-error-face ((t (:inherit error))))
   `(web-mode-block-attr-name-face ((t (:foreground ,construction-paper--moss))))
   `(web-mode-block-attr-value-face ((t (:foreground ,construction-paper--water))))
   `(web-mode-block-face ((t (:foreground ,construction-paper--sun))))
   `(web-mode-current-element-highlight-face ((t (:foreground ,construction-paper--background :background ,construction-paper--text))))
   `(web-mode-current-column-highlight-face ((t (:foreground ,construction-paper--text :background ,construction-paper--text))))
   `(web-mode-inlay-face ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--sun))))
   `(web-mode-json-context-face ((t (:foreground ,construction-paper--keyword :background ,construction-paper--background))))
   `(web-mode-json-key-face ((t (:foreground ,construction-paper--keyword :background ,construction-paper--background))))
   `(web-mode-symbol-face ((t (:foreground ,construction-paper--keyword :background ,construction-paper--background))))
   `(web-mode-whitespace-face ((t (:foreground ,construction-paper--alert :background ,construction-paper--alert))))

   ;; transient
   `(transient-disabled-suffix ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(transient-enabled-suffix ((t (:background ,construction-paper--moss :foreground ,construction-paper--inverted-text))))

   ;; tty
   `(tty-menu-disabled-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(tty-menu-enabled-face ((t (:background ,construction-paper--water :foreground ,construction-paper--inverted-text))))
   `(tty-menu-selected-face ((t (:background ,construction-paper--moss :foreground ,construction-paper--inverted-text))))

   ;; linum-mode
   `(linum ((t (:background ,construction-paper--background :foreground ,construction-paper--deemphasize))))

   ;; hl-todo
   `(hl-todo ((t (:foreground ,construction-paper--alert))))

   ;; imenu
   `(imenu-list-entry-face ((t (:foreground ,construction-paper--sun))))
   `(imenu-list-entry-face-1 ((t (:foreground ,construction-paper--moss))))
   `(imenu-list-entry-face-2 ((t (:foreground ,construction-paper--water))))
   `(imenu-list-entry-face-3 ((t (:foreground ,construction-paper--soil))))
   `(imenu-list-entry-subalist-face-0 ((t (:foreground ,construction-paper--sun :weight bold))))
   `(imenu-list-entry-subalist-face-1 ((t (:foreground ,construction-paper--moss :weight bold))))
   `(imenu-list-entry-subalist-face-2 ((t (:foreground ,construction-paper--water :weight bold))))
   `(imenu-list-entry-subalist-face-3 ((t (:foreground ,construction-paper--soil :weight bold))))

   ;; misc
   `(holiday ((t (:foreground ,construction-paper--sun))))
   `(homoglyph ((t (:foreground ,construction-paper--link))))

   ;; auto-highlight-symbol
   `(ahs-definition-face ((t (:background ,construction-paper--background :foreground ,construction-paper--link :underline t))))
   `(ahs-edit-mode-face ((t (:background ,construction-paper--background :box (:line-width 1 :color ,construction-paper--deemphasize)))))
   `(ahs-face ((t (:background ,construction-paper--background :box (:line-width 1 :color ,construction-paper--deemphasize)))))
   `(ahs-plugin-bod-face ((t (:background ,construction-paper--background (:line-width 1 :color ,construction-paper--good)))))
   `(ahs-plugin-defalt-face ((t (:background ,construction-paper--background (:line-width 1 :color ,construction-paper--good)))))
   `(ahs-plugin-whole-buffer-face ((t (:background ,construction-paper--background (:line-width 1 :color ,construction-paper--good)))))
   `(ahs-warning-face ((t (:background ,construction-paper--alert :foreground ,construction-paper--inverted-text))))

   ;; cua
   `(cua-global-mark ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--highlight-foreground))))
   `(cua-rectangle ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--highlight-foreground))))
   `(cua-rectangle-no-select ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--highlight-foreground))))

   ;; anzu
   `(anzu-match-1 ((t (:background ,construction-paper--good :foreground ,construction-paper--inverted-text))))
   `(anzu-match-2 ((t (:background ,construction-paper--keyword :foreground ,construction-paper--inverted-text))))
   `(anzu-match-3 ((t (:background ,construction-paper--link :foreground ,construction-paper--inverted-text))))
   `(anzu-mode-line ((t (:foreground ,construction-paper--text))))
   `(anzu-mode-line-no-match ((t (:foreground ,construction-paper--alert))))
   `(anzu-replace-highlight ((t (:background ,construction-paper--good :foreground ,construction-paper--inverted-text))))
   `(anzu-replace-to ((t (:background ,construction-paper--good :foreground ,construction-paper--inverted-text))))

   ;; spacebar
   `(spacebar-persp ((t (:inherit variable-pitch :background ,construction-paper--background :foreground ,construction-paper--nav :weight bold :height 1.0))))
   `(spacebar-active ((t (:inherit variable-pitch :background ,construction-paper--background :foreground ,construction-paper--nav :weight bold :height 1.25))))
   `(spacebar-inactive ((t (:inherit variable-pitch :background ,construction-paper--background :foreground ,construction-paper--nav :weight normal :height 0.9))))

   ;; smerge
   `(smerge-base ((t (:foreground ,construction-paper--water))))
   `(smerge-base-lower ((t (:foreground ,construction-paper--sun))))
   `(smerge-markers ((t (:foreground ,construction-paper--deemphasize))))
   `(smerge-refined-added ((t (:foreground ,construction-paper--added))))
   `(smerge-refined-changed ((t (:foreground ,construction-paper--changed))))
   `(smerge-refined-removed ((t (:foreground ,construction-paper--removed))))
   `(smerge-upper ((t (:foreground ,construction-paper--removed))))

   ;; spacemacs
   `(spacemacs-emacs-face ((t (:background ,construction-paper--water :foreground ,construction-paper--inverted-text))))
   `(spacemacs-evilified-face ((t (:background ,construction-paper--sun :foreground ,construction-paper--inverted-text))))
   `(spacemacs-helm-navigation-ts-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-hybrid-face ((t (:background ,construction-paper--water :foreground ,construction-paper--inverted-text))))
   `(spacemacs-ido-navigation-ts-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-iedit-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-iedit-insert-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-insert-face ((t (:background ,construction-paper--moss :foreground ,construction-paper--inverted-text))))
   `(spacemacs-lisp-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-micro-state-binding-face ((t (:background ,construction-paper--sun :foreground ,construction-paper--inverted-text))))
   `(spacemacs-micro-state-header-face ((t (:weight bold :box (:line-width -1 :color ,(plist-get (face-attribute 'mode-line :box) :color) :style nil) :foreground ,construction-paper--sun :background ,construction-paper--inverted-text))))
   `(spacemacs-motion-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-normal-face ((t (:background ,construction-paper--inverted-background :foreground ,construction-paper--inverted-text))))
   `(spacemacs-replace-face ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(spacemacs-visual-face ((t (:background ,construction-paper--text :foreground ,construction-paper--background))))

   ;; symbol overlay
   `(symbol-overlay-face-1 ((t (:background ,construction-paper--water :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-2 ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-3 ((t (:background ,construction-paper--sun :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-4 ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-5 ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-6 ((t (:background ,construction-paper--fire :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-7 ((t (:background ,construction-paper--moss :foreground ,construction-paper--inverted-text))))
   `(symbol-overlay-face-8 ((t (:background ,construction-paper--water :foreground ,construction-paper--inverted-text))))

   ;; table.el
   `(table-cell ((t (:background ,construction-paper--water :foreground ,construction-paper--inverted-text))))

   ;; sp
   `(sp-wrap-overlay-closing-pair ((t (:foreground ,construction-paper--fire :background ,construction-paper--sun))))
   `(sp-wrap-overlay-opening-pair ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--sun))))

   ;; ivy
   `(ivy-posframe-border ((t (:background ,construction-paper--highlight-background))))
   `(ivy-org ((t (:inherit default))))
   `(ivy-grep-info ((t (:inherit default :foreground ,construction-paper--link))))
   `(ivy-grep-line-number ((t (:inherit default :foreground ,construction-paper--link))))
   `(ivy-confirm-face ((t (:inverse-video t))))
   `(ivy-virtual ((t (:inherit default))))
   `(ivy-remote ((t (:inherit default))))
   `(ivy-posframe ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--text))))
   `(ivy-posframe-cursor ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--text))))
   `(ivy-prompt-match ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--text))))
   `(ivy-confirm-face ((t (:inherit minibuffer-prompt :foreground ,construction-paper--text))))
   `(ivy-current-match ((t (:weight bold :foreground ,construction-paper--link))))
   `(ivy-match-required-face ((t (:inherit minibuffer-prompt :foreground ,construction-paper--alert))))
   `(ivy-minibuffer-match-face-1 ((t (:weight bold))))
   `(ivy-minibuffer-match-face-2 ((t (:weight bold))))
   `(ivy-minibuffer-match-face-3 ((t (:weight bold))))
   `(ivy-minibuffer-match-face-4 ((t (:weight bold))))
   `(ivy-highlight-face ((t (:inherit region))))
   `(ivy-remote ((t (:foreground ,construction-paper--link))))

   ;; hydra
   `(hydra-face-amaranth ((t (:foregound ,construction-paper--text :weight bold))))
   `(hydra-face-blue ((t (:foreground ,construction-paper--text :weight bold))))
   `(hydra-face-pink ((t (:foreground ,construction-paper--text :weight bold))))
   `(hydra-face-red ((t (:foreground ,construction-paper--text :weight bold))))
   `(hydra-face-teal ((t (:foreground ,construction-paper--text :weight bold))))

   ;; mu4e
   `(mu4e-header-highlight-background-face ((t (:inherit region :weight bold))))
   `(mu4e-title-face ((t (:foreground ,construction-paper--text :weight bold))))
   `(mu4e-highlight-face ((t (:foreground ,construction-paper--text :weight bold))))
   `(mu4e-context-face ((t (:foreground ,construction-paper--text :weight bold))))

   ;; neotree
   `(neo-banner-face ((t (:foreground ,construction-paper--text :weight normal))))
   `(neo-dir-link-face ((t (:foreground ,construction-paper--text))))
   `(neo-expand-btn-face ((t (:foreground ,construction-paper--text))))
   `(neo-file-link-face ((t (:foreground ,construction-paper--text))))
   `(neo-root-dir-face ((t (:foreground ,construction-paper--text :weight normal))))
   `(neo-vc-added-face ((t (:foreground ,construction-paper--keyword))))
   `(neo-vc-conflict-face ((t (:foreground ,construction-paper--alert))))
   `(neo-vc-edited-face ((t (:foreground ,construction-paper--highlight-background))))
   `(neo-vc-ignored-face ((t (:foreground ,construction-paper--deemphasize))))
   `(neo-vc-missing-face ((t (:foreground ,construction-paper--alert))))
   `(neo-vc-needs-merge-face ((t (:foreground ,construction-paper--alert))))
   `(neo-vc-unlocked-changes-face ((t (:background ,construction-paper--link :foreground ,construction-paper--background))))
   `(neo-vc-up-to-date-face ((t (:foreground ,construction-paper--text))))
   `(neo-vc-user-face ((t (:foreground ,construction-paper--alert :slant italic))))

   ;; Search
   `(lazy-highlight-background ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--highlight-foreground :weight normal))))
   `(match ((t (:foreground ,construction-paper--highlight-foreground :background ,construction-paper--text :inverse-video t))))
   `(isearch ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--changed :weight bold))))
   `(isearch-lazy-highlight-background-face ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--changed))))
   `(lazy-highlight ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--changed))))
   `(isearch-fail ((t (:foreground ,construction-paper--alert))))

   ;; evil
   `(evil-search-highlight-background-persist-highlight-background-face ((t (:background ,construction-paper--changed :inherit font-lock-warning-face :inverse-video t))))
   `(evil-ex-lazy-highlight ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--changed))))
   `(evil-ex-info ((t (:foreground ,construction-paper--good))))
   `(evil-ex-substitute-replacement ((t (:foreground ,construction-paper--alert))))

   ;; Popups
   `(popup-face ((t (:foreground ,construction-paper--text :background ,construction-paper--added))))
   `(popup-isearch-match ((t (:foreground ,construction-paper--background :background ,construction-paper--highlight-background))))
   `(popup-scroll-bar-background-face ((t (:background ,construction-paper--doc))))
   `(popup-scroll-bar-foreground-face ((t (:background ,construction-paper--text))))
   `(popup-summary-face ((t (:foreground ,construction-paper--text))))
   `(popup-tip-face ((t (:background ,construction-paper--inverted-background :foreground ,construction-paper--inverted-text))))
   `(popup-menu-mouse-face ((t (:foreground ,construction-paper--background :background ,construction-paper--keyword))))
   `(popup-menu-selection-face ((t (:foreground ,construction-paper--background :background ,construction-paper--keyword))))

   ;; Flymake / Flycheck / Flyspell
   `(flymake-error ((t (:underline (:color ,construction-paper--alert :style wave)))))
   `(flycheck-error ((t (:underline (:color ,construction-paper--alert :style wave)))))
   `(flymake-warning ((t (:underline (:color ,construction-paper--deemphasize :style wave)))))
   `(flycheck-error-list-highlight ((t (:background ,construction-paper--changed :foreground ,construction-paper--inverted-text))))
   `(flycheck-info ((t (:underline (:color ,construction-paper--good :style wave)))))
   `(flycheck-warning ((t (:underline (:color ,construction-paper--warning :style wave)))))
   `(flyspell-duplicate ((t (:underline (:color ,construction-paper--warning :style wave)))))
   `(flyspell-incorrect ((t (:underline (:color ,construction-paper--alert :style wave)))))

   ;; Emacs lisp
   `(eval-sexp-fu-flash ((t (:foreground ,construction-paper--good))))
   `(eval-sexp-fu-flash-error ((t (:foreground ,construction-paper--alert))))

   ;; Clojure errors
   `(clojure-test-failure-face ((t (:background nil :inherit flymake-warnline))))
   `(clojure-test-error-face ((t (:background nil :inherit flymake-errline))))
   `(clojure-test-success-face ((t (:background nil :foreground nil :underline ,construction-paper--highlight-background))))

   ;; For Brian Carper's extended clojure syntax table
   `(clojure-keyword ((t (:foreground ,construction-paper--link))))
   `(clojure-parens ((t (:foreground ,construction-paper--added))))
   `(clojure-braces ((t (:foreground ,construction-paper--highlight-background))))
   `(clojure-brackets ((t (:foreground ,construction-paper--link))))
   `(clojure-double-quote ((t (:foreground ,construction-paper--keyword :background nil))))
   `(clojure-special ((t (:foreground ,construction-paper--keyword))))
   `(clojure-java-call ((t (:foreground ,construction-paper--link))))

   ;; Avy
   `(avy-background-face ((t (:background ,construction-paper--background :foreground ,construction-paper--text))))
   `(avy-goto-char-timer-face ((t (:background ,construction-paper--background :foreground ,construction-paper--text))))
   `(avy-lead-face ((t (:background ,construction-paper--link :foreground ,construction-paper--inverted-text :weight bold))))
   `(avy-lead-face-0 ((t (:background ,construction-paper--link :foreground ,construction-paper--inverted-text :weight bold))))
   `(avy-lead-face-1 ((t (:background ,construction-paper--link :foreground ,construction-paper--inverted-text :weight bold))))
   `(avy-lead-face-2 ((t (:background ,construction-paper--link :foreground ,construction-paper--inverted-text :weight bold))))

   ;; ace window
   `(aw-background-face ((t (:foreground ,construction-paper--highlight-background))))
   `(aw-key-face ((t (:foreground ,construction-paper--changed))))
   `(aw-leading-char-face ((t (:background ,construction-paper--changed :foreground ,construction-paper--inverted-text :height 2.5))))
   `(aw-minibuffer-leading-char-face ((t (:background ,construction-paper--changed :foreground ,construction-paper--inverted-text :height 2.5))))
   `(aw-mode-line-face ((t (:background ,construction-paper--changed :foreground ,construction-paper--inverted-text :height 2.5))))

   ;; MMM-mode
   `(mmm-code-submode-face ((t (:background ,construction-paper--text))))
   `(mmm-comment-submode-face ((t (:inherit font-lock-comment-face))))
   `(mmm-output-submode-face ((t (:background ,construction-paper--text))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,construction-paper--link))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,construction-paper--keyword))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,construction-paper--keyword))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,construction-paper--highlight-background))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,construction-paper--link))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,construction-paper--keyword))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,construction-paper--keyword))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,construction-paper--text))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,construction-paper--added))))

   ;; IDO
   `(ido-first-match ((t (:foreground ,construction-paper--text :weight bold))))
   `(ido-indicator ((t (:background ,construction-paper--background :foreground ,construction-paper--highlight-background :width condensed))))
   `(ido-only-match ((t (:foreground ,construction-paper--text :weight bold))))
   `(ido-subdir ((t (:foreground ,construction-paper--text))))
   `(ido-incomplete-regexp ((t (:foreground ,construction-paper--text))))
   `(ido-incomplete-virtual ((t (:foreground ,construction-paper--text))))
   `(ido-virtual ((t (:foreground ,construction-paper--text))))
   `(flx-highlight-face ((t (:foreground ,construction-paper--text :underline t))))

   ;; Company
   `(company-echo-common ((t (:foreground ,construction-paper--keyword))))
   `(company-preview ((t (:foreground ,construction-paper--text))))
   `(company-preview-common ((t (:weight bold :foreground ,construction-paper--text))))
   `(company-preview-search ((t (:weight bold :foreground ,construction-paper--text))))
   `(company-scrollbar-bg ((t (:background ,construction-paper--highlight-background))))
   `(company-scrollbar-fg ((t (:background ,construction-paper--alert))))
   `(company-template-field ((t (:inherit region :background ,construction-paper--highlight-background :foreground ,construction-paper--text))))
   `(company-tooltip ((t (:background ,construction-paper--inverted-background :foreground ,construction-paper--inverted-text))))
   `(company-tooltip-annotation ((t (:foreground ,construction-paper--alert))))
   `(company-tooltip-common ((t (:background ,construction-paper--text :foreground ,construction-paper--link))))
   `(company-tooltip-selection ((t (:background ,construction-paper--highlight-background))))

   ;; which-function
   `(which-func ((t (:foreground ,construction-paper--keyword :background nil :weight bold))))

   `(trailing-whitespace ((t (:background ,construction-paper--fire :foreground ,construction-paper--link))))
   `(whitespace-empty ((t (:foreground ,construction-paper--keyword :background ,construction-paper--link))))
   `(whitespace-hspace ((t (:background ,construction-paper--doc :foreground ,construction-paper--doc))))
   `(whitespace-indentation ((t (:background ,construction-paper--link :foreground ,construction-paper--keyword))))
   `(whitespace-line ((t (:background ,construction-paper--text :foreground ,construction-paper--good))))
   `(whitespace-newline ((t (:foreground ,construction-paper--doc))))
   `(whitespace-space ((t (:background ,construction-paper--text :foreground ,construction-paper--doc))))
   `(whitespace-space-after-tab ((t (:background ,construction-paper--link :foreground ,construction-paper--keyword))))
   `(whitespace-space-before-tab ((t (:background ,construction-paper--keyword :foreground ,construction-paper--keyword))))
   `(whitespace-tab ((t (:background ,construction-paper--doc :foreground ,construction-paper--doc))))
   `(whitespace-trailing ((t (:background ,construction-paper--keyword :foreground ,construction-paper--link))))

   ;; Parenthesis matching (built-in)
   `(show-paren-match ((t (:weight bold))))
   `(show-paren-mismatch ((t (:background ,construction-paper--alert))))

   ;; Parenthesis matching (mic-paren)
   `(paren-face-match ((t (:foreground nil :background nil :inherit show-paren-match))))
   `(paren-face-mismatch ((t (:foreground nil :background nil :inherit show-paren-mismatch))))
   `(paren-face-no-match ((t (:foreground nil :background nil :inherit show-paren-mismatch))))

   ;; Parenthesis dimming (parenface)
   `(paren-face ((t (:foreground ,construction-paper--doc :background nil))))

   `(sh-heredoc ((t (:foreground nil :inherit font-lock-string-face :weight normal))))
   `(sh-quoted-exec ((t (:foreground nil :inherit font-lock-preprocessor-face))))
   `(slime-highlight-background-edits-face ((t (:weight bold))))
   `(slime-repl-input-face ((t (:weight normal :underline nil))))
   `(slime-repl-prompt-face ((t (:underline nil :weight bold :foreground ,construction-paper--link))))
   `(slime-repl-result-face ((t (:foreground ,construction-paper--highlight-background))))
   `(slime-repl-output-face ((t (:foreground ,construction-paper--keyword :background ,construction-paper--text))))

   `(csv-separator-face ((t (:foreground ,construction-paper--keyword))))

   `(diff-added ((t (:foreground ,construction-paper--highlight-background))))
   `(diff-changed ((t (:foreground ,construction-paper--changed))))
   `(diff-removed ((t (:foreground ,construction-paper--keyword))))
   `(diff-header ((t (:background ,construction-paper--text :foreground ,construction-paper--background))))
   `(diff-file-header ((t (:background ,construction-paper--text :foreground ,construction-paper--background))))
   `(diff-hunk-header ((t (:background ,construction-paper--text :foreground ,construction-paper--link))))
   `(diff-refine-added ((t (:background ,construction-paper--added :foreground ,construction-paper--inverted-text))))
   `(diff-refine-changed ((t (:background ,construction-paper--changed :foreground ,construction-paper--inverted-text))))
   `(diff-refine-removed ((t (:background ,construction-paper--removed :foreground ,construction-paper--inverted-text))))

   `(diff-hl-change ((t (:foreground "blue3" :background ,construction-paper--changed))))
   `(diff-hl-delete ((t (:foreground "red3" :background ,construction-paper--removed))))
   `(diff-hl-insert ((t (:foreground "green4" :background ,construction-paper--added))))

   `(ediff-even-diff-A ((t (:foreground nil :background nil :inverse-video t))))
   `(ediff-even-diff-B ((t (:foreground nil :background nil :inverse-video t))))
   `(ediff-odd-diff-A  ((t (:foreground ,construction-paper--doc :background nil :inverse-video t))))
   `(ediff-odd-diff-B  ((t (:foreground ,construction-paper--doc :background nil :inverse-video t))))

   `(eldoc-highlight-background-function-argument ((t (:foreground ,construction-paper--highlight-background :weight bold))))

   ;; undo-tree
   `(undo-tree-visualizer-default-face ((t (:foreground ,construction-paper--added))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,construction-paper--highlight-background :weight bold))))
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,construction-paper--keyword))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,construction-paper--link))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,construction-paper--link))))

   ;; auctex
   `(font-latex-bold-face ((t (:foreground ,construction-paper--highlight-background))))
   `(font-latex-doctex-documentation-face ((t (:background ,construction-paper--text))))
   `(font-latex-italic-face ((t (:foreground ,construction-paper--highlight-background))))
   `(font-latex-math-face ((t (:foreground ,construction-paper--keyword))))
   `(font-latex-sectioning-0-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-sectioning-1-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-sectioning-2-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-sectioning-3-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-sectioning-4-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-sectioning-5-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-sedate-face ((t (:foreground ,construction-paper--keyword))))
   `(font-latex-string-face ((t (:foreground ,construction-paper--link))))
   `(font-latex-verbatim-face ((t (:foreground ,construction-paper--keyword))))
   `(font-latex-warning-face ((t (:foreground ,construction-paper--keyword))))

   ;; dired+
   `(diredp-compressed-file-suffix ((t (:foreground ,construction-paper--keyword))))
   `(diredp-dir-heading ((t (:foreground nil :background nil :inherit heading))))
   `(diredp-dir-priv ((t (:foreground ,construction-paper--keyword :background nil))))
   `(diredp-exec-priv ((t (:foreground ,construction-paper--keyword :background nil))))
   `(diredp-executable-tag ((t (:foreground ,construction-paper--keyword :background nil))))
   `(diredp-file-name ((t (:foreground ,construction-paper--link))))
   `(diredp-file-suffix ((t (:foreground ,construction-paper--highlight-background))))
   `(diredp-flag-mark-line ((t (:background nil :inherit highlight-background))))
   `(diredp-ignored-file-name ((t (:foreground ,construction-paper--doc))))
   `(diredp-link-priv ((t (:background nil :foreground ,construction-paper--link))))
   `(diredp-mode-line-flagged ((t (:foreground ,construction-paper--keyword))))
   `(diredp-mode-line-marked ((t (:foreground ,construction-paper--highlight-background))))
   `(diredp-no-priv ((t (:background nil))))
   `(diredp-number ((t (:foreground ,construction-paper--link))))
   `(diredp-other-priv ((t (:background nil :foreground ,construction-paper--link))))
   `(diredp-rare-priv ((t (:foreground ,construction-paper--keyword :background nil))))
   `(diredp-read-priv ((t (:foreground ,construction-paper--highlight-background :background nil))))
   `(diredp-symlink ((t (:foreground ,construction-paper--link))))
   `(diredp-write-priv ((t (:foreground ,construction-paper--link :background nil))))

   ;; magit
   `(magit-bisect-bad ((t (:foreground ,construction-paper--alert))))
   `(magit-bisect-good ((t (:foreground ,construction-paper--keyword))))
   `(magit-bisect-skip ((t (:foreground ,construction-paper--text))))
   `(magit-branch-local ((t (:foreground ,construction-paper--link))))
   `(magit-branch-remote ((t (:foreground ,construction-paper--keyword))))
   `(magit-cherry-equivalent ((t (:foreground ,construction-paper--alert))))
   `(magit-cherry-unmatched ((t (:foreground ,construction-paper--link))))
   `(magit-diff-added ((t (:background ,construction-paper--added :foreground ,construction-paper--highlight-foreground))))
   `(magit-diff-added-highlight ((t (:background ,construction-paper--added :foreground ,construction-paper--highlight-foreground :weight bold))))
   `(magit-diff-base ((t (:background ,construction-paper--block :foreground ,construction-paper--text))))
   `(magit-diff-base-highlight ((t (:background ,construction-paper--text :foreground ,construction-paper--background :weight bold))))
   `(magit-diff-context ((t (:foreground ,construction-paper--text))))
   `(magit-diff-context-highlight ((t (:background ,construction-paper--block))))
   `(magit-diff-file-heading ((t (:weight normal))))
   `(magit-diff-file-heading-highlight-background ((t (:weight bold))))
   `(magit-diff-hunk-heading ((t (:background ,construction-paper--background :foreground ,construction-paper--text))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,construction-paper--background :foreground ,construction-paper--text :weight bold))))
   `(magit-diff-removed ((t (:background ,construction-paper--removed :foreground ,construction-paper--highlight-foreground))))
   `(magit-diff-removed-highlight ((t (:background ,construction-paper--removed :foreground ,construction-paper--highlight-foreground :weight bold))))
   `(magit-diff-whitespace-warning ((t (:background ,construction-paper--removed :foreground ,construction-paper--highlight-foreground))))
   `(magit-diffstat-added ((t (:foreground ,construction-paper--keyword))))
   `(magit-diffstat-removed ((t (:foreground ,construction-paper--alert))))
   `(magit-hash ((t (:foreground ,construction-paper--keyword))))
   `(magit-log-author ((t (:foreground ,construction-paper--alert))))
   `(magit-process-ng ((t (:inherit magit-section-heading :foreground ,construction-paper--alert))))
   `(magit-process-ok ((t (:inherit magit-section-heading :foreground ,construction-paper--keyword))))
   `(magit-reflog-amend ((t (:foreground ,construction-paper--alert))))
   `(magit-reflog-checkout ((t (:foreground ,construction-paper--link))))
   `(magit-reflog-cherry-pick ((t (:foreground ,construction-paper--keyword))))
   `(magit-reflog-commit ((t (:foreground ,construction-paper--keyword))))
   `(magit-reflog-merge ((t (:foreground ,construction-paper--keyword))))
   `(magit-reflog-other ((t (:foreground ,construction-paper--link))))
   `(magit-reflog-rebase ((t (:foreground ,construction-paper--alert))))
   `(magit-reflog-remote ((t (:foreground ,construction-paper--link))))
   `(magit-reflog-reset ((t (:foreground ,construction-paper--alert))))
   `(magit-section-heading ((t (:foreground ,construction-paper--keyword))))
   `(magit-section-heading-selection ((t (:foreground ,construction-paper--alert))))
   `(magit-section-highlight ((t (:background ,construction-paper--block :weight bold))))
   `(magit-sequence-drop ((t (:foreground ,construction-paper--alert))))
   `(magit-sequence-head ((t (:foreground ,construction-paper--link))))
   `(magit-sequence-part ((t (:foreground ,construction-paper--highlight-background))))
   `(magit-sequence-stop ((t (:foreground ,construction-paper--keyword))))
   `(magit-signature-bad ((t (:foreground ,construction-paper--alert :weight normal))))
   `(magit-signature-error ((t (:foreground ,construction-paper--alert))))
   `(magit-signature-expired ((t (:foreground ,construction-paper--alert))))
   `(magit-signature-good ((t (:foreground ,construction-paper--keyword))))
   `(magit-signature-revoked ((t (:foreground ,construction-paper--alert))))
   `(magit-signature-untrusted ((t (:foreground ,construction-paper--link))))
   `(magit-tag ((t (:foreground ,construction-paper--highlight-background))))
   `(magithub-deleted-thing ((t (:inherit magit-section-highlight-background :background ,construction-paper--alert))))

   ;; term and ansi-term
   `(term-color-black ((t (:foreground ,construction-paper--text :background ,construction-paper--text))))
   `(term-color-white ((t (:foreground ,construction-paper--added :background ,construction-paper--background))))
   `(term-color-red ((t (:foreground ,construction-paper--keyword :background ,construction-paper--keyword))))
   `(term-color-yellow ((t (:foreground ,construction-paper--link :background ,construction-paper--link))))
   `(term-color-green ((t (:foreground ,construction-paper--highlight-background :background ,construction-paper--highlight-background))))
   `(term-color-cyan ((t (:foreground ,construction-paper--keyword :background ,construction-paper--keyword))))
   `(term-color-blue ((t (:foreground ,construction-paper--keyword :background ,construction-paper--keyword))))
   `(term-color-magenta ((t (:foreground ,construction-paper--link :background ,construction-paper--link))))

   `(link ((t (:foreground nil :underline t))))
   `(widget-button ((t (:underline t))))
   `(widget-field ((t (:background ,construction-paper--background :box (:line-width 1 :color ,construction-paper--text)))))
   `(widget-button-pressed ((t (:background ,construction-paper--background :foreground ,construction-paper--fire))))
   `(widget-documentation ((t (:background ,construction-paper--background :foreground ,construction-paper--moss))))

   ;; Compilation (most faces politely inherit from 'success, 'error, 'warning etc.)
   `(compilation-column-number ((t (:foreground ,construction-paper--link))))
   `(compilation-line-number ((t (:foreground ,construction-paper--link))))
   `(compilation-message-face ((t (:foreground ,construction-paper--keyword))))
   `(compilation-mode-line-exit ((t (:foreground ,construction-paper--highlight-background))))
   `(compilation-mode-line-fail ((t (:foreground ,construction-paper--keyword))))
   `(compilation-mode-line-run ((t (:foreground ,construction-paper--keyword))))

   ;; tooltip
   `(tool-tip ( (t (:background ,construction-paper--inverted-background :foreground ,construction-paper--inverted-text))))
   `(tooltip ( (t (:foreground ,construction-paper--background :background ,construction-paper--text))))

   ;; Grep
   `(grep-context-face ((t (:foreground ,construction-paper--doc))))
   `(grep-error-face ((t (:foreground ,construction-paper--keyword :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,construction-paper--keyword))))
   `(grep-match-face ((t (:foreground nil :background nil :inherit match))))

   `(regex-tool-matched-face ((t (:foreground nil :background nil :inherit match))))

   ;; mark-multiple
   `(mm/master-face ((t (:inherit region :foreground nil :background nil))))
   `(mm/mirror-face ((t (:inherit region :foreground nil :background nil))))

   ;; info
   `(info-menu-header ((t (:inherit variable-pitch :foreground ,construction-paper--nav))))
   `(info-menu-star ((t (:foreground ,construction-paper--keyword))))

   ;; org-mode
   `(org-agenda-structure ((t (:foreground ,construction-paper--link))))
   `(org-agenda-date ((t (:foreground ,construction-paper--keyword :underline nil))))
   `(org-agenda-done ((t (:foreground ,construction-paper--highlight-background))))
   `(org-agenda-dimmed-todo-face ((t (:foreground ,construction-paper--doc))))
   `(org-block ((t (:foreground ,construction-paper--text :background ,construction-paper--block :box nil))))
   `(org-code ((t (:foreground ,construction-paper--link))))
   `(org-column ((t (:background ,construction-paper--text))))
   `(org-column-title ((t (:inherit org-column :weight bold :underline t))))
   `(org-date ((t (:foreground ,construction-paper--link :underline t))))
   `(org-document-info ((t (:foreground ,construction-paper--keyword))))
   `(org-document-info-keyword ((t (:foreground ,construction-paper--keyword))))
   `(org-document-title ((t (:foreground ,construction-paper--keyword :weight bold))))
   `(org-done ((t (:inherit default :foreground ,construction-paper--doc :strike-through t))))
   `(org-headline-done ((t (:foreground ,construction-paper--highlight-background :strike-through t))))
   `(org-ellipsis ((t (:foreground ,construction-paper--doc))))
   `(org-footnote ((t (:foreground ,construction-paper--keyword))))
   `(org-formula ((t (:foreground ,construction-paper--keyword))))
   `(org-hide ((t (:foreground ,construction-paper--text))))
   `(org-link ((t (:inherit link))))
   `(org-meta-line ((t (:foreground ,construction-paper--keyword))))
   `(org-block-end-line ((t (:inherit org-meta-line :weight bold))))
   `(org-block-begin-line ((t (:inherit org-meta-line :weight bold))))
   `(org-scheduled ((t (:foreground ,construction-paper--highlight-background))))
   `(org-scheduled-previously ((t (:foreground ,construction-paper--keyword))))
   `(org-scheduled-today ((t (:foreground ,construction-paper--highlight-background))))
   `(org-special-keyword ((t (:foreground ,construction-paper--keyword))))
   `(org-property-value ((t (:foreground ,construction-paper--keyword))))
   `(org-table ((t (:foreground ,construction-paper--link))))
   `(org-tag ((t (:foreground ,construction-paper--doc))))
   `(org-todo ((t (:inherit default :foreground ,construction-paper--added))))
   `(org-upcoming-deadline ((t (:foreground ,construction-paper--keyword))))
   `(org-warning ((t (:weight bold :foreground ,construction-paper--keyword))))
   `(org-mode-line-clock-overrun ((t (:weight bold :foreground ,construction-paper--inverted-text :background ,construction-paper--alert))))

   `(markdown-url-face ((t (:inherit link))))
   `(markdown-link-face ((t (:foreground ,construction-paper--link :underline t))))

   `(hl-sexp-face ((t (:background ,construction-paper--text))))
   `(hl-line ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--highlight-foreground :weight normal))))
   `(highlight-background-80+ ((t (:background ,construction-paper--text))))
   `(highlight ((t (:background ,construction-paper--changed :foreground ,construction-paper--inverted-text))))

   ;; Python-specific overrides
   `(py-builtins-face ((t (:foreground ,construction-paper--keyword :weight normal))))
   ;; Cider
   `(cider-deprecated-face ((t (:background ,construction-paper--alert))))
   `(cider-enlightened-face ((t (:inherit cider-result-overlay-face :box (:line-width -1 :color ,construction-paper--highlight-background)))))
   `(cider-enlightened-local-face ((t (:foreground ,construction-paper--highlight-background :weight bold))))
   `(cider-error-highlight-background-face ((t (:inherit nil :underline (:color ,construction-paper--alert :style wave)))))
   `(cider-fringe-good-face ((t (:foreground ,construction-paper--keyword))))
   `(cider-instrumented-face ((t (:box (:line-width -1 :color ,construction-paper--alert)))))
   `(cider-result-overlay-face ((t (:background ,construction-paper--keyword :foreground ,construction-paper--background :box (:line-width -2 :color ,construction-paper--keyword) :slant italic :weight bold))))
   `(cider-test-error-face ((t (:weight bold :inverse-video t :foreground ,construction-paper--alert))))
   `(cider-test-failure-face ((t (:weight bold :inverse-video t :foreground ,construction-paper--alert))))
   `(cider-test-success-face ((t (:weight bold :foreground ,construction-paper--good))))
   `(cider-traced-face ((t (:box (:line-width -1 :color ,construction-paper--link)))))
   `(cider-warning-highlight-background-face ((t (:inherit nil :underline (:color ,construction-paper--highlight-background :style wave)))))

   ;; js2-mode
   `(js2-warning ((t (:underline (:color ,construction-paper--sun :style wave)))))
   `(js2-error ((t (:foreground nil :underline (:color ,construction-paper--sun :style wave)))))
   `(js2-external-variable ((t (:foreground ,construction-paper--link))))
   `(js2-function-param ((t (:foreground ,construction-paper--keyword))))
   `(js2-instance-member ((t (:foreground ,construction-paper--keyword))))
   `(js2-object-property ((t (:foreground ,construction-paper--keyword))))
   `(js2-private-function-call ((t (:foreground ,construction-paper--keyword))))

   ;; js3-mode
   `(js3-warning-face ((t (:underline (:color ,construction-paper--sun :style wave)))))
   `(js3-error-face ((t (:foreground nil :underline (:color ,construction-paper--alert :style wave)))))
   `(js3-external-variable-face ((t (:foreground ,construction-paper--link))))
   `(js3-function-param-face ((t (:foreground ,construction-paper--keyword))))
   `(js3-jsdoc-tag-face ((t (:foreground ,construction-paper--keyword))))
   `(js3-jsdoc-type-face ((t (:foreground ,construction-paper--keyword))))
   `(js3-jsdoc-value-face ((t (:foreground ,construction-paper--link))))
   `(js3-jsdoc-html-tag-name-face ((t (:foreground ,construction-paper--keyword))))
   `(js3-jsdoc-html-tag-delimiter-face ((t (:foreground ,construction-paper--highlight-background))))
   `(js3-instance-member-face ((t (:foreground ,construction-paper--keyword))))
   `(js3-private-function-call-face ((t (:foreground ,construction-paper--keyword))))

   ;; nxml
   `(nxml-name-face ((t (:foreground unspecified :inherit font-lock-constant-face))))
   `(nxml-attribute-local-name-face ((t (:foreground unspecified :inherit font-lock-variable-name-face))))
   `(nxml-ref-face ((t (:foreground unspecified :inherit font-lock-preprocessor-face))))
   `(nxml-delimiter-face ((t (:foreground unspecified :inherit font-lock-keyword-face))))
   `(nxml-delimited-data-face ((t (:foreground unspecified :inherit font-lock-string-face))))
   `(rng-error-face ((t (:underline ,construction-paper--keyword))))

   ;; RHTML
   `(erb-delim-face ((t (:background ,construction-paper--text))))
   `(erb-exec-face ((t (:background ,construction-paper--text :weight bold))))
   `(erb-exec-delim-face ((t (:background ,construction-paper--text))))
   `(erb-out-face ((t (:background ,construction-paper--text :weight bold))))
   `(erb-out-delim-face ((t (:background ,construction-paper--text))))
   `(erb-comment-face ((t (:background ,construction-paper--text :weight bold :slant italic))))
   `(erb-comment-delim-face ((t (:background ,construction-paper--text))))

   ;; Message-mode
   `(message-header-other ((t (:foreground nil :background nil :weight normal))))
   `(message-header-subject ((t (:inherit message-header-other :weight bold :foreground ,construction-paper--link))))
   `(message-header-to ((t (:inherit message-header-other :weight bold :foreground ,construction-paper--keyword))))
   `(message-header-cc ((t (:inherit message-header-to :foreground nil))))
   `(message-header-name ((t (:foreground ,construction-paper--keyword :background nil))))
   `(message-header-newsgroups ((t (:foreground ,construction-paper--keyword :background nil :slant normal))))
   `(message-separator ((t (:foreground ,construction-paper--link))))

   ;; Jabber
   `(jabber-chat-prompt-local ((t (:foreground ,construction-paper--link))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,construction-paper--keyword))))
   `(jabber-chat-prompt-system ((t (:foreground ,construction-paper--link :weight bold))))
   `(jabber-chat-text-local ((t (:foreground ,construction-paper--link))))
   `(jabber-chat-text-foreign ((t (:foreground ,construction-paper--keyword))))
   `(jabber-chat-text-error ((t (:foreground ,construction-paper--keyword))))

   `(jabber-roster-user-online ((t (:foreground ,construction-paper--highlight-background))))
   `(jabber-roster-user-xa ((t :foreground ,construction-paper--doc)))
   `(jabber-roster-user-dnd ((t :foreground ,construction-paper--link)))
   `(jabber-roster-user-away ((t (:foreground ,construction-paper--keyword))))
   `(jabber-roster-user-chatty ((t (:foreground ,construction-paper--link))))
   `(jabber-roster-user-error ((t (:foreground ,construction-paper--keyword))))
   `(jabber-roster-user-offline ((t (:foreground ,construction-paper--doc))))

   `(jabber-rare-time-face ((t (:foreground ,construction-paper--doc))))
   `(jabber-activity-face ((t (:foreground ,construction-paper--link))))
   `(jabber-activity-personal-face ((t (:foreground ,construction-paper--keyword))))

   ;; Gnus
   `(gnus-cite-1 ((t (:inherit outline-1 :foreground nil))))
   `(gnus-cite-2 ((t (:inherit outline-2 :foreground nil))))
   `(gnus-cite-3 ((t (:inherit outline-3 :foreground nil))))
   `(gnus-cite-4 ((t (:inherit outline-4 :foreground nil))))
   `(gnus-cite-5 ((t (:inherit outline-5 :foreground nil))))
   `(gnus-cite-6 ((t (:inherit outline-6 :foreground nil))))
   `(gnus-cite-7 ((t (:inherit outline-7 :foreground nil))))
   `(gnus-cite-8 ((t (:inherit outline-8 :foreground nil))))
   ;; there are several more -cite- faces...
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-header-from ((t (:inherit message-header-other-face :weight bold :foreground ,construction-paper--keyword))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-button ((t (:inherit link :foreground nil))))
   `(gnus-signature ((t (:inherit font-lock-comment-face))))

   `(gnus-summary-normal-unread ((t (:foreground ,construction-paper--keyword :weight normal))))
   `(gnus-summary-normal-read ((t (:foreground ,construction-paper--added :weight normal))))
   `(gnus-summary-normal-ancient ((t (:foreground ,construction-paper--keyword :weight normal))))
   `(gnus-summary-normal-ticked ((t (:foreground ,construction-paper--keyword :weight normal))))
   `(gnus-summary-low-unread ((t (:foreground ,construction-paper--doc :weight normal))))
   `(gnus-summary-low-read ((t (:foreground ,construction-paper--doc :weight normal))))
   `(gnus-summary-low-ancient ((t (:foreground ,construction-paper--doc :weight normal))))
   `(gnus-summary-high-unread ((t (:foreground ,construction-paper--link :weight normal))))
   `(gnus-summary-high-read ((t (:foreground ,construction-paper--highlight-background :weight normal))))
   `(gnus-summary-high-ancient ((t (:foreground ,construction-paper--highlight-background :weight normal))))
   `(gnus-summary-high-ticked ((t (:foreground ,construction-paper--keyword :weight normal))))
   `(gnus-summary-cancelled ((t (:foreground ,construction-paper--keyword :background nil :weight normal))))

   `(gnus-group-mail-low ((t (:foreground ,construction-paper--doc))))
   `(gnus-group-mail-low-empty ((t (:foreground ,construction-paper--doc))))
   `(gnus-group-mail-1 ((t (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-mail-2 ((t (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-mail-3 ((t (:foreground nil :weight normal :inherit outline-3))))
   `(gnus-group-mail-4 ((t (:foreground nil :weight normal :inherit outline-4))))
   `(gnus-group-mail-5 ((t (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-mail-6 ((t (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-mail-1 :foreground ,construction-paper--doc))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-mail-2 :foreground ,construction-paper--doc))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-mail-3 :foreground ,construction-paper--doc))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-mail-4 :foreground ,construction-paper--doc))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-mail-5 :foreground ,construction-paper--doc))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-mail-6 :foreground ,construction-paper--doc))))
   `(gnus-group-news-1 ((t (:foreground nil :weight normal :inherit outline-5))))
   `(gnus-group-news-2 ((t (:foreground nil :weight normal :inherit outline-6))))
   `(gnus-group-news-3 ((t (:foreground nil :weight normal :inherit outline-7))))
   `(gnus-group-news-4 ((t (:foreground nil :weight normal :inherit outline-8))))
   `(gnus-group-news-5 ((t (:foreground nil :weight normal :inherit outline-1))))
   `(gnus-group-news-6 ((t (:foreground nil :weight normal :inherit outline-2))))
   `(gnus-group-news-1-empty ((t (:inherit gnus-group-news-1 :foreground ,construction-paper--doc))))
   `(gnus-group-news-2-empty ((t (:inherit gnus-group-news-2 :foreground ,construction-paper--doc))))
   `(gnus-group-news-3-empty ((t (:inherit gnus-group-news-3 :foreground ,construction-paper--doc))))
   `(gnus-group-news-4-empty ((t (:inherit gnus-group-news-4 :foreground ,construction-paper--doc))))
   `(gnus-group-news-5-empty ((t (:inherit gnus-group-news-5 :foreground ,construction-paper--doc))))
   `(gnus-group-news-6-empty ((t (:inherit gnus-group-news-6 :foreground ,construction-paper--doc))))

   `(erc-direct-msg-face ((t (:foreground ,construction-paper--keyword))))
   `(erc-error-face ((t (:foreground ,construction-paper--keyword))))
   `(erc-header-face ((t (:foreground ,construction-paper--added :background ,construction-paper--doc))))
   `(erc-input-face ((t (:foreground ,construction-paper--highlight-background))))
   `(erc-keyword-face ((t (:foreground ,construction-paper--link))))
   `(erc-current-nick-face ((t (:foreground ,construction-paper--highlight-background))))
   `(erc-my-nick-face ((t (:foreground ,construction-paper--highlight-background))))
   `(erc-nick-default-face ((t (:weight normal :foreground ,construction-paper--link))))
   `(erc-nick-msg-face ((t (:weight normal :foreground ,construction-paper--link))))
   `(erc-notice-face ((t (:foreground ,construction-paper--doc))))
   `(erc-pal-face ((t (:foreground ,construction-paper--keyword))))
   `(erc-prompt-face ((t (:foreground ,construction-paper--keyword))))
   `(erc-timestamp-face ((t (:foreground ,construction-paper--keyword))))

   ;; eshell
   `(eshell-ls-archive ((t (:foreground ,construction-paper--deemphasize :weight normal))))
   `(eshell-ls-backup ((t (:foreground ,construction-paper--deemphasize))))
   `(eshell-ls-clutter ((t (:foreground ,construction-paper--alert :weight normal))))
   `(eshell-ls-directory ((t (:foreground ,construction-paper--link :weight normal))))
   `(eshell-ls-executable ((t (:foreground ,construction-paper--text :weight normal))))
   `(eshell-ls-missing ((t (:foreground ,construction-paper--alert :weight normal))))
   `(eshell-ls-product ((t (:foreground ,construction-paper--alert))))
   `(eshell-ls-readonly ((t (:foreground ,construction-paper--alert))))
   `(eshell-ls-special ((t (:foreground ,construction-paper--alert :weight normal))))
   `(eshell-ls-symlink ((t (:foreground ,construction-paper--link :weight normal))))
   `(eshell-ls-unreadable ((t (:foreground ,construction-paper--deemphasize))))
   `(eshell-prompt ((t (:foreground ,construction-paper--alert :weight normal))))

   ;; custom
   `(custom-variable-tag ((t (:foreground ,construction-paper--keyword))))
   `(custom-group-tag ((t (:foreground ,construction-paper--keyword))))
   `(custom-state ((t (:foreground ,construction-paper--highlight-background))))
   `(custom-button-pressed-unraised ((t (:foreground ,construction-paper--keyword))))
   `(custom-changed ((t (:background ,construction-paper--added :foreground ,construction-paper--inverted-text))))
   `(custom-comment ((t (:background ,construction-paper--background :foreground ,construction-paper--doc))))
   `(custom-group-tag-1 ((t (:background ,construction-paper--background :foreground ,construction-paper--link))))
   `(custom-invalid ((t (:background ,construction-paper--alert :foreground ,construction-paper--inverted-text))))
   `(custom-modified ((t (:background ,construction-paper--added :foreground ,construction-paper--inverted-text))))
   `(custom-link ((t (:background ,construction-paper--background :foreground ,construction-paper--link))))
   `(custom-rogue ((t (:background ,construction-paper--background :foreground ,construction-paper--alert))))
   `(custom-set ((t (:background ,construction-paper--background :foreground ,construction-paper--keyword))))
   `(custom-themed ((t (:background ,construction-paper--background :foreground ,construction-paper--keyword))))

   ;; diary
   `(diary ((t (:background ,construction-paper--background :foreground ,construction-paper--changed))))

   ;; epa
   `(epa-field-body ((t (:background ,construction-paper--background :foreground ,construction-paper--good))))
   `(epa-field-name ((t (:background ,construction-paper--background :foreground ,construction-paper--good))))
   `(epa-mark ((t (:background ,construction-paper--background :foreground ,construction-paper--link))))
   `(epa-string ((t (:background ,construction-paper--background :foreground ,construction-paper--text))))
   `(epa-validity-disabled ((t (:background ,construction-paper--background :foreground ,construction-paper--alert))))
   `(epa-validity-high ((t (:background ,construction-paper--background :foreground ,construction-paper--good))))
   `(epa-validity-low ((t (:background ,construction-paper--background :foreground ,construction-paper--alert))))
   `(epa-validity-medium ((t (:background ,construction-paper--background :foreground ,construction-paper--changed))))

   ;; helm
   `(helm-M-x-key ((t (:background ,construction-paper--background :foreground ,construction-paper--text))))
   `(helm-action ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-addressbook ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-directory ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-file ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-file-not-found ((t (:foreground ,construction-paper--alert :background ,construction-paper--background))))
   `(helm-bookmark-gnus ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-info ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-man ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-bookmark-w3m ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-buffer-directory ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-buffer-file ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-buffer-not-saved ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-buffer-process ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-buffer-saved-out ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-buffer-size ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-buffer-archive ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-delete-async-message ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-candidate-number ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-candidate-number-suspended ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-ff-directory ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-ff-dotted-directory ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-ff-dotted-symlink-directory ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-ff-pipe ((t (:foreground ,construction-paper--link :background ,construction-paper--background :weight bold))))
   `(helm-ff-socket ((t (:foreground ,construction-paper--link :background ,construction-paper--background :weight bold))))
   `(helm-ff-suid ((t (:foreground ,construction-paper--inverted-text :background ,construction-paper--alert :weight bold))))
   `(helm-ff-denied ((t (:foreground ,construction-paper--alert :background ,construction-paper--background :weight bold))))
   `(helm-ff-executable ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-ff-file ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-ff-invalid-symlink ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-ff-prefix ((t (:foreground nil :background nil))))
   `(helm-ff-symlink ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-grep-cmd-line ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-grep-file ((t (:inverse t :foreground ,construction-paper--text :background ,construction-paper--background :weight bold))))
   `(helm-grep-finish ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-grep-lineno ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-grep-match ((t (:foreground ,construction-paper--highlight-foreground :background ,construction-paper--background :weight bold))))
   `(helm-header ((t (:background ,construction-paper--background :foreground ,construction-paper--text :height 0.75))))
   `(helm-header-line-left-margin ((t (:background ,construction-paper--background :foreground ,construction-paper--text :height 0.75))))
   `(helm-history-deleted ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-history-remote ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-lisp-completion-info ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-locate-finish ((t (:foreground ,construction-paper--good :background ,construction-paper--background))))
   `(helm-mode-prefix ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-non-file-buffer ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-prefarg ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-resume-need-update ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(helm-match ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--text :weight bold :weight bold))))
   `(helm-moccur-buffer ((t (:foreground ,construction-paper--text, :background ,construction-paper--background))))
   `(helm-selection ((t (:background ,construction-paper--text :foreground ,construction-paper--background :weight bold :height 1.0))))
   `(helm-selection-line ((t (:background ,construction-paper--highlight-background :foreground ,construction-paper--text :weight bold :height 1.0))))
   `(helm-separator ((t (:foreground ,construction-paper--text))))
   `(helm-source-header ((t (:foreground ,construction-paper--text :background ,construction-paper--background :weight bold :underline t))))
   `(helm-visible-mark ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))

   ;;  lsp
   `(lsp-ui-sideline-code-action ((t (:foreground ,construction-paper--highlight-background))))
   `(lsp-ui-doc-header ((t (:foreground ,construction-paper--good :background ,construction-paper--background))))
   `(lsp-ui-peek-filename ((t (:foreground ,construction-paper--alert))))
   `(lsp-ui-peek-header ((t (:foreground ,construction-paper--keyword :background ,construction-paper--background))))
   `(lsp-ui-peek-highlight ((t (:inverse-video t :foreground ,construction-paper--text :background ,construction-paper--background))))
   `(lsp-ui-peek-line-number ((t (:foreground ,construction-paper--text :background ,construction-paper--background))))
   `(lsp-ui-peek-list ((t (:inverse-video t :foreground ,construction-paper--text :background ,construction-paper--background))))
   `(lsp-ui-peek-peek ((t (:inverse-video t :foreground ,construction-paper--text :background ,construction-paper--background))))
   `(lsp-ui-peek-selection ((t (:inverse-video t :foreground ,construction-paper--text :background ,construction-paper--background))))
   `(lsp-ui-sideline-code-action ((t (:foreground ,construction-paper--deemphasize))))
   `(lsp-ui-sideline-current-symbol ((t (:foreground ,construction-paper--deemphasize :height 0.99 :weight black :box (:box (:line-width -1 :color ,construction-paper--keyword))))))
   `(lsp-ui-sideline-symbol ((t (:foreground ,construction-paper--deemphasize :height 0.99 :weight black :box (:box (:line-width -1 :color ,construction-paper--keyword))))))
   `(lsp-ui-sideline-symbol-info ((t (:height 0.99 :slant italic)))))

  (custom-theme-set-variables
   theme-name
   `(ansi-color-names-vector
     ;; black, keyword, highlight, link, keyword, magenta, cyan, white
     [,construction-paper--text ,construction-paper--keyword ,construction-paper--highlight-foreground ,construction-paper--link ,construction-paper--keyword ,construction-paper--link ,construction-paper--keyword ,construction-paper--added])
   `(ansi-term-color-vector
     ;; black, keyword, highlight, link, keyword, magenta, cyan, white
     [,construction-paper--text ,construction-paper--keyword ,construction-paper--highlight-foreground ,construction-paper--link ,construction-paper--keyword ,construction-paper--link ,construction-paper--keyword ,construction-paper--added])))

(defun construction-paper-light ()
  "Enable the construction paper light theme."
  (interactive)
  (enable-theme 'construction-paper-light))

(provide 'construction-paper)

;;; construction-paper.el ends here
