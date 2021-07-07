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

;;; Code:

(defun accent-theme-faces (theme-name)
  "Create a accent-theme theme named THEME-NAME."
  (message "keyword face: %s" accent-theme--keyword)
  (let ((accent-theme--find accent-theme--highlight))
    (custom-theme-set-faces
     theme-name
     ;; Built-in stuff (Emacs 23)
     `(border ((t (:background ,accent-theme--text))))
     `(internal-border ((t (:background ,accent-theme--background))))
     `(border-glyph ((t (nil))))
     `(cursor ((t (:background ,accent-theme--text))))
     `(default ((t (:background ,accent-theme--background :foreground ,accent-theme--text))))
     `(fringe ((t (:inherit default))))
     `(gui-element ((t (:background ,accent-theme--text :foreground ,accent-theme--added))))
     `(highlight-background ((t (:background ,accent-theme--background))))
     `(link ((t (:foreground ,accent-theme--link :underline t))))
     `(xref-match ((t (:foreground ,accent-theme--link :underline t))))
     `(link-visited ((t (:foreground ,accent-theme--link))))
     `(minibuffer-prompt ((t (:inherit default :inverse-video nil :height 1.0))))
     `(helpful-heading ((t (:inherit variable-pitch :height 1.4 :foreground ,accent-theme--text))))
     `(outline-1 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-2 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-3 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-4 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-5 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-6 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-7 ((t (:weight bold :foreground ,accent-theme--text))))
     `(outline-8 ((t (:weight bold :foreground ,accent-theme--text))))
     `(region ((t (:background ,accent-theme--highlight-background))))
     `(secondary-selection ((t (:background ,accent-theme--text :foreground ,accent-theme--background))))
     `(error ((t (:foreground ,accent-theme--alert :weight bold))))
     `(warning ((t (:foreground ,accent-theme--doc :weight bold))))
     `(success ((t (:foreground ,accent-theme--keyword :weight bold))))
     `(header-line ((t (:inherit variable-pitch :background ,accent-theme--background :foreground ,accent-theme--text :box (:color ,accent-theme--background :line-width 10) :underline nil :weight bold))))

     `(escape-glyph ((t (:foreground ,accent-theme--link))))

     `(tab-active ((t (:inherit outline-5 :foreground ,accent-theme--moss :weight bold))))
     `(tab-inactive ((t (:inherit outline-5))))

     `(highlight-indentation-face ((t (:background ,accent-theme--light-dark))))

     ;; mode line
     `(mode-line ((t (:background ,accent-theme--background :foreground ,accent-theme--good :box (:color ,accent-theme--background :line-width 4) :underline nil :weight normal :inverse-video nil))))
     `(mode-line-inactive ((t (:inherit mode-line))))
     `(mode-line-buffer-id ((t (:inherit mode-line))))
     `(mode-line-buffer-id-inactive ((t (:inherit mode-line-inactive))))
     `(mode-line-emphasis ((t (:inherit mode-line :weight bold))))
     `(vertical-border ((t (:background ,accent-theme--background :foreground ,accent-theme--inverted-background :box nil :underline nil :weight normal :inverse-video nil))))
     `(eyebrowse-mode-line-inactive ((t (:background ,accent-theme--background :foreground ,accent-theme--keyword :box nil :weight normal :inverse-video t))))
     `(eyebrowse-mode-line-separator ((t (:background ,accent-theme--background :foreground ,accent-theme--keyword :box nil :weight normal :inverse-video t))))
     `(eyebrowse-mode-line-delimiters ((t (:background ,accent-theme--background :foreground ,accent-theme--keyword :box nil :weight normal :inverse-video t))))
     `(mode-line-highlight-background ((t (:inherit mode-line :weight bold))))
     `(powerline-active1 ((t (:inherit mode-line :inverse-video t))))
     `(powerline-active2 ((t (:inherit mode-line :background ,accent-theme--background-dark))))
     `(powerline-inactive1 ((t (:inherit modeline-inactive :background ,accent-theme--background-medium))))
     `(powerline-inactive2 ((t (:inherit modeline-inactive :background ,accent-theme--background-medium))))
     `(persp-face-lighter-buffer-not-in-persp ((t (:weight bold :foreground ,accent-theme--inverted-text :background ,accent-theme--alert))))


     `(scroll-bar ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(yascroll:thumb-text-area ((t (:background ,accent-theme--highlight))))
     `(yascroll:thumb-fringe ((t (:background ,accent-theme--highlight))))

     ;; Font-lock stuff
     `(font-lock-builtin-face ((t (:foreground ,accent-theme--keyword))))
     `(font-lock-comment-delimiter-face ((t (:foreground ,accent-theme--doc))))
     `(font-lock-comment-face ((t (:foreground ,accent-theme--doc))))
     `(font-lock-constant-face ((t (:foreground ,accent-theme--accent))))
     `(font-lock-doc-face ((t (:foreground ,accent-theme--doc :slant italic))))
     `(font-lock-doc-string-face ((t (:foreground ,accent-theme--doc))))
     `(font-lock-function-name-face ((t (:foreground ,accent-theme--accent))))
     `(font-lock-keyword-face ((t (:foreground ,accent-theme--keyword :weight bold))))
     `(font-lock-negation-char-face ((t (:foreground ,accent-theme--alert))))
     `(font-lock-preprocessor-face ((t (:foreground ,accent-theme--keyword))))
     `(font-lock-regexp-grouping-backslash ((t (:foreground ,accent-theme--link))))
     `(font-lock-regexp-grouping-construct ((t (:foreground ,accent-theme--link))))
     `(font-lock-string-face ((t (:foreground ,accent-theme--string))))
     `(font-lock-type-face ((t (:foreground ,accent-theme--accent))))
     `(font-lock-variable-name-face ((t (:foreground ,accent-theme--text))))
     `(font-lock-warning-face ((t (:foreground ,accent-theme--sun))))

     `(which-func ((t (:inherit variable-pitch :background ,accent-theme--background :foreground ,accent-theme--deemphasize :weight normal :height 1.0))))
     `(header-line-path ((t (:inherit variable-pitch :foreground ,accent-theme--moss :weight normal :height 1.0))))

     ;; web mode
     `(web-mode-html-tag-face ((t (:inherit font-lock-keyword-face))))
     `(web-mode-error-face ((t (:inherit error))))
     `(web-mode-block-attr-name-face ((t (:foreground ,accent-theme--moss))))
     `(web-mode-block-attr-value-face ((t (:foreground ,accent-theme--water))))
     `(web-mode-block-face ((t (:foreground ,accent-theme--sun))))
     `(web-mode-current-element-highlight-face ((t (:foreground ,accent-theme--background :background ,accent-theme--text))))
     `(web-mode-current-column-highlight-face ((t (:foreground ,accent-theme--text :background ,accent-theme--text))))
     `(web-mode-inlay-face ((t (:foreground ,accent-theme--inverted-text :background ,accent-theme--sun))))
     `(web-mode-json-context-face ((t (:foreground ,accent-theme--keyword :background ,accent-theme--background))))
     `(web-mode-json-key-face ((t (:foreground ,accent-theme--keyword :background ,accent-theme--background))))
     `(web-mode-symbol-face ((t (:foreground ,accent-theme--keyword :background ,accent-theme--background))))
     `(web-mode-whitespace-face ((t (:foreground ,accent-theme--alert :background ,accent-theme--alert))))

     ;; transient
     `(transient-disabled-suffix ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(transient-enabled-suffix ((t (:background ,accent-theme--moss :foreground ,accent-theme--inverted-text))))

     ;; tty
     `(tty-menu-disabled-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(tty-menu-enabled-face ((t (:background ,accent-theme--water :foreground ,accent-theme--inverted-text))))
     `(tty-menu-selected-face ((t (:background ,accent-theme--moss :foreground ,accent-theme--inverted-text))))

     ;; linum-mode
     `(linum ((t (:background ,accent-theme--background :foreground ,accent-theme--deemphasize))))

     ;; hl-todo
     `(hl-todo ((t (:foreground ,accent-theme--alert))))

     ;; imenu
     `(imenu-list-entry-face ((t (:foreground ,accent-theme--sun))))
     `(imenu-list-entry-face-0 ((t (:foreground ,accent-theme--sun))))
     `(imenu-list-entry-face-1 ((t (:foreground ,accent-theme--moss))))
     `(imenu-list-entry-face-2 ((t (:foreground ,accent-theme--water))))
     `(imenu-list-entry-face-3 ((t (:foreground ,accent-theme--soil))))
     `(imenu-list-entry-subalist-face-0 ((t (:foreground ,accent-theme--sun :weight bold))))
     `(imenu-list-entry-subalist-face-1 ((t (:foreground ,accent-theme--moss :weight bold))))
     `(imenu-list-entry-subalist-face-2 ((t (:foreground ,accent-theme--water :weight bold))))
     `(imenu-list-entry-subalist-face-3 ((t (:foreground ,accent-theme--soil :weight bold))))

     ;; misc
     `(holiday ((t (:foreground ,accent-theme--sun))))
     `(homoglyph ((t (:foreground ,accent-theme--link))))

     ;; auto-highlight-symbol
     `(ahs-definition-face ((t (:background ,accent-theme--background :foreground ,accent-theme--link :underline t))))
     `(ahs-edit-mode-face ((t (:background ,accent-theme--background :box (:line-width 1 :color ,accent-theme--deemphasize)))))
     `(ahs-face ((t (:background ,accent-theme--background :box (:line-width 1 :color ,accent-theme--deemphasize)))))
     `(ahs-plugin-bod-face ((t (:background ,accent-theme--background (:line-width 1 :color ,accent-theme--good)))))
     `(ahs-plugin-defalt-face ((t (:background ,accent-theme--background (:line-width 1 :color ,accent-theme--good)))))
     `(ahs-plugin-whole-buffer-face ((t (:background ,accent-theme--background (:line-width 1 :color ,accent-theme--good)))))
     `(ahs-warning-face ((t (:background ,accent-theme--alert :foreground ,accent-theme--inverted-text))))

     ;; cua
     `(cua-global-mark ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--highlight-foreground))))
     `(cua-rectangle ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--highlight-foreground))))
     `(cua-rectangle-no-select ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--highlight-foreground))))

     ;; anzu
     `(anzu-match-1 ((t (:background ,accent-theme--good :foreground ,accent-theme--inverted-text))))
     `(anzu-match-2 ((t (:background ,accent-theme--keyword :foreground ,accent-theme--inverted-text))))
     `(anzu-match-3 ((t (:background ,accent-theme--link :foreground ,accent-theme--inverted-text))))
     `(anzu-mode-line ((t (:foreground ,accent-theme--text))))
     `(anzu-mode-line-no-match ((t (:foreground ,accent-theme--alert))))
     `(anzu-replace-highlight ((t (:background ,accent-theme--good :foreground ,accent-theme--inverted-text))))
     `(anzu-replace-to ((t (:background ,accent-theme--good :foreground ,accent-theme--inverted-text))))

     ;; spacebar
     `(spacebar-persp ((t (:inherit variable-pitch :background ,accent-theme--background :foreground ,accent-theme--text :height 1.1))))
     `(spacebar-active ((t (:inherit variable-pitch :background ,accent-theme--background :foreground ,accent-theme--text :height 1.1 :weight bold))))
     `(spacebar-inactive ((t (:inherit variable-pitch :background ,accent-theme--background :foreground ,accent-theme--deemphasize :weight normal :height 1.1))))

     ;; smerge
     `(smerge-base ((t (:foreground ,accent-theme--background-medium))))
     `(smerge-base-lower ((t (:foreground ,accent-theme--background-medium))))
     `(smerge-markers ((t (:foreground ,accent-theme--deemphasize))))
     `(smerge-refined-added ((t (:background ,accent-theme--added-highlight))))
     `(smerge-refined-changed ((t (:background ,accent-theme--changed-highlight))))
     `(smerge-refined-removed ((t (:background ,accent-theme--removed-highlight))))
     `(smerge-upper ((t (:background ,accent-theme--background-medium))))
     `(smerge-lower ((t (:background ,accent-theme--background-medium))))

     ;; spacemacs
     `(spacemacs-emacs-face ((t (:background ,accent-theme--water :foreground ,accent-theme--inverted-text))))
     `(spacemacs-evilified-face ((t (:background ,accent-theme--sun :foreground ,accent-theme--inverted-text))))
     `(spacemacs-helm-navigation-ts-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-hybrid-face ((t (:background ,accent-theme--water :foreground ,accent-theme--inverted-text))))
     `(spacemacs-ido-navigation-ts-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-iedit-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-iedit-insert-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-insert-face ((t (:background ,accent-theme--moss :foreground ,accent-theme--inverted-text))))
     `(spacemacs-lisp-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-micro-state-binding-face ((t (:background ,accent-theme--sun :foreground ,accent-theme--inverted-text))))
     `(spacemacs-micro-state-header-face ((t (:weight bold :box (:line-width -1 :color ,(plist-get (face-attribute 'mode-line :box) :color) :style nil) :foreground ,accent-theme--sun :background ,accent-theme--inverted-text))))
     `(spacemacs-motion-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-normal-face ((t (:background ,accent-theme--inverted-background :foreground ,accent-theme--inverted-text))))
     `(spacemacs-replace-face ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(spacemacs-visual-face ((t (:background ,accent-theme--text :foreground ,accent-theme--background))))

     ;; symbol overlay
     `(symbol-overlay-face-1 ((t (:background ,accent-theme--water :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-2 ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-3 ((t (:background ,accent-theme--sun :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-4 ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-5 ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-6 ((t (:background ,accent-theme--fire :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-7 ((t (:background ,accent-theme--moss :foreground ,accent-theme--inverted-text))))
     `(symbol-overlay-face-8 ((t (:background ,accent-theme--water :foreground ,accent-theme--inverted-text))))

     ;; table.el
     `(table-cell ((t (:background ,accent-theme--water :foreground ,accent-theme--inverted-text))))

     ;; sp
     `(sp-wrap-overlay-closing-pair ((t (:foreground ,accent-theme--fire :background ,accent-theme--sun))))
     `(sp-wrap-overlay-opening-pair ((t (:foreground ,accent-theme--inverted-text :background ,accent-theme--sun))))

     ;; ivy
     `(ivy-posframe-border ((t (:background ,accent-theme--highlight-background))))
     `(ivy-org ((t (:inherit default))))
     `(ivy-grep-info ((t (:inherit default :foreground ,accent-theme--link))))
     `(ivy-grep-line-number ((t (:inherit default :foreground ,accent-theme--link))))
     `(ivy-confirm-face ((t (:inverse-video t))))
     `(ivy-virtual ((t (:inherit default))))
     `(ivy-remote ((t (:inherit default))))
     `(ivy-posframe ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--text))))
     `(ivy-posframe-cursor ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--text))))
     `(ivy-prompt-match ((t (:foreground ,accent-theme--good))))
     `(ivy-confirm-face ((t (:inherit minibuffer-prompt :foreground ,accent-theme--text))))
     `(ivy-current-match ((t (:weight bold :background ,accent-theme--highlight-background))))
     `(ivy-match-required-face ((t (:inherit minibuffer-prompt :foreground ,accent-theme--alert))))
     `(ivy-minibuffer-match-face-1 ((t (:weight bold :foreground ,accent-theme--keyword))))
     `(ivy-minibuffer-match-face-2 ((t (:weight bold :foreground ,accent-theme--keyword))))
     `(ivy-minibuffer-match-face-3 ((t (:weight bold :foreground ,accent-theme--keyword))))
     `(ivy-minibuffer-match-face-4 ((t (:weight bold :foreground ,accent-theme--keyword))))
     `(ivy-highlight-face ((t (:underline (:color ,accent-theme--highlight-background)))))
     `(ivy-remote ((t (:foreground ,accent-theme--link))))

     ;; hydra
     `(hydra-face-amaranth ((t (:foregound ,accent-theme--text :weight bold))))
     `(hydra-face-blue ((t (:foreground ,accent-theme--text :weight bold))))
     `(hydra-face-pink ((t (:foreground ,accent-theme--text :weight bold))))
     `(hydra-face-red ((t (:foreground ,accent-theme--text :weight bold))))
     `(hydra-face-teal ((t (:foreground ,accent-theme--text :weight bold))))

     ;; mu4e
     `(mu4e-header-highlight-background-face ((t (:inherit region :weight bold))))
     `(mu4e-title-face ((t (:foreground ,accent-theme--text :weight bold))))
     `(mu4e-highlight-face ((t (:foreground ,accent-theme--text :weight bold))))
     `(mu4e-context-face ((t (:foreground ,accent-theme--text :weight bold))))

     ;; neotree
     `(neo-banner-face ((t (:foreground ,accent-theme--text :weight normal))))
     `(neo-dir-link-face ((t (:foreground ,accent-theme--text))))
     `(neo-expand-btn-face ((t (:foreground ,accent-theme--text))))
     `(neo-file-link-face ((t (:foreground ,accent-theme--text))))
     `(neo-root-dir-face ((t (:foreground ,accent-theme--text :weight normal))))
     `(neo-vc-added-face ((t (:foreground ,accent-theme--keyword))))
     `(neo-vc-conflict-face ((t (:foreground ,accent-theme--alert))))
     `(neo-vc-edited-face ((t (:foreground ,accent-theme--highlight-background))))
     `(neo-vc-ignored-face ((t (:foreground ,accent-theme--deemphasize))))
     `(neo-vc-missing-face ((t (:foreground ,accent-theme--alert))))
     `(neo-vc-needs-merge-face ((t (:foreground ,accent-theme--alert))))
     `(neo-vc-unlocked-changes-face ((t (:background ,accent-theme--link :foreground ,accent-theme--background))))
     `(neo-vc-up-to-date-face ((t (:foreground ,accent-theme--text))))
     `(neo-vc-user-face ((t (:foreground ,accent-theme--alert :slant italic))))

     ;; Search
     `(lazy-highlight-background ((t (:background ,accent-theme--highlight :weight normal))))
     `(match ((t (:background ,accent-theme--highlight))))
     `(isearch ((t (:background ,accent-theme--highlight))))
     `(isearch-lazy-highlight-background-face ((t (:box ,accent-theme--highlight))))
     `(lazy-highlight ((t (:background ,accent-theme--highlight))))
     `(isearch-fail ((t (:foreground ,accent-theme--alert))))

     ;; evil
     `(evil-search-highlight-background-persist-highlight-background-face ((t (:background ,accent-theme--find :inherit font-lock-warning-face :inverse-video t))))
     `(evil-ex-lazy-highlight ((t (:background ,accent-theme--highlight))))
     `(evil-ex-info ((t (:foreground ,accent-theme--good))))
     `(evil-ex-substitute-replacement ((t (:underline (:color ,accent-theme--moss)))))

     ;; Popups
     `(popup-face ((t (:foreground ,accent-theme--text :background ,accent-theme--added))))
     `(popup-isearch-match ((t (:foreground ,accent-theme--background :background ,accent-theme--highlight-background))))
     `(popup-scroll-bar-background-face ((t (:background ,accent-theme--background))))
     `(popup-scroll-bar-foreground-face ((t (:background ,accent-theme--text))))
     `(popup-summary-face ((t (:foreground ,accent-theme--text))))
     `(popup-tip-face ((t (:background ,accent-theme--inverted-background :foreground ,accent-theme--inverted-text))))
     `(popup-menu-mouse-face ((t (:foreground ,accent-theme--background :background ,accent-theme--keyword))))
     `(popup-menu-selection-face ((t (:foreground ,accent-theme--background :background ,accent-theme--keyword))))

     ;; Flymake / Flycheck / Flyspell
     `(flymake-error ((t (:underline (:color ,accent-theme--alert :style wave)))))
     `(flycheck-error ((t (:underline (:color ,accent-theme--alert :style wave)))))
     `(flymake-warning ((t (:underline (:color ,accent-theme--deemphasize :style wave)))))
     `(flycheck-error-list-highlight ((t (:background ,accent-theme--changed :foreground ,accent-theme--inverted-text))))
     `(flycheck-info ((t (:underline (:color ,accent-theme--good :style wave)))))
     `(flycheck-warning ((t (:underline (:color ,accent-theme--warning :style wave)))))
     `(flyspell-duplicate ((t (:underline (:color ,accent-theme--warning :style wave)))))
     `(flyspell-incorrect ((t (:underline (:color ,accent-theme--alert :style wave)))))

     ;; Emacs lisp
     `(eval-sexp-fu-flash ((t (:foreground ,accent-theme--good))))
     `(eval-sexp-fu-flash-error ((t (:foreground ,accent-theme--alert))))

     ;; Clojure errors
     `(clojure-test-failure-face ((t (:background nil :inherit flymake-warnline))))
     `(clojure-test-error-face ((t (:background nil :inherit flymake-errline))))
     `(clojure-test-success-face ((t (:background nil :foreground nil :underline ,accent-theme--highlight-background))))

     ;; For Brian Carper's extended clojure syntax table
     `(clojure-keyword ((t (:foreground ,accent-theme--link))))
     `(clojure-parens ((t (:foreground ,accent-theme--added))))
     `(clojure-braces ((t (:foreground ,accent-theme--highlight-background))))
     `(clojure-brackets ((t (:foreground ,accent-theme--link))))
     `(clojure-double-quote ((t (:foreground ,accent-theme--keyword :background nil))))
     `(clojure-special ((t (:foreground ,accent-theme--keyword))))
     `(clojure-java-call ((t (:foreground ,accent-theme--link))))

     ;; Avy
     `(avy-background-face ((t (:background ,accent-theme--background :foreground ,accent-theme--text))))
     `(avy-goto-char-timer-face ((t (:background ,accent-theme--background :foreground ,accent-theme--text))))
     `(avy-lead-face ((t (:background ,accent-theme--link :foreground ,accent-theme--inverted-text :weight bold))))
     `(avy-lead-face-0 ((t (:background ,accent-theme--link :foreground ,accent-theme--inverted-text :weight bold))))
     `(avy-lead-face-1 ((t (:background ,accent-theme--link :foreground ,accent-theme--inverted-text :weight bold))))
     `(avy-lead-face-2 ((t (:background ,accent-theme--link :foreground ,accent-theme--inverted-text :weight bold))))

     ;; ace window
     `(aw-background-face ((t (:foreground ,accent-theme--highlight-background))))
     `(aw-key-face ((t (:foreground ,accent-theme--changed))))
     `(aw-leading-char-face ((t (:background ,accent-theme--changed :foreground ,accent-theme--inverted-text :height 2.5))))
     `(aw-minibuffer-leading-char-face ((t (:background ,accent-theme--changed :foreground ,accent-theme--inverted-text :height 2.5))))
     `(aw-mode-line-face ((t (:background ,accent-theme--changed :foreground ,accent-theme--inverted-text :height 2.5))))

     ;; MMM-mode
     `(mmm-code-submode-face ((t (:background ,accent-theme--text))))
     `(mmm-comment-submode-face ((t (:inherit font-lock-comment-face))))
     `(mmm-output-submode-face ((t (:background ,accent-theme--text))))

     ;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((t (:foreground ,accent-theme--link))))
     `(rainbow-delimiters-depth-2-face ((t (:foreground ,accent-theme--keyword))))
     `(rainbow-delimiters-depth-3-face ((t (:foreground ,accent-theme--keyword))))
     `(rainbow-delimiters-depth-4-face ((t (:foreground ,accent-theme--highlight-background))))
     `(rainbow-delimiters-depth-5-face ((t (:foreground ,accent-theme--link))))
     `(rainbow-delimiters-depth-6-face ((t (:foreground ,accent-theme--keyword))))
     `(rainbow-delimiters-depth-7-face ((t (:foreground ,accent-theme--keyword))))
     `(rainbow-delimiters-depth-8-face ((t (:foreground ,accent-theme--text))))
     `(rainbow-delimiters-depth-9-face ((t (:foreground ,accent-theme--added))))

     ;; IDO
     `(ido-first-match ((t (:foreground ,accent-theme--text :weight bold))))
     `(ido-indicator ((t (:background ,accent-theme--background :foreground ,accent-theme--highlight-background :width condensed))))
     `(ido-only-match ((t (:foreground ,accent-theme--text :weight bold))))
     `(ido-subdir ((t (:foreground ,accent-theme--text))))
     `(ido-incomplete-regexp ((t (:foreground ,accent-theme--text))))
     `(ido-incomplete-virtual ((t (:foreground ,accent-theme--text))))
     `(ido-virtual ((t (:foreground ,accent-theme--text))))
     `(flx-highlight-face ((t (:foreground ,accent-theme--text :underline t))))

     ;; Company
     `(company-echo-common ((t (:foreground ,accent-theme--text))))
     `(company-preview ((t (:height 1.0 :foreground ,accent-theme--text))))
     `(company-preview-common ((t (:weight bold :foreground ,accent-theme--text))))
     `(company-preview-search ((t (:weight bold :foreground ,accent-theme--text))))
     `(company-scrollbar-bg ((t (:background ,accent-theme--inverted-background))))
     `(company-scrollbar-fg ((t (:background ,accent-theme--inverted-background-medium))))
     `(company-template-field ((t (:background ,accent-theme--inverted-background :foreground ,accent-theme--moss))))
     `(company-tooltip ((t (:background ,accent-theme--background-medium :foreground ,accent-theme--text))))
     `(company-tooltip-mouse ((t (:background ,accent-theme--background-medium :foreground ,accent-theme--text))))
     `(company-tooltip-annotation ((t (:foreground ,accent-theme--soil))))
     `(company-tooltip-common ((t (:inherit company-tooltip :weight bold :foreground ,accent-theme--text))))
     `(company-tooltip-common-selection ((t (:weight bold :foreground  ,accent-theme--text))))
     `(company-tooltip-selection ((t (:background ,accent-theme--background-dark :foreground ,accent-theme--text))))

     `(trailing-whitespace ((t (:background ,accent-theme--fire :foreground ,accent-theme--link))))
     `(whitespace-empty ((t (:foreground ,accent-theme--keyword :background ,accent-theme--link))))
     `(whitespace-hspace ((t (:background ,accent-theme--doc :foreground ,accent-theme--doc))))
     `(whitespace-indentation ((t (:background ,accent-theme--link :foreground ,accent-theme--keyword))))
     `(whitespace-line ((t (:background ,accent-theme--removed))))
     `(whitespace-newline ((t (:foreground ,accent-theme--doc))))
     `(whitespace-space ((t (:foreground ,accent-theme--doc))))
     `(whitespace-space-after-tab ((t (:background ,accent-theme--link :foreground ,accent-theme--keyword))))
     `(whitespace-space-before-tab ((t (:background ,accent-theme--keyword :foreground ,accent-theme--keyword))))
     `(whitespace-tab ((t (:background ,accent-theme--doc :foreground ,accent-theme--doc))))
     `(whitespace-trailing ((t (:background ,accent-theme--keyword :foreground ,accent-theme--link))))

     ;; Parenthesis matching (built-in)
     `(show-paren-match ((t (:weight bold))))
     `(show-paren-mismatch ((t (:background ,accent-theme--alert))))

     ;; Parenthesis matching (mic-paren)
     `(paren-face-match ((t (:foreground nil :background nil :inherit show-paren-match))))
     `(paren-face-mismatch ((t (:foreground nil :background nil :inherit show-paren-mismatch))))
     `(paren-face-no-match ((t (:foreground nil :background nil :inherit show-paren-mismatch))))

     ;; Parenthesis dimming (parenface)
     `(paren-face ((t (:foreground ,accent-theme--doc :background nil))))

     `(sh-heredoc ((t (:foreground nil :inherit font-lock-string-face :weight normal))))
     `(sh-quoted-exec ((t (:foreground nil :inherit font-lock-preprocessor-face))))
     `(slime-highlight-background-edits-face ((t (:weight bold))))
     `(slime-repl-input-face ((t (:weight normal :underline nil))))
     `(slime-repl-prompt-face ((t (:underline nil :weight bold :foreground ,accent-theme--link))))
     `(slime-repl-result-face ((t (:foreground ,accent-theme--highlight-background))))
     `(slime-repl-output-face ((t (:foreground ,accent-theme--keyword :background ,accent-theme--text))))

     `(csv-separator-face ((t (:foreground ,accent-theme--keyword))))

     `(diff-added ((t (:foreground ,accent-theme--added))))
     `(diff-changed ((t (:foreground ,accent-theme--changed))))
     `(diff-removed ((t (:foreground ,accent-theme--removed))))
     `(diff-header ((t (:background ,accent-theme--background-medium :foreground ,accent-theme--text))))
     `(diff-file-header ((t (:background ,accent-theme--background-medium :foreground ,accent-theme--keyword))))
     `(diff-hunk-header ((t (:background ,accent-theme--background-medium :foreground ,accent-theme--link))))
     `(diff-refine-added ((t (:background ,accent-theme--added-highlight))))
     `(diff-refine-changed ((t (:background ,accent-theme--changed-highlight))))
     `(diff-refine-removed ((t (:background ,accent-theme--removed-highlight))))

     `(diff-hl-change ((t (:foreground ,accent-theme--changed-highlight :background ,accent-theme--changed-highlight))))
     `(diff-hl-delete ((t (:foreground ,accent-theme--removed-highlight :background ,accent-theme--removed-highlight))))
     `(diff-hl-insert ((t (:foreground ,accent-theme--added-highlight :background ,accent-theme--added-highlight))))

     `(ediff-even-diff-A ((t (:foreground nil :background nil :inverse-video t))))
     `(ediff-even-diff-B ((t (:foreground nil :background nil :inverse-video t))))
     `(ediff-odd-diff-A  ((t (:foreground ,accent-theme--doc :background nil :inverse-video t))))
     `(ediff-odd-diff-B  ((t (:foreground ,accent-theme--doc :background nil :inverse-video t))))

     `(eldoc-highlight-background-function-argument ((t (:foreground ,accent-theme--highlight-background :weight bold))))

     ;; undo-tree
     `(undo-tree-visualizer-default-face ((t (:foreground ,accent-theme--added))))
     `(undo-tree-visualizer-current-face ((t (:foreground ,accent-theme--highlight-background :weight bold))))
     `(undo-tree-visualizer-active-branch-face ((t (:foreground ,accent-theme--keyword))))
     `(undo-tree-visualizer-register-face ((t (:foreground ,accent-theme--link))))
     `(undo-tree-visualizer-unmodified-face ((t (:foreground ,accent-theme--link))))

     ;; auctex
     `(font-latex-bold-face ((t (:foreground ,accent-theme--highlight-background))))
     `(font-latex-doctex-documentation-face ((t (:background ,accent-theme--text))))
     `(font-latex-italic-face ((t (:foreground ,accent-theme--highlight-background))))
     `(font-latex-math-face ((t (:foreground ,accent-theme--keyword))))
     `(font-latex-sectioning-0-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-sectioning-1-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-sectioning-2-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-sectioning-3-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-sectioning-4-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-sectioning-5-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-sedate-face ((t (:foreground ,accent-theme--keyword))))
     `(font-latex-string-face ((t (:foreground ,accent-theme--link))))
     `(font-latex-verbatim-face ((t (:foreground ,accent-theme--keyword))))
     `(font-latex-warning-face ((t (:foreground ,accent-theme--keyword))))

     ;; dired+
     `(diredp-compressed-file-suffix ((t (:foreground ,accent-theme--keyword))))
     `(diredp-dir-heading ((t (:foreground nil :background nil :inherit heading))))
     `(diredp-dir-priv ((t (:foreground ,accent-theme--keyword :background nil))))
     `(diredp-exec-priv ((t (:foreground ,accent-theme--keyword :background nil))))
     `(diredp-executable-tag ((t (:foreground ,accent-theme--keyword :background nil))))
     `(diredp-file-name ((t (:foreground ,accent-theme--link))))
     `(diredp-file-suffix ((t (:foreground ,accent-theme--highlight-background))))
     `(diredp-flag-mark-line ((t (:background nil :inherit highlight-background))))
     `(diredp-ignored-file-name ((t (:foreground ,accent-theme--doc))))
     `(diredp-link-priv ((t (:background nil :foreground ,accent-theme--link))))
     `(diredp-mode-line-flagged ((t (:foreground ,accent-theme--keyword))))
     `(diredp-mode-line-marked ((t (:foreground ,accent-theme--highlight-background))))
     `(diredp-no-priv ((t (:background nil))))
     `(diredp-number ((t (:foreground ,accent-theme--link))))
     `(diredp-other-priv ((t (:background nil :foreground ,accent-theme--link))))
     `(diredp-rare-priv ((t (:foreground ,accent-theme--keyword :background nil))))
     `(diredp-read-priv ((t (:foreground ,accent-theme--highlight-background :background nil))))
     `(diredp-symlink ((t (:foreground ,accent-theme--link))))
     `(diredp-write-priv ((t (:foreground ,accent-theme--link :background nil))))


     ;; vc
     `(vc-dir-directory ((t (:inherit variable-pitch :foreground ,accent-theme--shadow-bright :height 1.25))))
     `(vc-dir-status-edited ((t (:foreground ,accent-theme--moss))))
     `(vc-dir-file ((t (:foreground ,accent-theme--text :weight bold))))

     ;; magit
     `(magit-bisect-bad ((t (:foreground ,accent-theme--alert))))
     `(magit-bisect-good ((t (:foreground ,accent-theme--keyword))))
     `(magit-bisect-skip ((t (:foreground ,accent-theme--text))))
     `(magit-branch-local ((t (:foreground ,accent-theme--link))))
     `(magit-branch-remote ((t (:foreground ,accent-theme--keyword))))
     `(magit-cherry-equivalent ((t (:foreground ,accent-theme--alert))))
     `(magit-cherry-unmatched ((t (:foreground ,accent-theme--link))))

     `(magit-diff-added ((t (:background ,accent-theme--added-highlight :foreground ,accent-theme--highlight-foreground))))
     `(magit-diff-added-highlight ((t (:background ,accent-theme--added-highlight :foreground ,accent-theme--highlight-foreground))))

     `(magit-diff-base ((t (:background ,accent-theme--block :foreground ,accent-theme--text))))
     `(magit-diff-base-highlight ((t (:background ,accent-theme--text :foreground ,accent-theme--background :weight bold))))
     `(magit-diff-context ((t (:foreground ,accent-theme--text))))
     `(magit-diff-context-highlight ((t (:background ,accent-theme--block))))
     `(magit-diff-file-heading ((t (:weight normal))))
     `(magit-diff-file-heading-highlight ((t (:weight bold))))
     `(magit-diff-file-heading-highlight-background ((t (:weight bold))))
     `(magit-diff-hunk-heading ((t (:background ,accent-theme--background :foreground ,accent-theme--text))))
     `(magit-diff-hunk-heading-highlight ((t (:background ,accent-theme--background :foreground ,accent-theme--text :weight bold))))

     `(magit-diff-removed ((t (:background ,accent-theme--removed-highlight :foreground ,accent-theme--highlight-foreground))))
     `(magit-diff-removed-highlight ((t (:background ,accent-theme--removed-highlight :foreground ,accent-theme--highlight-foreground))))
     `(magit-diff-whitespace-warning ((t (:background ,accent-theme--removed-highlight :foreground ,accent-theme--highlight-foreground))))

     `(magit-diffstat-added ((t (:foreground ,accent-theme--keyword))))
     `(magit-diffstat-removed ((t (:foreground ,accent-theme--alert))))
     `(magit-hash ((t (:foreground ,accent-theme--keyword))))
     `(magit-header-line ((t (:foreground ,accent-theme--moss :height 1.0))))
     `(magit-log-author ((t (:foreground ,accent-theme--alert))))
     `(magit-process-ng ((t (:inherit magit-section-heading :foreground ,accent-theme--alert))))
     `(magit-process-ok ((t (:inherit magit-section-heading :foreground ,accent-theme--keyword))))
     `(magit-reflog-amend ((t (:foreground ,accent-theme--alert))))
     `(magit-reflog-checkout ((t (:foreground ,accent-theme--link))))
     `(magit-reflog-cherry-pick ((t (:foreground ,accent-theme--keyword))))
     `(magit-reflog-commit ((t (:foreground ,accent-theme--keyword))))
     `(magit-reflog-merge ((t (:foreground ,accent-theme--keyword))))
     `(magit-reflog-other ((t (:foreground ,accent-theme--link))))
     `(magit-reflog-rebase ((t (:foreground ,accent-theme--alert))))
     `(magit-reflog-remote ((t (:foreground ,accent-theme--link))))
     `(magit-reflog-reset ((t (:foreground ,accent-theme--alert))))
     `(magit-section-heading ((t (:inherit default :foreground ,accent-theme--text))))
     `(magit-section-heading-selection ((t (:inherit variable-pitch :foreground ,accent-theme--text))))
     `(magit-section-highlight ((t (:inherit nil :weight normal))))
     `(magit-sequence-drop ((t (:foreground ,accent-theme--alert))))
     `(magit-sequence-head ((t (:foreground ,accent-theme--link))))
     `(magit-sequence-part ((t (:foreground ,accent-theme--highlight-background))))
     `(magit-sequence-stop ((t (:foreground ,accent-theme--keyword))))
     `(magit-signature-bad ((t (:foreground ,accent-theme--alert :weight normal))))
     `(magit-signature-error ((t (:foreground ,accent-theme--alert))))
     `(magit-signature-expired ((t (:foreground ,accent-theme--alert))))
     `(magit-signature-good ((t (:foreground ,accent-theme--keyword))))
     `(magit-signature-revoked ((t (:foreground ,accent-theme--alert))))
     `(magit-signature-untrusted ((t (:foreground ,accent-theme--link))))
     `(magit-tag ((t (:foreground ,accent-theme--highlight))))
     `(magithub-deleted-thing ((t (:inherit magit-section-highlight-background :background ,accent-theme--alert))))

     ;; term and ansi-term
     `(vterm-color-black ((t (:foreground ,accent-theme--text :background ,accent-theme--text))))
     `(vterm-color-red ((t (:foreground ,accent-theme--red :background ,accent-theme--keyword))))
     `(vterm-color-green ((t (:foreground ,accent-theme--green :background ,accent-theme--highlight-background))))
     `(vterm-color-yellow ((t (:foreground ,accent-theme--yellow :background ,accent-theme--link))))
     `(vterm-color-blue ((t (:foreground ,accent-theme--blue :background ,accent-theme--keyword))))
     `(vterm-color-magenta ((t (:foreground ,accent-theme--magenta :background ,accent-theme--link))))
     `(vterm-color-white ((t (:foreground ,accent-theme--added :background ,accent-theme--background))))
     `(vterm-color-cyan ((t (:foreground ,accent-theme--cyan :background ,accent-theme--keyword))))

     `(term-color-black ((t (:foreground ,accent-theme--text :background ,accent-theme--text))))
     `(term-color-white ((t (:foreground ,accent-theme--added :background ,accent-theme--background))))
     `(term-color-red ((t (:foreground ,accent-theme--red :background ,accent-theme--keyword))))
     `(term-color-yellow ((t (:foreground ,accent-theme--yellow :background ,accent-theme--link))))
     `(term-color-green ((t (:foreground ,accent-theme--green :background ,accent-theme--highlight-background))))
     `(term-color-cyan ((t (:foreground ,accent-theme--cyan :background ,accent-theme--keyword))))
     `(term-color-blue ((t (:foreground ,accent-theme--blue :background ,accent-theme--keyword))))
     `(term-color-magenta ((t (:foreground ,accent-theme--magenta :background ,accent-theme--link))))

     `(widget-button ((t (:underline t))))
     `(widget-field ((t (:background ,accent-theme--background :box (:line-width 1 :color ,accent-theme--text)))))
     `(widget-button-pressed ((t (:background ,accent-theme--background :foreground ,accent-theme--fire))))
     `(widget-documentation ((t (:background ,accent-theme--background :foreground ,accent-theme--moss))))

     ;; Compilation (most faces politely inherit from 'success, 'error, 'warning etc.)
     `(compilation-column-number ((t (:foreground ,accent-theme--link))))
     `(compilation-line-number ((t (:foreground ,accent-theme--link))))
     `(compilation-message-face ((t (:foreground ,accent-theme--keyword))))
     `(compilation-mode-line-exit ((t (:foreground ,accent-theme--highlight-background))))
     `(compilation-mode-line-fail ((t (:foreground ,accent-theme--keyword))))
     `(compilation-mode-line-run ((t (:foreground ,accent-theme--keyword))))

     ;; tooltip
     `(tool-tip ((t (:background ,accent-theme--inverted-background-medium :foreground ,accent-theme--inverted-text))))
     `(tooltip ((t (:background ,accent-theme--inverted-background-medium :foreground ,accent-theme--inverted-text))))

     ;; Grep
     `(grep-context-face ((t (:foreground ,accent-theme--doc))))
     `(grep-error-face ((t (:foreground ,accent-theme--keyword :weight bold :underline t))))
     `(grep-hit-face ((t (:foreground ,accent-theme--keyword))))
     `(grep-match-face ((t (:foreground nil :background nil :inherit match))))

     `(regex-tool-matched-face ((t (:foreground nil :background nil :inherit match))))

     ;; mark-multiple
     `(mm/master-face ((t (:inherit region :foreground nil :background nil))))
     `(mm/mirror-face ((t (:inherit region :foreground nil :background nil))))

     ;; info
     `(info-menu-header ((t (:inherit variable-pitch :foreground ,accent-theme--nav))))
     `(info-menu-star ((t (:foreground ,accent-theme--keyword))))

     ;; org-mode
     `(org-default ((t (:inherit variable-pitch))))
     `(org-agenda-structure ((t (:foreground ,accent-theme--link))))
     `(org-agenda-date ((t (:foreground ,accent-theme--keyword :underline nil))))
     `(org-agenda-done ((t (:foreground ,accent-theme--highlight-background))))
     `(org-agenda-dimmed-todo-face ((t (:foreground ,accent-theme--doc))))
     `(org-block ((t (:inherit fixed-pitch :foreground ,accent-theme--text :background ,accent-theme--block :box nil))))
     `(org-code ((t (:inherit fixed-pitch :foreground ,accent-theme--link))))
     `(org-column ((t (:background ,accent-theme--text))))
     `(org-column-title ((t (:inherit org-column :weight bold :underline t))))
     `(org-date ((t (:foreground ,accent-theme--link :underline t))))
     `(org-document-info ((t (:foreground ,accent-theme--keyword))))
     `(org-document-info-keyword ((t (:foreground ,accent-theme--keyword))))
     `(org-document-title ((t (:foreground ,accent-theme--text :weight bold))))
     `(org-done ((t (:inherit default :foreground ,accent-theme--doc :strike-through t))))
     `(org-headline-done ((t (:foreground ,accent-theme--doc :strike-through t))))
     `(org-ellipsis ((t (:foreground ,accent-theme--doc))))
     `(org-footnote ((t (:foreground ,accent-theme--keyword))))
     `(org-formula ((t (:foreground ,accent-theme--keyword))))
     `(org-hide ((t (:foreground ,accent-theme--text))))
     `(org-link ((t (:inherit link))))
     `(org-meta-line ((t (:foreground ,accent-theme--keyword))))
     `(org-block-end-line ((t (:inherit org-meta-line :weight bold))))
     `(org-block-begin-line ((t (:inherit org-meta-line :foreground ,accent-theme--doc :weight normal :underline nil))))
     `(org-scheduled ((t (:foreground ,accent-theme--highlight-background))))
     `(org-scheduled-previously ((t (:foreground ,accent-theme--keyword))))
     `(org-scheduled-today ((t (:foreground ,accent-theme--highlight-background))))
     `(org-special-keyword ((t (:foreground ,accent-theme--keyword))))
     `(org-property-value ((t (:foreground ,accent-theme--keyword))))
     `(org-table ((t (:inherit fixed-pitch :foreground ,accent-theme--link))))
     `(org-tag ((t (:foreground ,accent-theme--doc))))
     `(org-todo ((t (:inherit default :foreground ,accent-theme--alert))))
     `(org-upcoming-deadline ((t (:foreground ,accent-theme--keyword))))
     `(org-warning ((t (:weight bold :foreground ,accent-theme--keyword))))
     `(org-mode-line-clock-overrun ((t (:weight bold :foreground ,accent-theme--inverted-text :background ,accent-theme--alert))))

     ;; asciidoc
     `(markup-gen-face ((t (:foreground ,accent-theme--text))))
     `(markup-title-0-face ((t (:inherit variable-pitch :foreground ,accent-theme--text :height 3.0))))
     `(markup-title-1-face ((t (:inherit variable-pitch :foreground ,accent-theme--text :height 2.4))))
     `(markup-title-2-face ((t (:inherit variable-pitch :foreground ,accent-theme--text :height 1.8))))
     `(markup-title-3-face ((t (:inherit variable-pitch :foreground ,accent-theme--text :height 1.4 :weight bold))))
     `(markup-title-4-face ((t (:inherit variable-pitch :foreground ,accent-theme--text :height 1.2 :slant italic))))

     `(markdown-url-face ((t (:inherit link))))
     `(markdown-header-face ((t (:inherit variable-pitch))))
     `(markdown-link-face ((t (:foreground ,accent-theme--link :underline t))))

     `(hl-sexp-face ((t (:background ,accent-theme--text))))
     `(hl-line ((t (:background ,accent-theme--highlight))))
     `(highlight-background-80+ ((t (:background ,accent-theme--text))))
     `(highlight ((t (:background ,accent-theme--highlight))))

     ;; gotest
     `(go-test--ok-face ((t (:foreground ,accent-theme--moss))))
     `(go-test--error-face ((t (:foreground ,accent-theme--fire))))
     `(go-test--warning-face ((t (:foreground ,accent-theme--sun))))
     `(go-test--pointer-face ((t (:foreground ,accent-theme--water))))
     `(go-test--standard-face ((t (:foreground ,accent-theme--text))))

     ;; Python-specific overrides
     `(py-builtins-face ((t (:foreground ,accent-theme--keyword :weight normal))))
     ;; Cider
     `(cider-deprecated-face ((t (:background ,accent-theme--alert))))
     `(cider-enlightened-face ((t (:inherit cider-result-overlay-face :box (:line-width -1 :color ,accent-theme--highlight-background)))))
     `(cider-enlightened-local-face ((t (:foreground ,accent-theme--highlight-background :weight bold))))
     `(cider-error-highlight-background-face ((t (:inherit nil :underline (:color ,accent-theme--alert :style wave)))))
     `(cider-fringe-good-face ((t (:foreground ,accent-theme--keyword))))
     `(cider-instrumented-face ((t (:box (:line-width -1 :color ,accent-theme--alert)))))
     `(cider-result-overlay-face ((t (:background ,accent-theme--keyword :foreground ,accent-theme--background :box (:line-width -2 :color ,accent-theme--keyword) :slant italic :weight bold))))
     `(cider-test-error-face ((t (:weight bold :inverse-video t :foreground ,accent-theme--alert))))
     `(cider-test-failure-face ((t (:weight bold :inverse-video t :foreground ,accent-theme--alert))))
     `(cider-test-success-face ((t (:weight bold :foreground ,accent-theme--good))))
     `(cider-traced-face ((t (:box (:line-width -1 :color ,accent-theme--link)))))
     `(cider-warning-highlight-background-face ((t (:inherit nil :underline (:color ,accent-theme--highlight-background :style wave)))))

     ;; js2-mode
     `(js2-warning ((t (:underline (:color ,accent-theme--sun :style wave)))))
     `(js2-error ((t (:foreground nil :underline (:color ,accent-theme--sun :style wave)))))
     `(js2-external-variable ((t (:foreground ,accent-theme--link))))
     `(js2-function-param ((t (:foreground ,accent-theme--keyword))))
     `(js2-instance-member ((t (:foreground ,accent-theme--keyword))))
     `(js2-object-property ((t (:foreground ,accent-theme--keyword))))
     `(js2-private-function-call ((t (:foreground ,accent-theme--keyword))))

     ;; js3-mode
     `(js3-warning-face ((t (:underline (:color ,accent-theme--sun :style wave)))))
     `(js3-error-face ((t (:foreground nil :underline (:color ,accent-theme--alert :style wave)))))
     `(js3-external-variable-face ((t (:foreground ,accent-theme--link))))
     `(js3-function-param-face ((t (:foreground ,accent-theme--keyword))))
     `(js3-jsdoc-tag-face ((t (:foreground ,accent-theme--keyword))))
     `(js3-jsdoc-type-face ((t (:foreground ,accent-theme--keyword))))
     `(js3-jsdoc-value-face ((t (:foreground ,accent-theme--link))))
     `(js3-jsdoc-html-tag-name-face ((t (:foreground ,accent-theme--keyword))))
     `(js3-jsdoc-html-tag-delimiter-face ((t (:foreground ,accent-theme--highlight-background))))
     `(js3-instance-member-face ((t (:foreground ,accent-theme--keyword))))
     `(js3-private-function-call-face ((t (:foreground ,accent-theme--keyword))))

     ;; nxml
     `(nxml-name-face ((t (:foreground unspecified :inherit font-lock-constant-face))))
     `(nxml-attribute-local-name-face ((t (:foreground unspecified :inherit font-lock-variable-name-face))))
     `(nxml-ref-face ((t (:foreground unspecified :inherit font-lock-preprocessor-face))))
     `(nxml-delimiter-face ((t (:foreground unspecified :inherit font-lock-keyword-face))))
     `(nxml-delimited-data-face ((t (:foreground unspecified :inherit font-lock-string-face))))
     `(rng-error-face ((t (:underline ,accent-theme--keyword))))

     ;; RHTML
     `(erb-delim-face ((t (:background ,accent-theme--text))))
     `(erb-exec-face ((t (:background ,accent-theme--text :weight bold))))
     `(erb-exec-delim-face ((t (:background ,accent-theme--text))))
     `(erb-out-face ((t (:background ,accent-theme--text :weight bold))))
     `(erb-out-delim-face ((t (:background ,accent-theme--text))))
     `(erb-comment-face ((t (:background ,accent-theme--text :weight bold :slant italic))))
     `(erb-comment-delim-face ((t (:background ,accent-theme--text))))

     ;; Message-mode
     `(message-header-other ((t (:foreground nil :background nil :weight normal))))
     `(message-header-subject ((t (:inherit message-header-other :weight bold :foreground ,accent-theme--link))))
     `(message-header-to ((t (:inherit message-header-other :weight bold :foreground ,accent-theme--keyword))))
     `(message-header-cc ((t (:inherit message-header-to :foreground nil))))
     `(message-header-name ((t (:foreground ,accent-theme--keyword :background nil))))
     `(message-header-newsgroups ((t (:foreground ,accent-theme--keyword :background nil :slant normal))))
     `(message-separator ((t (:foreground ,accent-theme--link))))

     ;; Jabber
     `(jabber-chat-prompt-local ((t (:foreground ,accent-theme--link))))
     `(jabber-chat-prompt-foreign ((t (:foreground ,accent-theme--keyword))))
     `(jabber-chat-prompt-system ((t (:foreground ,accent-theme--link :weight bold))))
     `(jabber-chat-text-local ((t (:foreground ,accent-theme--link))))
     `(jabber-chat-text-foreign ((t (:foreground ,accent-theme--keyword))))
     `(jabber-chat-text-error ((t (:foreground ,accent-theme--keyword))))

     `(jabber-roster-user-online ((t (:foreground ,accent-theme--highlight-background))))
     `(jabber-roster-user-xa ((t :foreground ,accent-theme--doc)))
     `(jabber-roster-user-dnd ((t :foreground ,accent-theme--link)))
     `(jabber-roster-user-away ((t (:foreground ,accent-theme--keyword))))
     `(jabber-roster-user-chatty ((t (:foreground ,accent-theme--link))))
     `(jabber-roster-user-error ((t (:foreground ,accent-theme--keyword))))
     `(jabber-roster-user-offline ((t (:foreground ,accent-theme--doc))))

     `(jabber-rare-time-face ((t (:foreground ,accent-theme--doc))))
     `(jabber-activity-face ((t (:foreground ,accent-theme--link))))
     `(jabber-activity-personal-face ((t (:foreground ,accent-theme--keyword))))

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
     `(gnus-header-from ((t (:inherit message-header-other-face :weight bold :foreground ,accent-theme--keyword))))
     `(gnus-header-name ((t (:inherit message-header-name))))
     `(gnus-button ((t (:inherit link :foreground nil))))
     `(gnus-signature ((t (:inherit font-lock-comment-face))))

     `(gnus-summary-normal-unread ((t (:foreground ,accent-theme--keyword :weight normal))))
     `(gnus-summary-normal-read ((t (:foreground ,accent-theme--added :weight normal))))
     `(gnus-summary-normal-ancient ((t (:foreground ,accent-theme--keyword :weight normal))))
     `(gnus-summary-normal-ticked ((t (:foreground ,accent-theme--keyword :weight normal))))
     `(gnus-summary-low-unread ((t (:foreground ,accent-theme--doc :weight normal))))
     `(gnus-summary-low-read ((t (:foreground ,accent-theme--doc :weight normal))))
     `(gnus-summary-low-ancient ((t (:foreground ,accent-theme--doc :weight normal))))
     `(gnus-summary-high-unread ((t (:foreground ,accent-theme--link :weight normal))))
     `(gnus-summary-high-read ((t (:foreground ,accent-theme--highlight-background :weight normal))))
     `(gnus-summary-high-ancient ((t (:foreground ,accent-theme--highlight-background :weight normal))))
     `(gnus-summary-high-ticked ((t (:foreground ,accent-theme--keyword :weight normal))))
     `(gnus-summary-cancelled ((t (:foreground ,accent-theme--keyword :background nil :weight normal))))

     `(gnus-group-mail-low ((t (:foreground ,accent-theme--doc))))
     `(gnus-group-mail-low-empty ((t (:foreground ,accent-theme--doc))))
     `(gnus-group-mail-1 ((t (:foreground nil :weight normal :inherit outline-1))))
     `(gnus-group-mail-2 ((t (:foreground nil :weight normal :inherit outline-2))))
     `(gnus-group-mail-3 ((t (:foreground nil :weight normal :inherit outline-3))))
     `(gnus-group-mail-4 ((t (:foreground nil :weight normal :inherit outline-4))))
     `(gnus-group-mail-5 ((t (:foreground nil :weight normal :inherit outline-5))))
     `(gnus-group-mail-6 ((t (:foreground nil :weight normal :inherit outline-6))))
     `(gnus-group-mail-1-empty ((t (:inherit gnus-group-mail-1 :foreground ,accent-theme--doc))))
     `(gnus-group-mail-2-empty ((t (:inherit gnus-group-mail-2 :foreground ,accent-theme--doc))))
     `(gnus-group-mail-3-empty ((t (:inherit gnus-group-mail-3 :foreground ,accent-theme--doc))))
     `(gnus-group-mail-4-empty ((t (:inherit gnus-group-mail-4 :foreground ,accent-theme--doc))))
     `(gnus-group-mail-5-empty ((t (:inherit gnus-group-mail-5 :foreground ,accent-theme--doc))))
     `(gnus-group-mail-6-empty ((t (:inherit gnus-group-mail-6 :foreground ,accent-theme--doc))))
     `(gnus-group-news-1 ((t (:foreground nil :weight normal :inherit outline-5))))
     `(gnus-group-news-2 ((t (:foreground nil :weight normal :inherit outline-6))))
     `(gnus-group-news-3 ((t (:foreground nil :weight normal :inherit outline-7))))
     `(gnus-group-news-4 ((t (:foreground nil :weight normal :inherit outline-8))))
     `(gnus-group-news-5 ((t (:foreground nil :weight normal :inherit outline-1))))
     `(gnus-group-news-6 ((t (:foreground nil :weight normal :inherit outline-2))))
     `(gnus-group-news-1-empty ((t (:inherit gnus-group-news-1 :foreground ,accent-theme--doc))))
     `(gnus-group-news-2-empty ((t (:inherit gnus-group-news-2 :foreground ,accent-theme--doc))))
     `(gnus-group-news-3-empty ((t (:inherit gnus-group-news-3 :foreground ,accent-theme--doc))))
     `(gnus-group-news-4-empty ((t (:inherit gnus-group-news-4 :foreground ,accent-theme--doc))))
     `(gnus-group-news-5-empty ((t (:inherit gnus-group-news-5 :foreground ,accent-theme--doc))))
     `(gnus-group-news-6-empty ((t (:inherit gnus-group-news-6 :foreground ,accent-theme--doc))))

     `(erc-direct-msg-face ((t (:foreground ,accent-theme--keyword))))
     `(erc-error-face ((t (:foreground ,accent-theme--keyword))))
     `(erc-header-face ((t (:foreground ,accent-theme--added :background ,accent-theme--doc))))
     `(erc-input-face ((t (:foreground ,accent-theme--highlight-background))))
     `(erc-keyword-face ((t (:foreground ,accent-theme--link))))
     `(erc-current-nick-face ((t (:foreground ,accent-theme--highlight-background))))
     `(erc-my-nick-face ((t (:foreground ,accent-theme--highlight-background))))
     `(erc-nick-default-face ((t (:weight normal :foreground ,accent-theme--link))))
     `(erc-nick-msg-face ((t (:weight normal :foreground ,accent-theme--link))))
     `(erc-notice-face ((t (:foreground ,accent-theme--doc))))
     `(erc-pal-face ((t (:foreground ,accent-theme--keyword))))
     `(erc-prompt-face ((t (:foreground ,accent-theme--keyword))))
     `(erc-timestamp-face ((t (:foreground ,accent-theme--keyword))))

     ;; eshell
     `(eshell-ls-archive ((t (:foreground ,accent-theme--deemphasize :weight normal))))
     `(eshell-ls-backup ((t (:foreground ,accent-theme--deemphasize))))
     `(eshell-ls-clutter ((t (:foreground ,accent-theme--alert :weight normal))))
     `(eshell-ls-directory ((t (:foreground ,accent-theme--link :weight normal))))
     `(eshell-ls-executable ((t (:foreground ,accent-theme--text :weight normal))))
     `(eshell-ls-missing ((t (:foreground ,accent-theme--alert :weight normal))))
     `(eshell-ls-product ((t (:foreground ,accent-theme--alert))))
     `(eshell-ls-readonly ((t (:foreground ,accent-theme--alert))))
     `(eshell-ls-special ((t (:foreground ,accent-theme--alert :weight normal))))
     `(eshell-ls-symlink ((t (:foreground ,accent-theme--link :weight normal))))
     `(eshell-ls-unreadable ((t (:foreground ,accent-theme--deemphasize))))
     `(eshell-prompt ((t (:foreground ,accent-theme--keyword :weight normal))))

     ;; custom
     `(custom-variable-tag ((t (:foreground ,accent-theme--keyword))))
     `(custom-group-tag ((t (:foreground ,accent-theme--keyword))))
     `(custom-state ((t (:foreground ,accent-theme--highlight-background))))
     `(custom-button-pressed-unraised ((t (:foreground ,accent-theme--keyword))))
     `(custom-changed ((t (:background ,accent-theme--added-highlight :foreground ,accent-theme--inverted-text))))
     `(custom-comment ((t (:background ,accent-theme--background :foreground ,accent-theme--doc))))
     `(custom-group-tag-1 ((t (:background ,accent-theme--background :foreground ,accent-theme--link))))
     `(custom-invalid ((t (:background ,accent-theme--alert :foreground ,accent-theme--inverted-text))))
     `(custom-modified ((t (:background ,accent-theme--added-highlight :foreground ,accent-theme--inverted-text))))
     `(custom-link ((t (:background ,accent-theme--background :foreground ,accent-theme--link))))
     `(custom-rogue ((t (:background ,accent-theme--background :foreground ,accent-theme--alert))))
     `(custom-set ((t (:background ,accent-theme--background :foreground ,accent-theme--keyword))))
     `(custom-themed ((t (:background ,accent-theme--background :foreground ,accent-theme--keyword))))

     ;; diary
     `(diary ((t (:background ,accent-theme--background :foreground ,accent-theme--changed))))

     ;; epa
     `(epa-field-body ((t (:background ,accent-theme--background :foreground ,accent-theme--good))))
     `(epa-field-name ((t (:background ,accent-theme--background :foreground ,accent-theme--good))))
     `(epa-mark ((t (:background ,accent-theme--background :foreground ,accent-theme--link))))
     `(epa-string ((t (:background ,accent-theme--background :foreground ,accent-theme--text))))
     `(epa-validity-disabled ((t (:background ,accent-theme--background :foreground ,accent-theme--alert))))
     `(epa-validity-high ((t (:background ,accent-theme--background :foreground ,accent-theme--good))))
     `(epa-validity-low ((t (:background ,accent-theme--background :foreground ,accent-theme--alert))))
     `(epa-validity-medium ((t (:background ,accent-theme--background :foreground ,accent-theme--changed))))

     ;; helm
     `(helm-M-x-key ((t (:background ,accent-theme--background :foreground ,accent-theme--text))))
     `(helm-action ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-addressbook ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-directory ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-file ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-file-not-found ((t (:foreground ,accent-theme--alert :background ,accent-theme--background))))
     `(helm-bookmark-gnus ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-info ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-man ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-bookmark-w3m ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-buffer-directory ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-buffer-file ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-buffer-not-saved ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-buffer-process ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-buffer-saved-out ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-buffer-size ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-buffer-archive ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-delete-async-message ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-candidate-number ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-candidate-number-suspended ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-ff-directory ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-ff-dotted-directory ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-ff-dotted-symlink-directory ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-ff-pipe ((t (:foreground ,accent-theme--link :background ,accent-theme--background :weight bold))))
     `(helm-ff-socket ((t (:foreground ,accent-theme--link :background ,accent-theme--background :weight bold))))
     `(helm-ff-suid ((t (:foreground ,accent-theme--inverted-text :background ,accent-theme--alert :weight bold))))
     `(helm-ff-denied ((t (:foreground ,accent-theme--alert :background ,accent-theme--background :weight bold))))
     `(helm-ff-executable ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-ff-file ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-ff-invalid-symlink ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-ff-prefix ((t (:foreground nil :background nil))))
     `(helm-ff-symlink ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-grep-cmd-line ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-grep-file ((t (:inverse t :foreground ,accent-theme--text :background ,accent-theme--background :weight bold))))
     `(helm-grep-finish ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-grep-lineno ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-grep-match ((t (:foreground ,accent-theme--highlight-foreground :background ,accent-theme--background :weight bold))))
     `(helm-header ((t (:background ,accent-theme--background :foreground ,accent-theme--text :height 0.75))))
     `(helm-header-line-left-margin ((t (:background ,accent-theme--background :foreground ,accent-theme--text :height 0.75))))
     `(helm-history-deleted ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-history-remote ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-lisp-completion-info ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-locate-finish ((t (:foreground ,accent-theme--good :background ,accent-theme--background))))
     `(helm-mode-prefix ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-non-file-buffer ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-prefarg ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-resume-need-update ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(helm-match ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--text :weight bold :weight bold))))
     `(helm-moccur-buffer ((t (:foreground ,accent-theme--text, :background ,accent-theme--background))))
     `(helm-selection ((t (:background ,accent-theme--text :foreground ,accent-theme--background :weight bold :height 1.0))))
     `(helm-selection-line ((t (:background ,accent-theme--highlight-background :foreground ,accent-theme--text :weight bold :height 1.0))))
     `(helm-separator ((t (:foreground ,accent-theme--text))))
     `(helm-source-header ((t (:foreground ,accent-theme--text :background ,accent-theme--background :weight bold :underline t))))
     `(helm-visible-mark ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))

     ;;  lsp
     `(lsp-ui-sideline-code-action ((t (:foreground ,accent-theme--highlight-background))))
     `(lsp-ui-doc-header ((t (:foreground ,accent-theme--good :background ,accent-theme--background))))
     `(lsp-ui-peek-filename ((t (:foreground ,accent-theme--alert))))
     `(lsp-ui-peek-header ((t (:foreground ,accent-theme--keyword :background ,accent-theme--background))))
     `(lsp-ui-peek-highlight ((t (:inverse-video t :foreground ,accent-theme--text :background ,accent-theme--background))))
     `(lsp-ui-peek-line-number ((t (:foreground ,accent-theme--text :background ,accent-theme--background))))
     `(lsp-ui-peek-list ((t (:inverse-video t :foreground ,accent-theme--text :background ,accent-theme--background))))
     `(lsp-ui-peek-peek ((t (:inverse-video t :foreground ,accent-theme--text :background ,accent-theme--background))))
     `(lsp-ui-peek-selection ((t (:inverse-video t :foreground ,accent-theme--text :background ,accent-theme--background))))
     `(lsp-ui-sideline-code-action ((t (:foreground ,accent-theme--deemphasize))))
     `(lsp-ui-sideline-current-symbol ((t (:foreground ,accent-theme--deemphasize :height 0.99 :weight black :box (:box (:line-width -1 :color ,accent-theme--keyword))))))
     `(lsp-ui-sideline-symbol ((t (:foreground ,accent-theme--deemphasize :height 0.99 :weight black :box (:box (:line-width -1 :color ,accent-theme--keyword))))))
     `(lsp-ui-sideline-symbol-info ((t (:height 0.99 :slant italic))))))

  (custom-theme-set-variables
   theme-name
   `(ansi-color-names-vector
     ;; black, keyword, highlight, link, keyword, magenta, cyan, white
     [,accent-theme--text ,accent-theme--keyword ,accent-theme--highlight-foreground ,accent-theme--link ,accent-theme--keyword ,accent-theme--link ,accent-theme--keyword ,accent-theme--added])
   `(ansi-term-color-vector
     ;; black, keyword, highlight, link, keyword, magenta, cyan, white
     [,accent-theme--text ,accent-theme--keyword ,accent-theme--highlight-foreground ,accent-theme--link ,accent-theme--keyword ,accent-theme--link ,accent-theme--keyword ,accent-theme--added])))

;; (defun accent-theme-light ()
;;   "Enable the construction paper light theme."
;;   (interactive)
;;   (require 'accent-light-theme)
;;   (enable-theme 'accent-light))

(provide 'accent-theme-faces)

;;; accent-theme.el ends here
