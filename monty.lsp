;; Loop 10,000,000
;; Generate random number representing winning door, 0, 1, or 2
;; Generate random number representing chosen door, 0, 1, or 2
;; Remove first door that they didn't pick that isn't the winning door
;; Don't switch. Check if the two are equal. Increment win result.
;; Switch. Check if the two are equal. Increment win result.
;; Divide each result by 10,000,000
(defvar *num-trials* (parse-integer (cadr *posix-argv*)))
(defvar *stayed* 0)
(defvar *switched* 0)
(dotimes (count *num-trials*)
  (let* ((winning-door (random 3))
	 (chosen-door (random 3)))   
     (if (eq winning-door chosen-door) (setq *stayed* (+ 1 *stayed*))
	(setq *switched* (+ 1 *switched*)))))
(print (/ (float *stayed*) *num-trials*))
(print (/ (float *switched*) *num-trials*))
