(fset 'br
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote (" `<br>`" 0 "%d")) arg)))

(fset 'ra
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("8#xa0 `$\\Rightarrow$`" 0 "%d")) arg)))

(global-set-key [f5] 'br)
(global-set-key [f6] 'ra)
