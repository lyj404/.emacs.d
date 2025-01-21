(require 'markdown-mode)

;; 设置 markdown-ts-mode 的 Treesit 语法高亮规则
(setq markdown-ts--treesit-settings
      (treesit-font-lock-rules
       ;; 针对 Markdown 内联元素的设置
       :language 'markdown-inline
       :override t
       :feature 'delimiter
       '([ "[" "]" "(" ")" ] @shadow)  ; 对于括号等分隔符使用 shadow 风格

       ;; 针对 Markdown 主体文本的设置
       :language 'markdown
       :feature 'paragraph
       '([((setext_heading) @font-lock-function-name-face)  ; Setext 标题使用函数名样式
          ((atx_heading) @font-lock-function-name-face)     ; ATX 标题同样使用函数名样式
          ((thematic_break) @shadow)                        ; 主题分隔线使用 shadow 风格
          ((indented_code_block) @font-lock-comment-face)   ; 缩进代码块使用注释样式
          (list_item (list_marker_star) @font-lock-constant-face)  ; 列表项使用常量样式
          (fenced_code_block (fenced_code_block_delimiter) @font-lock-doc-face)  ; 围栏代码块分隔符使用文档样式
          (block_quote (paragraph) @font-lock-comment-face)  ; 引用块中的段落使用注释样式
          ])

       ;; 针对 Markdown 内联段落的设置
       :language 'markdown-inline
       :feature 'paragraph-inline
       '([
          ((image_description) @link)  ; 图片描述使用链接样式
          ((link_destination) @font-lock-comment-face)  ; 链接目标使用注释样式
          ((code_span) @font-lock-comment-face)  ; 代码段使用注释样式
          ((emphasis) @underline)  ; 强调文本使用下划线
          ((strong_emphasis) @bold)  ; 强烈强调文本使用粗体
          (inline_link (link_text) @link)  ; 内联链接的文本部分使用链接样式
          ])))

;; 提供 init-markdown-mode 模块，使其可以被其他 Emacs 配置文件引用
(provide 'init-markdown-mode)
