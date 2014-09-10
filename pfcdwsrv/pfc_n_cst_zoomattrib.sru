HA$PBExportHeader$pfc_n_cst_zoomattrib.sru
$PBExportComments$PFC Attributes for DataWindow Zoom service
forward
global type pfc_n_cst_zoomattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_zoomattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:
integer	ii_zoom
datawindow	idw_obj
datastore		ids_obj
end variables

on pfc_n_cst_zoomattrib.create
call super::create
end on

on pfc_n_cst_zoomattrib.destroy
call super::destroy
end on

