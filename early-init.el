;; 将垃圾回收阈值设置为最大值，减少启动时的垃圾回收操作
(setq gc-cons-threshold most-positive-fixnum)

;; 禁用启动消息
(setq inhibit-startup-message t)

;; 关闭menu bar，toolbar scroll bar
(setq default-frame-alist
      '((menu-bar-lines . 0)
        (tool-bar-lines . 0)
        (horizontal-scroll-bars)
        (vertical-scroll-bars)))

(provide 'early-init)
