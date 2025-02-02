(require 'markdown-mode)
(require 'markdown-ts-mode)

(setq markdown-ts--treesit-settings
      (treesit-font-lock-rules
       :language 'markdown-inline
       :override t
       :feature 'delimiter
       '([ "[" "]" "(" ")" ] @shadow)

       :language 'markdown
       :feature 'paragraph
       '([((setext_heading) @font-lock-function-name-face)
          ((atx_heading) @font-lock-function-name-face)
          ((thematic_break) @shadow)
          ((indented_code_block) @font-lock-comment-face)
          (list_item (list_marker_star) @font-lock-constant-face)
          (list_item (list_marker_plus) @font-lock-constant-face)
          (list_item (list_marker_minus) @font-lock-constant-face)
          (list_item (list_marker_dot) @font-lock-constant-face)
          (fenced_code_block (fenced_code_block_delimiter) @font-lock-doc-face)
          (fenced_code_block (code_fence_content) @font-lock-comment-face)
          ((block_quote_marker) @font-lock-comment-face)
          (block_quote (paragraph) @font-lock-comment-face)
          (block_quote (block_quote_marker) @font-lock-comment-face)
          ])

       :language 'markdown-inline
       :feature 'paragraph-inline
       '([
          ((image_description) @link)
          ((link_destination) @font-lock-comment-face)
          ((code_span) @font-lock-comment-face)
          ((emphasis) @underline)
          ((strong_emphasis) @bold)
          (inline_link (link_text) @link)
          (inline_link (link_destination) @font-lock-comment-face)
          (shortcut_link (link_text) @link)])))

(provide 'init-markdown-mode)
