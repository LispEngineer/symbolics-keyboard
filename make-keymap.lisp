
(in-package :cl-user)

(defparameter *ps2-map*
  '(("F9"		#x01)
    ("F5"	 	#x03)
    ("F3"		#x04)
    ("F1"		#x05)
    ("F2"		#x06)
    ("F12"		#x07)
    ("F10"		#x09)
    ("F8"		#x0a)
    ("F6"		#x0b)
    ("F4"		#x0c)
    ("Tab"		#x0d)
    ("`"		#x0e)
    ("AltL"		#x11)
    ("ShiftL"		#x12)
    ("CtrlL"		#x14)
    ("Q"		#x15)
    ("1"		#x16)
    ("Z"		#x1a)
    ("S"		#x1b)
    ("A"		#x1c)
    ("W"		#x1d)
    ("2"		#x1e)
    ("C"		#x21)
    ("X"		#x22)
    ("D"		#x23)
    ("E"		#x24)
    ("4"		#x25)
    ("3"		#x26)
    ("Space"		#x29)
    ("V"		#x2a)
    ("F"		#x2b)
    ("T"		#x2c)
    ("R"		#x2d)
    ("5"		#x2e)
    ("N"		#x31)
    ("B"		#x32)
    ("H"		#x33)
    ("G"		#x34)
    ("Y"		#x35)
    ("6"		#x36)
    ("M"		#x3a)
    ("J"		#x3b)
    ("U"		#x3c)
    ("7"		#x3d)
    ("8"		#x3e)
    (","		#x41)
    ("K"		#x42)
    ("I"		#x43)
    ("O"		#x44)
    ("0"		#x45)
    ("9"		#x46)
    ("."		#x49)
    ("/"		#x4a)
    ("L"		#x4b)
    (";"		#x4c)
    ("P"		#x4d)
    ("-"		#x4e)
    ("KP0"		#x70)
    ("["		#x54)
    ("="		#x55)
    ("Caps"		#x58)
    ("ShiftR"		#x59)
    ("Return"		#x5a)
    ("]"		#x5b)
    ("\\"		#x5d)
    ("BackSpace"	#x66)
    ("KP1"		#x69)
    ("KP4"		#x6b)
    ("KP7"		#x6c)
    ("KP0"		#x70)
    ("KP."		#x71)
    ("KP2"		#x72)
    ("KP5"		#x73)
    ("KP6"		#x74)
    ("KP8"		#x75)
    ("Escape"		#x76)
    ("NumLock"		#x77)
    ("F11"		#x78)
    ("KP+"		#x79)
    ("KP3"		#x7a)
    ("KP-"		#x7b)
    ("KP*"		#x7c)
    ("KP9"		#x7d)
    ("Scroll"		#x7e)
    ("F7"		#x83)
    ("AltGr"		#xe0 #x11)
    ("CtrlR"		#xe0 #x14)
    ("KP/"		#xe0 #x4a)
    ("KPEnter"		#xe0 #x5a)
    ("End"		#xe0 #x69)
    ("Left"		#xe0 #x6b)
    ("Home"		#xe0 #x6c)
    ("Ins"		#xe0 #x70)
    ("Del"		#xe0 #x71)
    ("Down"		#xe0 #x72)
    ("Right"		#xe0 #x74)
    ("Up"		#xe0 #x75)
    ("PgDn"		#xe0 #x7a)
    ("PgUp"		#xe0 #x7d)))

(defparameter *symbolics-map*
  '(("Local"		#x01)
    ("Caps"		#x02)
    ("HyperL"		#x03)
    ("MetaL"		#x04)
    ("ControlR"		#x05)
    ("SuperR"		#x06)
    ("Scroll"		#x07)
    ("ModeLock"		#x08)
    ("Select"		#x0c)
    ("SymbolL"		#x0d)
    ("SuperL"		#x0e)
    ("ControlL"		#x0f)
    ("Space"		#x10)
    ("MetaR"		#x11)
    ("HyperR"		#x12)
    ("End"		#x13)
    ("Z"		#x17)
    ("C"		#x18)
    ("B"		#x19)
    ("M"		#x1a)
    ("."		#x1b)
    ("ShiftR"		#x1c)
    ("Repeat"		#x1d)
    ("Abort"		#x1e)
    ("ShiftL"		#x22)
    ("X"		#x23)
    ("V"		#x24)
    ("N"		#x25)
    (","		#x26)
    ("/"		#x27)
    ("SymbolR"		#x28)
    ("Help"		#x29)
    ("RubOut"		#x2d)
    ("S"		#x2e)
    ("F"		#x2f)
    ("H"		#x30)
    ("K"		#x31)
    (";"		#x32)
    ("Return"		#x33)
    ("Complete"		#x34)
    ("Network"		#x38)
    ("A"		#x39)
    ("D"		#x3a)
    ("G"		#x3b)
    ("J"		#x3c)
    ("L"		#x3d)
    ("\""		#x3e)
    ("Line"		#x3f)
    ("Function"		#x43)
    ("W"		#x44)
    ("R"		#x45)
    ("Y"		#x46)
    ("I"		#x47)
    ("P"		#x48)
    (")"		#x49)
    ("Page"		#x4a)
    ("Tab"		#x4e)
    ("Q"		#x4f)
    ("E"		#x50)
    ("T"		#x51)
    ("U"		#x52)
    ("O"		#x53)
    ("("		#x54)
    ("BackSpace"	#x55)
    (":"		#x59)
    ("2"		#x5a)
    ("4"		#x5b)
    ("6"		#x5c)
    ("8"		#x5d)
    ("0"		#x5e)
    ("="		#x5f)
    ("\\"		#x60)
    ("1"		#x64)
    ("3"		#x65)
    ("5"		#x66)
    ("7"		#x67)
    ("9"		#x68)
    ("-"		#x69)
    ("`"		#x6a)
    ("|"		#x6b)
    ("Escape"		#x6f)
    ("Refresh"		#x70)
    ("Square"		#x71)
    ("Circle"		#x72)
    ("Triangle"		#x73)
    ("ClearInput"	#x74)
    ("Suspend"		#x75)
    ("Resume"		#x76)))

(defparameter *special-key-map*
  '(("Select" 		"F1")
    ("Network" 		"F2")
    ("Function" 	"F3")
    ("Suspend" 		"F4")
    ("Resume" 		"F5")
    ("Abort" 		"F6")
    ("SuperL" 		"F7")
    ("HyperL" 		"F8")
    ("Scroll" 		"F9" 	"PgDn")
    ("ClearInput" 	"F10")
    ("SymbolR" 		"KP5" 	"Up")
    ("Scroll" 		"KP3"	"Scroll")
    ("RubOut" 		"Del")
    ("Complete" 	"F11"	"Home")
    ("Help" 		"F12")
    ("End" 		"KP1" 	"End")
    ("MetaL" 		"AltL")
    ("MetaR" 		"AltGr"	"Left")
    ("SuperR" 		nil 	"Down")
    ("HyperR" 		nil 	"Right")
    ("Repeat" 		nil 	"PgUp")
    ("ControlL" 	"CtrlL")
    ("ControlR" 	"CtrlR")
    ("(" 		"[")
    (")" 		"]")
    ("Triangle"		"KP2")
    ("Circle"		"KP3")
    ("Square"		"KP4")
    ("Refresh"		"KP0")
    ("Page"		"KP6")
    ("Line"		"KP7")
    ("SymbolL"		"KP8")
    ("|"		"KP-")
    ("\""		"KP+")
    (":"		"KP*")))

(defun find-explicit-mapping (symbolics-keyname &optional f-mode-p)
  (let ((mapping-entry (assoc symbolics-keyname *special-key-map* :test #'equal)))
    (when mapping-entry
      (let ((mapping (nth (if f-mode-p 2 1) mapping-entry)))
        (cond
          ((listp mapping)
           mapping)
          ((or (symbolp mapping)
               (stringp mapping))
           (or (assoc mapping *ps2-map* :test #'equal)
               (error "invalid special key map entry  ~S, PS/2 key ~A not found"
                      mapping-entry mapping)))
          (t
           (error "unexpected mapping value in map definition entry ~S" mapping-entry)))))))

(defun find-direct-mapping (symbolics-keyname)
  (assoc symbolics-keyname *ps2-map* :test #'equal))

;; bit definitions for flag map

(defconstant +e0-escape+ 1)
(defconstant +prtscr-escape+ 2)
(defconstant +pause+ 4)
(defconstant +key-is-switch+ 8)
(defconstant +f-mode-switch+ 128)

(defun dump-map (map prefix &optional flagsp)
  (dotimes (row 8)
    (format t "~A~A	DB	" prefix row)
    (dotimes (col 16)
      (let ((symbolics-scancode (+ (* row 16) col)))
        (format t (if (or flagsp
                          (find symbolics-scancode *symbolics-map* :test #'eql :key #'second))
                      "~2,'0Xh~@[,  ~]"
                      "~2,' Xh~@[,  ~]")
                (aref map symbolics-scancode) (not (eql col 15)))))
    (terpri))
  (terpri))

(defun define-key (symbolics-scancode ps2-keycode map flag-map &optional f-mode-p)
  (let ((e0-escape-flag (ash +e0-escape+ (if f-mode-p 4 0))))
    (cond
      ((eql #xe0 (car ps2-keycode))
       (setf (aref flag-map symbolics-scancode)
             (logior e0-escape-flag (aref flag-map symbolics-scancode)))
       (setf ps2-keycode (cdr ps2-keycode)))
      (t
       (setf (aref flag-map symbolics-scancode)
             (logand (lognot e0-escape-flag) (aref flag-map symbolics-scancode)))))
  (setf (aref map symbolics-scancode) (car ps2-keycode))))

(defun make-keymap ()
  (let ((normal-map (make-array 128 :initial-element 0))
        (f-mode-map (make-array 128 :initial-element 0))
        (flag-map (make-array 128 :initial-element 0))
        unmapped-symbolics-keys
        (unmapped-ps2-keys *ps2-map*))
    (dolist (symbolics-key-entry *symbolics-map*)
      (destructuring-bind (symbolics-keyname symbolics-scancode) symbolics-key-entry
        (cond
          ((member symbolics-keyname '("Local" "ModeLock") :test #'equal)
           (setf (aref flag-map symbolics-scancode) +f-mode-switch+))
          (t
           (let* ((ps2-keycode (cdr (or (find-explicit-mapping symbolics-keyname)
                                        (find-direct-mapping symbolics-keyname))))
                  (f-mode-ps2-keycode (or (cdr (find-explicit-mapping symbolics-keyname t))
                                          ps2-keycode)))
             (cond
               ((or ps2-keycode f-mode-ps2-keycode)
                (when ps2-keycode
                  (setf unmapped-ps2-keys (remove ps2-keycode unmapped-ps2-keys :key #'cdr :test #'equal))
                  (define-key symbolics-scancode ps2-keycode normal-map flag-map))
                (when f-mode-ps2-keycode
                  (setf unmapped-ps2-keys (remove f-mode-ps2-keycode unmapped-ps2-keys :key #'cdr :test #'equal))
                  (define-key symbolics-scancode f-mode-ps2-keycode f-mode-map flag-map t)))
               (t
                (push symbolics-keyname unmapped-symbolics-keys))))))))
    (dump-map normal-map "Symbolics2ATXlt")
    (dump-map f-mode-map "Symbolics2ATXltF")
    (dump-map flag-map "Symbolics2ATXlte" t)
    (when unmapped-symbolics-keys
      (format t "Unmapped Symbolics keys: ~S~%" unmapped-symbolics-keys))
    (when unmapped-ps2-keys
      (format t "Unmapped PS/2 keys: ~S~%" (mapcar #'car unmapped-ps2-keys)))))