(in-package :new-escape-maker)

(defclass story ()
  ((program :initarg :program :initform nil :accessor program)))

(defclass id-data ()
  ((id :initarg :id :initform nil :accessor id)
   (name :initarg :name :initform nil :accessor name)))

(defclass room-data (id-data)
  ((up :initarg :up :initform nil :accessor up)
   (down :initarg :down :initform nil :accessor down)
   (left :initarg :left :initform nil :accessor left)
   (right :initarg :right :initform nil :accessor right)))

(defclass flag (id-data) ())

(defclass object (id-data)
  ((program :initarg :program :initform nil :accessor program)
   (image-id :initarg :image-id :initform nil :accessor image-id)
   (dest-point :initarg :dest-point :initform nil :accessor dest-point)
   (source-point :initarg :source-point :initform nil :accessor source-point)
   (size :initarg :size :initform nil :accessor size)
   (visible :initarg :visible :initform nil :accessor visible)
   (root-id :initarg :root-id :initform nil :accessor root-id)
   (room-id :initarg :room-id :initform nil :accessor room-id)))

(defclass group-data (id-data)
  ((image-id :initarg :image-id :initform nil :accessor image-id)
   (program :initarg :program :initform nil :accessor program)
   (child-length :initarg :child-length :initform nil :accessor child-length)
   (dest-point :initarg :dest-point :initform nil :accessor dest-point)
   (size :initarg :size :initform nil :accessor size)
   (show-index :initarg :show-index :initform nil :accessor show-index)
   (root-id :initarg :root-id :initform nil :accessor root-id)
   (room-id :initarg :room-id :initform nil :accessor room-id)))

(defclass special-data (id-data)
  ((image-id :initarg :image-id :initform nil :accessor image-id)
   (program :initarg :program :initform nil :accessor program)
   (dest-point :initarg :dest-point :initform nil :accessor dest-point)
   (source-point :initarg :source-point :initform nil :accessor source-point)
   (size :initarg :size :initform nil :accessor size)))

(defclass item (id-data)
  ((detail-id :initarg :detail-id :initform nil :accessor detail-id)
   (detail-image-id :initarg :detail-image-id :initform nil :accessor detail-image-id)
   (detail-item-program :initarg :detail-item-program :initform nil :accessor detail-item-program)
   (source-point :initarg :source-point :initform nil :accessor source-point)
   (item-program :initarg :item-program :initform nil :accessor item-program)
   (root-id :initarg :root-id :initform nil :accessor root-id)))
