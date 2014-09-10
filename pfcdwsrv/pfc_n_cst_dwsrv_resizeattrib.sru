HA$PBExportHeader$pfc_n_cst_dwsrv_resizeattrib.sru
$PBExportComments$PFC DataWindow Resize attributes
forward
global type pfc_n_cst_dwsrv_resizeattrib from n_cst_baseattrib
end type
end forward

global type pfc_n_cst_dwsrv_resizeattrib from n_cst_baseattrib autoinstantiate
end type

type variables
Public:
string		s_control
string		s_typeof
boolean		b_scale
boolean		b_movex
boolean		b_movey
boolean		b_scalewidth
boolean		b_scaleheight
real		r_x
real		r_y
real		r_width
real		r_height
integer		i_movex
integer		i_movey
integer		i_scalewidth
integer		i_scaleheight
end variables

on pfc_n_cst_dwsrv_resizeattrib.create
call super::create
end on

on pfc_n_cst_dwsrv_resizeattrib.destroy
call super::destroy
end on

