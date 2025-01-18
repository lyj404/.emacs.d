(require 'package)

;; 设置中国镜像源
(setq package-archives
      '(("elpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("elpa-devel" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu-devel/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
        ("nongnu-devel" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu-devel/")))
;; 初始化包管理系统
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))  ;; 如果包列表为空，则刷新包列表

;; 启用详细输出，便于调试
(setq use-package-verbose t)  
;; 自动安装包
(setq use-package-always-ensure t)  
;; 强制立即加载包
(setq use-package-always-demand t)  
;; 计算并显示加载统计信息
(setq use-package-compute-statistics t)  
;; 优先选择最新版本的包
(setq use-package-vc-prefer-newest t)  

(provide 'init-elpa)
