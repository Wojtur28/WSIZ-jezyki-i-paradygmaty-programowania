(defstruct ksiazka
  tytul
  autor
  wydawnictwo
  rok-wydania
  isbn)

(defvar *biblioteka* nil)

(defun dodaj-ksiazke (tytul autor wydawnictwo rok-wydania isbn)
  (push (make-ksiazka :tytul tytul :autor autor :wydawnictwo wydawnictwo :rok-wydania rok-wydania :isbn isbn) *biblioteka*))

(defun usun-ksiazke (isbn)
  (setf *biblioteka* (remove-if (lambda (ksiazka) (string= (ksiazka-isbn ksiazka) isbn)) *biblioteka*)))

(defun znajdz-ksiazke (szukany-tytul)
  (remove-if-not (lambda (ksiazka) (string= (ksiazka-tytul ksiazka) szukany-tytul)) *biblioteka*))
