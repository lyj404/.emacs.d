;; 将垃圾回收阈值设置为最大值，减少启动时的垃圾回收操作
(setq gc-cons-threshold most-positive-fixnum)
;; doom core.el中提升IO性能的操作
;; 禁用进程的自适应读取缓冲
(setq process-adaptive-read-buffering nil)
;; 设置从进程读取输出的最大字节数为 2MB
(setq read-process-output-max (* 1024 1024 2))
;; 禁止压缩字体缓存，以提高性能
(setq inhibit-compacting-font-caches t)

;; 设置消息日志的最大长度为无限制
(setq-default message-log-max t)
;; 禁用启动消息
(setq inhibit-startup-message t)

;; 关闭menu bar，toolbar scroll bar
(setq default-frame-alist
      '((menu-bar-lines . 0)
        (tool-bar-lines . 0)
        (horizontal-scroll-bars)
        (vertical-scroll-bars)))

(provide 'early-init)
