;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Basic code for manipulating game databases
;;
;; $Revision$

(defvar chess-database-event-handler nil)

(make-variable-buffer-local 'chess-database-event-handler)

(defmacro chess-with-current-buffer (buffer &rest body)
  `(let ((buf ,buffer))
     (if buf
	 (with-current-buffer buf
	   ,@body)
       ,@body)))

(chess-message-catalog 'english
  '((no-such-style . "There is no such chess database module '%s'")))

(defun chess-database-open (module file)
  "Returns the opened database object, or nil."
  (let* ((name (symbol-name module))
	 (handler (intern-soft (concat name "-handler")))
	 buffer)
    (unless handler
      (chess-error 'no-such-database name))
    (when (setq buffer (funcall handler 'open file))
      (with-current-buffer buffer
	(setq chess-database-event-handler handler)
	(add-hook 'kill-buffer-hook 'chess-database-close nil t)
	(add-hook 'after-revert-hook 'chess-database-rescan nil t)
	(current-buffer)))))

(defsubst chess-database-command (database event &rest args)
  (chess-with-current-buffer database
    (apply 'chess-database-event-handler nil (current-buffer)
	   event args)))

(defun chess-database-close (database)
  (let ((buf (or database (current-buffer))))
    (when (buffer-live-p buf)
      (chess-database-command buf 'save)
      (chess-database-command buf 'close)
      (with-current-buffer buf
	(remove-hook 'kill-buffer-hook 'chess-database-quit t))
      (kill-buffer buf))))

(defun chess-database-save (database)
  (chess-database-command database 'save))

(defun chess-database-rescan (&optional database)
  (chess-database-command database 'rescan))

(defun chess-database-count (database)
  (chess-database-command database 'count))

(defun chess-database-read (database index)
  (chess-database-command database 'read index))

(defun chess-database-write (database game)
  (chess-database-command database 'write game))

(defun chess-database-replace (database game &optional index)
  (chess-database-command database 'replace game index))

(defun chess-database-query (database &rest terms)
  (chess-database-command database 'query terms))

(defun chess-database-event-handler (game database event &rest args)
  (if (eq event 'shutdown)
      (chess-database-close database)
    (chess-with-current-buffer database
      (apply chess-database-event-handler event args))))

(provide 'chess-database)

;;; chess-database.el ends here