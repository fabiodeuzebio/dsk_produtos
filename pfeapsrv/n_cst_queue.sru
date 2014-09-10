HA$PBExportHeader$n_cst_queue.sru
$PBExportComments$Extension Queue List service
forward
global type n_cst_queue from pfc_n_cst_queue
end type
end forward

global type n_cst_queue from pfc_n_cst_queue
end type

on n_cst_queue.create
call super::create
end on

on n_cst_queue.destroy
call super::destroy
end on

