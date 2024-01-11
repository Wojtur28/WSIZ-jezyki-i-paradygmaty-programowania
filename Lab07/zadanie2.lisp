(defstruct student
  imie
  nazwisko
  album
  id-przedmiot
  semestr
  ocena
  termin)

(defvar *rejestr-studentow* nil)

(defun dodaj-studenta (imie nazwisko album id-przedmiot semestr ocena termin)
  (push (make-student :imie imie :nazwisko nazwisko :album album :id-przedmiot id-przedmiot :semestr semestr :ocena ocena :termin termin) *rejestr-studentow*))

(defun znajdz-studenta-po-imieniu (szukane-imie)
  (remove-if-not (lambda (student) (string= (student-imie student) szukane-imie)) *rejestr-studentow*))
