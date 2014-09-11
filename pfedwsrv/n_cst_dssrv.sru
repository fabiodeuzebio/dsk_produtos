HA$PBExportHeader$n_cst_dssrv.sru
$PBExportComments$Extension Datastore Base service
forward
global type n_cst_dssrv from pfc_n_cst_dssrv
end type
end forward

global type n_cst_dssrv from pfc_n_cst_dssrv
end type
global n_cst_dssrv n_cst_dssrv

on n_cst_dssrv.create
call super::create
end on

on n_cst_dssrv.destroy
call super::destroy
end on

