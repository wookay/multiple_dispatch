(defun println (s)
  (format t "~S~$" s #\linefeed)
)

(defmethod f ((a integer))
  (println (+ a 2))
)

(defmethod f ((a string))
  (println (concatenate 'string a "bc"))
)

(defmethod g ((a integer) (b string))
  (println "int,string")
)

(defmethod g ((a string) (b integer))
  (println "string,int")
)

(f 1)
(f "a")
(g 0 "")
(g "" 0)
