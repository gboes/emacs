(defun my/html-insert-recording-button ()
"Insert a 'Video Recording' Link for a URL."
(interactive)
  (let ( $p1 $p2 $input $newStr )
    (if (use-region-p)
        (setq $p1 (region-beginning) $p2 (region-end))
           (setq $input (buffer-substring-no-properties $p1 $p2))
           (setq $newStr (concat "<a class=\"btn btn-default btn-sm\" href=\"" $input "\" rel=\"noopener noreferrer\">Video recording</a>"))
           (delete-region $p1 $p2)
           (insert newStr)
           )))

(defun my/html-recording-button-wrap ()
       "Insert a 'Video Recording' Link for an URL at point."
           (interactive)
               (let (pos1 pos2 bds start-tag end-tag)
               (setq start-tag "<a class=\"btn btn-default btn-sm\" href=\"")
               (setq end-tag "\" rel=\"noopener noreferrer\">Video recording</a>")
                   (if (and transient-mark-mode mark-active)
                      (progn
                           (goto-char (region-end))
                           (insert end-tag)
                           (goto-char (region-beginning))
                           (insert start-tag))
                           ; If no region is active:
                           (call-interactively 'my/html-recording-button-insert)
                           )))
                      ; (progn
                      ; ; Alternative: Wrap whatever is at point
                      ;      (setq bds (bounds-of-thing-at-point 'symbol))
                      ;      (goto-char (cdr bds))
                      ;      (insert end-tag)
                      ;      (goto-char (car bds))
                      ;      (insert start-tag)))))
