; Allegro sub-drawing file
; Created by Allegro PCB Venture; version= 24.1-2024 P001

_clp_lay_drw = axlDesignType(nil)
_clp_sym = nil
_clp_pbuf  = nil
_clp_cinfo = make_clp_coord_info()
_clp_cinfo->f_rotation = 0.0
_clp_cinfo->l_origin = '(0.0 0.0)
_clp_text_orient = make_axlTextOrientation()
_clp_pin_text = make_axlPinText()
_clp_cinfo->t_from_units = "millimeters"
_clp_cinfo->t_to_units = car(axlDBGetDesignUnits())
_clp_cinfo->preserve_shape_net = nil
_clp_cinfo->preserve_via_net = nil
_clp_cinfo->snapToObject = nil
_clp_cinfo->createNCLayers = nil
_clp_group_info = make_clp_group_info()
_clp_cinfo->group_info = _clp_group_info
_clp_accuracy =2
_clpCheckAccuracy(_clp_accuracy _clp_cinfo->t_from_units	 	_clp_cinfo->t_to_units)
(putprop _clp_cinfo (list (_clpAdjustPt -160.11:-71 _clp_cinfo)	
	(_clpAdjustPt 27.64:3.33 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(160.1 71.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

printf(" 10 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" t
	(360.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("M270" _clpAdjustPt(-0.09999999999999432:0.1500000000000057 _clp_cinfo) 	
	_clp_pin_text (360.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() t)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CDS_PINID "MH_SIG")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("MOUNTHOLE" "PACKAGE") _clpAdjustPt('(-0.09999999999999432 0.1500000000000057) _clp_cinfo)
		t (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.13 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.13 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" t _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "MH"
	(_clpAdjustPt 0.75:-2.5 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_BOTTOM" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" t _clp_cinfo->f_rotation + 0.000 "26" )
_clp_dbid = (_clpDBCreateText "MH"
	(_clpAdjustPt -0.09999999999999432:0.1500000000000057 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_BOTTOM" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.069999999999993:-3.019999999999996 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.269999999999982:-3.019999999999996 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.269999999999982:3.329999999999998 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.069999999999993:3.329999999999998 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.069999999999993:-3.019999999999996 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_BOTTOM" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 20 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" t
	(360.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("M270" _clpAdjustPt(16.74000000000001:-67.75 _clp_cinfo) 	
	_clp_pin_text (360.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() t)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CDS_PINID "MH_SIG")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("MOUNTHOLE" "PACKAGE") _clpAdjustPt('(16.74000000000001 -67.75) _clp_cinfo)
		t (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.13 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.13 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" t _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "MH"
	(_clpAdjustPt 17.59999999999999:-65.7 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_BOTTOM" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" t _clp_cinfo->f_rotation + 0.000 "26" )
_clp_dbid = (_clpDBCreateText "MH"
	(_clpAdjustPt 16.74000000000001:-67.75 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_BOTTOM" _clp_sym)

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 30 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "20" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-21.02 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:4.8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_10")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "19" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-16.21 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:-0.01 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_9")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "18" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-11.42 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:-4.8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_8")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(16.03999999999999:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG1")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(6.039999999999992:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -20.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG3")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S155H85" _clpAdjustPt(-13.96000000000001:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG4")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "5" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(11.03999999999999:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -25.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG5")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "6" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(1.039999999999992:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -15.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG6")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-8.960000000000008:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -5.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG7")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "8" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-18.96000000000001:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 4.1:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG8")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "9" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(16.03999999999999:-14.76 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30.9:-1.46 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-12.26 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:-3.96 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "10" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-17.66 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:1.44 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_0")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "12" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-6.759999999999991:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -8.1:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "13" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-11.46000000000001:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -3.4:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_3")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "14" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-16.46000000000001:-23.34 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.6:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_4")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-6.759999999999991:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -8.1:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_5")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "16" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-11.46000000000001:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -3.4:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_6")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "17" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-16.46000000000001:-9.100000000000001 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.6:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_7")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("SFP_CAGE" "PACKAGE") _clpAdjustPt('(-14.85999999999999 -16.22) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
_clp_prop_define = axlDBGetPropDictEntry( "DESCRIPTION" )
unless( _clp_prop_define
	axlDBCreatePropDictEntry( "DESCRIPTION" "STRING" '("pindefs" "funcdefs" "figures" "vias" "pins" "symbols" "shapes" "lines" "clines" "functions" "components" "nets") )
)
_clp_prop_define = axlDBGetPropDictEntry( "COMP_HEIGHT" )
unless( _clp_prop_define
	axlDBCreatePropDictEntry( "COMP_HEIGHT" "STRING" '("compdefs" "symbols" "shapes" "components") )
)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DESCRIPTION "Cage bottom For Single Port SFP  (Small Form-factor Pluggable)")
	'(COMP_HEIGHT "8.8mm")
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "RD"
	(_clpAdjustPt -22.29999999999998:-7.979999999999997 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "12" )
_clp_dbid = (_clpDBCreateText "RD"
	(_clpAdjustPt -14.85999999999999:-15.72 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "49" )
_clp_dbid = (_clpDBCreateText "DT"
	(_clpAdjustPt -14.85999999999999:-15.97 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "49" )
_clp_dbid = (_clpDBCreateText "DT"
	(_clpAdjustPt -14.85999999999999:-15.97 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-8.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-23.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-23.84 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-22.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-19.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-19.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-24.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-24.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-13.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-13.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-10.09 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.259999999999991:-10.09 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.259999999999991:-22.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.259999999999991:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.759999999999991:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.259999999999991:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.960000000000008:-10.09 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.960000000000008:-10.09 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.960000000000008:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.960000000000008:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.960000000000008:-10.09 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.460000000000008:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-8.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-10.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-11.41 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-11.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-21.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-21.01 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-21.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-20.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-21.01 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.56:-21.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-15.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-16.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-16.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.460000000000008:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.75999999999999:-17.96 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-17.96 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-14.86 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-14.86 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-17.96 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.56:-11.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-11.41 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-11.91 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.56:-16.21 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-16.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-16.71 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-12.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-12.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-19.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-19.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-13.21 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-13.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-18.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-18.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-14.01 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-14.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-18.01 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-18.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-14.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-14.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-17.21 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-17.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-15.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-15.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-16.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-16.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.96000000000001:-8.590000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-9.090000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.75999999999999:-11.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.75999999999999:-20.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.96000000000001:-12.31 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-20.51 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.03999999999999:-24.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-24.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-24.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.03999999999999:-15.76 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-15.76 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-13.76 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-13.76 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-15.76 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.53999999999999:-23.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-23.84 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.53999999999999:-14.76 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-14.76 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-14.26 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.03999999999999:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.53999999999999:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.53999999999999:-14.76 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-14.76 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-15.26 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.96000000000001:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-8.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.96000000000001:-23.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-23.84 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-20.01 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-20.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-12.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-12.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-19.21 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-19.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-13.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-13.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-18.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-18.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-14.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-14.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-17.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-17.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-15.21 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-15.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-16.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-16.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-16.01 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-16.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.96000000000001:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.46000000000001:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.96000000000001:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.96000000000001:-10.09 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.96000000000001:-10.09 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.96000000000001:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.96000000000001:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.96000000000001:-10.09 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.03999999999999:-10.09 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.03999999999999:-10.09 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.03999999999999:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.03999999999999:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.03999999999999:-10.09 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.53999999999999:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-8.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.53999999999999:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.039999999999992:-24.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.039999999999992:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.039999999999992:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.039999999999992:-24.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.039999999999992:-24.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.539999999999992:-23.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-23.84 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.039999999999992:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.539999999999992:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.039999999999992:-10.09 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.03999999999999204:-10.09 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.03999999999999204:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.039999999999992:-8.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.039999999999992:-10.09 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.539999999999992:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-8.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.539999999999992:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-24.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-24.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-24.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-13.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-13.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-11.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-11.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-13.26 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-18.66 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-18.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-16.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-16.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-18.66 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-23.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-23.84 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-12.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-12.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-11.76 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-17.66 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-17.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-18.16 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.960000000000008:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.460000000000008:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.460000000000008:-12.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-12.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-12.76 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.960000000000008:-17.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-17.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.460000000000008:-17.66 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.96000000000001:-24.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.96000000000001:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.96000000000001:-22.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.96000000000001:-24.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.96000000000001:-24.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-8.590000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.96000000000001:-9.090000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-23.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.96000000000001:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.96000000000001:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.46000000000001:-23.34 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-23.84 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.96000000000001:-9.090000000000003 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-9.090000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-9.590000000000003 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-10.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-11.91 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.35999999999999:-21.01 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-21.01 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-21.51 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-20.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-21.01 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.35999999999999:-21.01 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.35999999999999:-16.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-16.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-16.72 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-15.72 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-16.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.35999999999999:-16.22 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.96000000000001:-22.84 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-23.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.46000000000001:-23.34 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.35999999999999:-11.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.35999999999999:-11.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.09:-11.41 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.09:-11.41 _clp_cinfo) nil
 	(_clpAdjustPt -14.86199999999999:-11.4118 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.09:-21.01 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.09:-21.01 _clp_cinfo) nil
 	(_clpAdjustPt -14.86199999999999:-21.0118 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-16.55 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.41:-15.88 _clp_cinfo) t
 	(_clpAdjustPt 22.56409618282709:-16.215 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-17.34 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-17.71 _clp_cinfo) t
 	(_clpAdjustPt 24.62875294723324:-17.35067886187376 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-15.1 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-14.72 _clp_cinfo) nil
 	(_clpAdjustPt 24.62782225125113:-15.08071341973564 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-13.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.94:-13.72 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.74000000000001:-14.52 _clp_cinfo) t
 	(_clpAdjustPt 25.94073132808316:-14.51926867191682 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.74000000000001:-17.92 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.94:-18.72 _clp_cinfo) t
 	(_clpAdjustPt 25.93859888662882:-17.91859888662881 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-18.72 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-23.17 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-20.02 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-20.02 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.64000000000001:-19.22 _clp_cinfo) nil
 	(_clpAdjustPt 26.6403967160027:-20.01960328399731 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.14000000000001:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-23.17 _clp_cinfo) nil
 	(_clpAdjustPt 27.13826269975868:-23.16826269975868 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-20.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-21.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-23.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.25:-20.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.25:-21.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 25.55000000000001:-18.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.55000000000001:-13.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-23.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-23.02 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-23.02 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-23.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.19:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.19:-23.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.89000000000001:-20.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.89000000000001:-21.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.99000000000001:-23.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.99000000000001:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-23.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-23.02 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-23.02 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.23000000000002:-18.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.23000000000002:-13.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.98000000000002:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.98000000000002:-19.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.90000000000001:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.90000000000001:-19.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.84:-18.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.84:-13.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-23.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-23.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-23.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-23.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-23.12 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-23.12 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-22.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-22.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-21.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-21.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-20.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-20.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-20.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-20.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-19.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-19.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-20.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-20.22 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859797059969:-20.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-22.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-21.72 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859797059991:-21.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-20.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-20.72 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893892866102:-20.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-21.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-22.22 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893892866079:-21.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-23.02 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-23.02 _clp_cinfo) nil
 	(_clpAdjustPt 20.59:-23.01738720787756 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-23.02 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-23.02 _clp_cinfo) nil
 	(_clpAdjustPt 22.59:-23.01738720787756 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-19.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-18.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-13.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-19.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-18.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-13.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-22.49 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-23.17 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-22.49 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.78999999999999:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.78999999999999:-20.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.01000000000002:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.01000000000002:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.09:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.09:-20.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.39000000000001:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.09:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.09:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.49000000000001:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-23.74 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-23.48 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-23.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-23.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.78999999999999:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.09:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.09:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.78999999999999:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.06:-22.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.49000000000001:-20.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.39000000000001:-20.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.39000000000001:-20.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.09:-20.77 _clp_cinfo) nil
 	(_clpAdjustPt 15.38860300148121:-20.7686030014812 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.06:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.76000000000002:-22.51 _clp_cinfo) nil
 	(_clpAdjustPt 12.06294155391652:-22.51294155391652 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.09:-22.51 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.78999999999999:-22.21 _clp_cinfo) nil
 	(_clpAdjustPt 13.78805959778128:-22.51194040221873 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.78999999999999:-20.77 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.49000000000001:-20.47 _clp_cinfo) nil
 	(_clpAdjustPt 16.49072798730668:-20.76927201269334 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-23.17 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.81:-23.47 _clp_cinfo) nil
 	(_clpAdjustPt 17.81073868372226:-23.16926131627773 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-18.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-19.22 _clp_cinfo) nil
 	(_clpAdjustPt 18.08893365846635:-18.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-22.49 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-22.49 _clp_cinfo) nil
 	(_clpAdjustPt 17.285:-22.49146970444128 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.76000000000002:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.76000000000002:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-23.74 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-23.48 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.76000000000002:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.76000000000002:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.76000000000002:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.76000000000002:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.439999999999998:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.439999999999998:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.46000000000001:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.740000000000009:-22.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.439999999999998:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.439999999999998:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.140000000000015:-20.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.740000000000009:-20.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.439999999999998:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-20.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.390000000000015:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.439999999999998:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.439999999999998:-20.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.439999999999998:-20.77 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.140000000000015:-20.47 _clp_cinfo) nil
 	(_clpAdjustPt 7.140392359648985:-20.76960764035101 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.740000000000009:-20.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.439999999999998:-20.77 _clp_cinfo) nil
 	(_clpAdjustPt 4.738270730649674:-20.76827073064967 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.740000000000009:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.439999999999998:-22.51 _clp_cinfo) nil
 	(_clpAdjustPt 8.740948016142283:-22.51094801614227 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.76000000000002:-22.51 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.46000000000001:-22.21 _clp_cinfo) nil
 	(_clpAdjustPt 10.45971065194649:-22.51028934805353 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.110000000000014:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1100000000000136:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.210000000000008:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.210000000000008:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.140000000000015:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.409999999999997:-22.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.1899999999999977:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.909999999999997:-22.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.759999999999991:-18.77 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-18.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.490000000000009:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.110000000000014:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.110000000000014:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1100000000000136:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1100000000000136:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.210000000000008:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.210000000000008:-22.51 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.210000000000008:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.210000000000008:-20.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-18.77 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-18.47 _clp_cinfo) nil
 	(_clpAdjustPt -3.361737300302138:-18.46826269969785 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.210000000000008:-20.77 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.509999999999991:-20.47 _clp_cinfo) nil
 	(_clpAdjustPt -3.509272012678935:-20.76927201267893 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-22.51 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.140000000000015:-22.21 _clp_cinfo) nil
 	(_clpAdjustPt 3.137725867752465:-22.51227413224755 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1100000000000136:-22.51 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.1899999999999977:-22.21 _clp_cinfo) nil
 	(_clpAdjustPt -0.190288249140707:-22.51028824914069 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.909999999999997:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.210000000000008:-22.51 _clp_cinfo) nil
 	(_clpAdjustPt -1.908722652068434:-22.51127734793155 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.409999999999997:-22.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.110000000000014:-22.51 _clp_cinfo) nil
 	(_clpAdjustPt 1.412941553916994:-22.51294155391698 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-23.74 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-23.48 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.909999999999997:-22.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-22.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.509999999999991:-20.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.609999999999985:-20.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.609999999999985:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.909999999999997:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.909999999999997:-20.77 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.509999999999991:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-19.07 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.609999999999985:-20.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.909999999999997:-20.77 _clp_cinfo) nil
 	(_clpAdjustPt -4.611396998498009:-20.76860300150199 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.759999999999991:-18.77 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-19.07 _clp_cinfo) nil
 	(_clpAdjustPt -5.761729269444089:-19.06827073055592 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.44:-20.38 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.56:-20.16 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-20.15 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.12:-19.92 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-23.74 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-23.48 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-20.15 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-21.32 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-19.92 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-21.09 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.60999999999999:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-23.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.50999999999999:-23.74 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-23.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.40000000000001:-23.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.75999999999999:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-23.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-23.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-23.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.26999999999998:-21.09 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-23.47 _clp_cinfo) nil
 	(_clpAdjustPt -19.66631779588184:-22.20344699810417 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.13999999999999:-21.32 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-23.21 _clp_cinfo) nil
 	(_clpAdjustPt -19.65533062669488:-22.2028617464622 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-12.42 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-9.270000000000003 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-12.42 _clp_cinfo) nil
 	(_clpAdjustPt 26.63826516788077:-12.41826516788079 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-10.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-11.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.25:-10.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.25:-11.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-17.34 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.99000000000001:-15.1 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.89000000000001:-10.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.89000000000001:-11.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.98000000000002:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.98000000000002:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.90000000000001:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.90000000000001:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.47:-14.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-15.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-14.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.41:-15.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-17.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-17.67 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-16.55 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-16.55 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-15.88 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-15.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-14.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-14.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-13.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-12.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-12.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-11.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-11.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-16.55 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.43000000000001:-17.67 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.45000000000002:-16.55 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-17.67 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.47:-17.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-17.71 _clp_cinfo) nil
 	(_clpAdjustPt 24.64693367573832:-17.339198972785 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.59:-14.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-14.76 _clp_cinfo) nil
 	(_clpAdjustPt 24.64682297823097:-15.0904689346929 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-12.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-11.72 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859797059986:-11.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-11.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-12.22 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893892866088:-11.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.47:-14.44 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.47:-15.09 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-14.44 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.81:-15.09 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.34:-14.24 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.34:-15.29 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.64000000000001:-15.59 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-15.59 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-15.09 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-15.09 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-14.44 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-14.44 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-13.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.64000000000001:-13.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.64000000000001:-13.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.34:-14.24 _clp_cinfo) nil
 	(_clpAdjustPt 13.64026890450285:-14.24026890450286 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.34:-15.29 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.64000000000001:-15.59 _clp_cinfo) nil
 	(_clpAdjustPt 13.63906757812813:-15.29093242187187 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-13.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-13.72 _clp_cinfo) nil
 	(_clpAdjustPt 18.08893365846623:-13.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-14.44 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-13.94 _clp_cinfo) nil
 	(_clpAdjustPt 16.58893089736512:-14.19 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-15.59 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-15.09 _clp_cinfo) nil
 	(_clpAdjustPt 16.58893089736466:-15.34 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.78999999999999:-11.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-11.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.09:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.39000000000001:-11.97 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.49000000000001:-11.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-11.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.39000000000001:-11.97 _clp_cinfo) nil
 	(_clpAdjustPt 10.39073868378335:-11.66926131621666 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.49000000000001:-11.97 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-11.67 _clp_cinfo) nil
 	(_clpAdjustPt 11.4885970454994:-11.66859704549941 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-17.99 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-17.99 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-17.34 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-17.34 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.439999999999998:-11.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-12.59 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-12.59 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.2599999999999909:-11.97 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.140000000000015:-11.97 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-11.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-11.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-11.17 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.759999999999991:-11.17 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-11.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.5600000000000023:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-18.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-18.29 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-17.04 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-12.89 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-11.64 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-11.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-18.29 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-17.99 _clp_cinfo) nil
 	(_clpAdjustPt -3.361269109030928:-18.29126910903094 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-17.34 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-17.04 _clp_cinfo) nil
 	(_clpAdjustPt -3.360071800299721:-17.03992819970027 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-11.67 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.2599999999999909:-11.97 _clp_cinfo) nil
 	(_clpAdjustPt -0.2592613163797068:-11.6692613163797 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.140000000000015:-11.97 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-11.67 _clp_cinfo) nil
 	(_clpAdjustPt 2.13826269974308:-11.66826269974307 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-11.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-11.64 _clp_cinfo) nil
 	(_clpAdjustPt -3.360071800247823:-11.63992819975216 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-11.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-11.17 _clp_cinfo) nil
 	(_clpAdjustPt -3.359608760262091:-11.46960876026208 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-12.89 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-12.59 _clp_cinfo) nil
 	(_clpAdjustPt -3.361269109170877:-12.89126910917088 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.530000000000001:-11.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.530000000000001:-12.59 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.530000000000001:-17.34 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.530000000000001:-17.99 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-11.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.189999999999998:-12.59 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-17.34 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.189999999999998:-17.99 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-10.87 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-10.87 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.759999999999991:-11.17 _clp_cinfo) nil
 	(_clpAdjustPt -5.759591248768487:-10.86959124876849 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-12.51 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-11.34 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-12.29 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-11.12 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-12.51 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18:-12.29 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.56:-12.27 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.44:-12.05 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.66:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-11.34 _clp_cinfo) nil
 	(_clpAdjustPt -19.66046321058306:-10.23338288672757 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.66:-9.219999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-11.12 _clp_cinfo) nil
 	(_clpAdjustPt -19.66160998107597:-10.23022484688607 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-9.270000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-8.969999999999999 _clp_cinfo) nil
 	(_clpAdjustPt 27.14039123969954:-9.269608760300464 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-9.420000000000002 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-8.710000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-9.420000000000002 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.19:-8.710000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.19:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.99000000000001:-8.960000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.99000000000001:-8.710000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-9.420000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-8.710000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-9.420000000000002 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-10.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-10.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-9.310000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-9.310000000000002 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-9.219999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-8.960000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-8.710000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-8.710000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-10.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859797059991:-10.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-10.72 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893892866074:-10.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-9.420000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-9.420000000000002 _clp_cinfo) nil
 	(_clpAdjustPt 20.59:-9.417387207877567 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-9.420000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-9.420000000000002 _clp_cinfo) nil
 	(_clpAdjustPt 22.59:-9.417387207877567 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-9.270000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-9.939999999999998 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-9.939999999999998 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.06:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.01000000000002:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.01000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.56:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.39000000000001:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.28999999999999:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.78999999999999:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.49000000000001:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.09:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.99000000000001:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.86000000000001:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.76000000000002:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-9.219999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-8.960000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-8.700000000000003 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.99000000000001:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-9.920000000000002 _clp_cinfo) nil
 	(_clpAdjustPt 13.98859594151287:-9.918595941512855 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.09:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt 13.09073868392221:-9.91926131607778 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.86000000000001:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt 14.8607386838909:-9.919261316109115 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.76000000000002:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-9.920000000000002 _clp_cinfo) nil
 	(_clpAdjustPt 15.7585970454129:-9.918597045412909 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-8.969999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-9.270000000000003 _clp_cinfo) nil
 	(_clpAdjustPt 17.8086030015547:-9.268603001554681 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-9.939999999999998 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-9.939999999999998 _clp_cinfo) nil
 	(_clpAdjustPt 17.285:-9.941469704441282 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.090000000000003:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.760000000000019:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.760000000000019:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.390000000000015:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.740000000000009:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.460000000000008:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.060000000000002:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.789999999999992:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-8.960000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-8.700000000000003 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.060000000000002:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt 7.061402509307669:-9.918597490692349 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.460000000000008:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-9.920000000000002 _clp_cinfo) nil
 	(_clpAdjustPt 5.460925099990959:-9.920925099990946 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.789999999999992:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-9.920000000000002 _clp_cinfo) nil
 	(_clpAdjustPt 8.78926621113709:-9.919266211137085 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.490000000000009:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.560000000000002:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.759999999999991:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.859999999999985:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.759999999999991:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt -2.759591248621945:-9.919591248621948 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.740000000000009:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt 3.739737340787428:-9.920262659212575 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.859999999999985:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-9.920000000000002 _clp_cinfo) nil
 	(_clpAdjustPt -1.86173730046076:-9.918262699539227 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.759999999999991:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.859999999999985:-10.22 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-9.729999999999997 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-9.729999999999997 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.560000000000002:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.609999999999985:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-8.960000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-8.700000000000003 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.060000000000002:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.509999999999991:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-9.920000000000002 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.759999999999991:-10.22 _clp_cinfo) nil
 	(_clpAdjustPt -4.759591248637179:-9.91959124863719 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.859999999999985:-10.22 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-9.920000000000002 _clp_cinfo) nil
 	(_clpAdjustPt -3.861737300314189:-9.918262699685812 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-8.960000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-8.700000000000003 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.60999999999999:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-8.700000000000003 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.50999999999999:-8.960000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.40000000000001:-9.219999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-9.219999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.75999999999999:-9.219999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-9.219999999999999 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-8.969999999999999 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.460000000000008:-15.72 _clp_cinfo))
	(_clpMKSConvert 0.050000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.050000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.460000000000008:-16.72 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/BODY_CENTER" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.960000000000008:-16.22 _clp_cinfo))
	(_clpMKSConvert 0.050000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.050000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.960000000000008:-16.22 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/BODY_CENTER" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-11.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-12.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-11.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-12.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-11.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-11.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-11.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-11.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-11.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-11.31 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-11.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-11.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-12.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-13.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-12.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-12.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-12.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-13.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-13.11 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-13.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-15.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-16.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-15.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-16.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-15.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-15.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-15.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-15.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-15.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-15.31 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-15.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-15.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-16.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-17.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-16.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-16.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-16.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-17.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-17.11 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-17.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-19.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-20.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-19.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-20.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-19.61 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-19.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-19.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-19.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-19.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-19.31 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-19.31 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-19.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-20.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-21.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-20.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-20.81 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-20.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-21.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-21.11 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-21.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.22999999999999:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.560000000000002:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.3599999999999852:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.289999999999992:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.53999999999999:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.44:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.64000000000001:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.640000000000015:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.560000000000002:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.359999999999985:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.289999999999992:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.22999999999999:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.98999999999998:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.93000000000001:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.46000000000001:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.46000000000001:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.98999999999998:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.93000000000001:-23.99 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.44:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.640000000000015:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.35999999999999:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.98999999999998:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.93000000000001:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.98999999999998:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.93000000000001:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.56:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.35999999999999:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-8.439999999999998 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-8.439999999999998 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-10.62 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-12.21 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-15.42 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-17.01 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-20.22 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-21.81 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-23.99 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.53999999999999:-8.719999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-8.719999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-9.619999999999997 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-9.619999999999997 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-22.82 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-22.82 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-23.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-23.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-8.719999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "8.8 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.53999999999999:-8.719999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-8.719999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-9.619999999999997 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-9.619999999999997 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-22.82 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-22.82 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-23.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-23.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-8.719999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "8.8 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 40 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "20" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-38.01 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:4.8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_10")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "19" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-33.2 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:-0.01 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_9")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "18" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-28.41 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:-4.8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_8")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(16.03999999999999:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG1")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(6.039999999999992:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -20.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG3")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S155H85" _clpAdjustPt(-13.96000000000001:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG4")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "5" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(11.03999999999999:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -25.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG5")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "6" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(1.039999999999992:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -15.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG6")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-8.960000000000008:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -5.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG7")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "8" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-18.96000000000001:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 4.1:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG8")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "9" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(16.03999999999999:-31.75 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30.9:-1.46 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-29.25 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:-3.96 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "10" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-34.65 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:1.44 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_0")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "12" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-6.759999999999991:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -8.1:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "13" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-11.46000000000001:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -3.4:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_3")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "14" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-16.46000000000001:-40.33 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.6:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_4")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-6.759999999999991:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -8.1:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_5")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "16" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-11.46000000000001:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -3.4:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_6")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "17" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-16.46000000000001:-26.09 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.6:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_7")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("SFP_CAGE" "PACKAGE") _clpAdjustPt('(-14.85999999999999 -33.21) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DESCRIPTION "Cage bottom For Single Port SFP  (Small Form-factor Pluggable)")
	'(COMP_HEIGHT "8.8mm")
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "RD"
	(_clpAdjustPt -22.73999999999998:-25.81 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "12" )
_clp_dbid = (_clpDBCreateText "RD"
	(_clpAdjustPt -14.85999999999999:-32.71 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "49" )
_clp_dbid = (_clpDBCreateText "DT"
	(_clpAdjustPt -14.85999999999999:-32.96 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "49" )
_clp_dbid = (_clpDBCreateText "DT"
	(_clpAdjustPt -14.85999999999999:-32.96 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-25.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-40.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-40.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-39.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-36.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-36.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-41.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-41.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-30.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-30.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-27.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.259999999999991:-27.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.259999999999991:-39.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.259999999999991:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.759999999999991:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.259999999999991:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.960000000000008:-27.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.960000000000008:-27.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.960000000000008:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.960000000000008:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.960000000000008:-27.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.460000000000008:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-25.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-27.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-28.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-28.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-38.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-38 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-37.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.56:-38 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-32.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-33.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-33.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.460000000000008:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.75999999999999:-34.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-34.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-31.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-31.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-34.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.56:-28.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-28.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-28.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.56:-33.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-33.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-33.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-29.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-29.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-36.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-36.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-30.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-30.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-35.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-35.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-31 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-31 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-35 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-35 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-31.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-31.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-34.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-34.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-32.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-32.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-33.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-33.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.96000000000001:-25.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-26.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.75999999999999:-28.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.75999999999999:-37.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.96000000000001:-29.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-37.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.03999999999999:-41.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-41.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-41.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.03999999999999:-32.75 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-32.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-30.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-30.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-32.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.53999999999999:-40.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-40.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.53999999999999:-31.75 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-31.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-31.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.03999999999999:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.53999999999999:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.53999999999999:-31.75 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-31.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-32.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.96000000000001:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-25.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.96000000000001:-40.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-40.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-37 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-37 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-29.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-29.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-36.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-36.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-30.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-30.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-35.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-35.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-31.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-31.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-34.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-34.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-32.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-32.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-33.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-33.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.96000000000001:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.46000000000001:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.96000000000001:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.96000000000001:-27.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.96000000000001:-27.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.96000000000001:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.96000000000001:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.96000000000001:-27.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.03999999999999:-27.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.03999999999999:-27.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.03999999999999:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.03999999999999:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.03999999999999:-27.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.53999999999999:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-25.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.53999999999999:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.039999999999992:-41.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.039999999999992:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.039999999999992:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.039999999999992:-41.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.039999999999992:-41.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.539999999999992:-40.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-40.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.039999999999992:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.539999999999992:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.039999999999992:-27.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.03999999999999204:-27.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.03999999999999204:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.039999999999992:-25.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.039999999999992:-27.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.539999999999992:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-25.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.539999999999992:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-41.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-41.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-41.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-30.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-30.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-28.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-28.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-30.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-35.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-35.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-33.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-33.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-35.65 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-40.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-40.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-29.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-29.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-28.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-34.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-34.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-35.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.960000000000008:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.460000000000008:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.460000000000008:-29.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-29.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-29.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.960000000000008:-34.15 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-34.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.460000000000008:-34.65 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.96000000000001:-41.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.96000000000001:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.96000000000001:-39.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.96000000000001:-41.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.96000000000001:-41.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-25.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.96000000000001:-26.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-40.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.96000000000001:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.96000000000001:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.46000000000001:-40.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-40.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.96000000000001:-26.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-26.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-26.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-27.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-28.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.35999999999999:-38 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-38.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-37.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.35999999999999:-38 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.35999999999999:-33.21 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-33.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-33.71 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-32.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-33.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.35999999999999:-33.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.96000000000001:-39.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-40.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.46000000000001:-40.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.35999999999999:-28.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.35999999999999:-28.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.09:-28.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.09:-28.4 _clp_cinfo) nil
 	(_clpAdjustPt -14.86199999999999:-28.4044 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.09:-38 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.09:-38 _clp_cinfo) nil
 	(_clpAdjustPt -14.86199999999999:-38.0044 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-33.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.41:-32.88 _clp_cinfo) t
 	(_clpAdjustPt 22.56765820011984:-33.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-34.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-34.7 _clp_cinfo) t
 	(_clpAdjustPt 24.62961127674643:-34.34160678567181 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-32.09 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-31.71 _clp_cinfo) nil
 	(_clpAdjustPt 24.6269532484778:-32.07162815949704 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-30.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.94:-30.71 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.74000000000001:-31.51 _clp_cinfo) t
 	(_clpAdjustPt 25.93986639442537:-31.51013360557464 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.74000000000001:-34.91 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.94:-35.71 _clp_cinfo) t
 	(_clpAdjustPt 25.93946656130331:-34.9094665613033 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-35.71 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-40.16 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-37.01 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-40.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-37.01 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.64000000000001:-36.21 _clp_cinfo) nil
 	(_clpAdjustPt 26.63953214356499:-37.01046785643504 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.14000000000001:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-40.16 _clp_cinfo) nil
 	(_clpAdjustPt 27.13913105318235:-40.15913105318236 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-37.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-38.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.25:-37.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.25:-38.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 25.55000000000001:-35.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.55000000000001:-30.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-40.01000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-40.01000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-40.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.19:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.19:-40.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.89000000000001:-37.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.89000000000001:-38.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.99000000000001:-40.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.99000000000001:-40.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-40.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-40.01000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-40.01000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.23000000000002:-35.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.23000000000002:-30.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.98000000000002:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.98000000000002:-36.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.90000000000001:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.90000000000001:-36.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.84:-35.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.84:-30.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-40.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-40.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-40.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-40.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-40.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-40.12 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-40.12 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-39.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-38.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-38.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-37.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-37.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-37.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-37.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-36.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-36.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-37.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-37.21 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859807977148:-37.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-38.71 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859807977154:-38.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-37.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-37.71 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893901052904:-37.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-38.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-39.21 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893901052856:-38.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-40.01000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-40.01000000000001 _clp_cinfo) nil
 	(_clpAdjustPt 20.59:-40.00951009824968 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-40.01000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-40.01000000000001 _clp_cinfo) nil
 	(_clpAdjustPt 22.59:-40.00951009824968 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-36.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-35.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-30.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-36.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-35.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-30.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-39.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-40.16 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-40.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-39.48 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.78999999999999:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.78999999999999:-37.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.01000000000002:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.01000000000002:-40.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.09:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.09:-37.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.39000000000001:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.09:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.09:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.49000000000001:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-40.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-40.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-40.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.78999999999999:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.09:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.09:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.78999999999999:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.06:-39.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.49000000000001:-37.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.39000000000001:-37.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.39000000000001:-37.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.09:-37.76 _clp_cinfo) nil
 	(_clpAdjustPt 15.38946694961672:-37.75946694961672 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.06:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.76000000000002:-39.51000000000001 _clp_cinfo) nil
 	(_clpAdjustPt 12.06048007780902:-39.51048007780899 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.09:-39.51000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.78999999999999:-39.21 _clp_cinfo) nil
 	(_clpAdjustPt 13.79052949769041:-39.50947050230958 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.78999999999999:-37.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.49000000000001:-37.46 _clp_cinfo) nil
 	(_clpAdjustPt 16.48986594058744:-37.76013405941256 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-40.16 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.81:-40.46 _clp_cinfo) nil
 	(_clpAdjustPt 17.80986739254831:-40.16013260745169 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-35.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-36.21 _clp_cinfo) nil
 	(_clpAdjustPt 18.08893374067691:-35.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-39.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-39.48 _clp_cinfo) nil
 	(_clpAdjustPt 17.285:-39.48359256318935 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.76000000000002:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.76000000000002:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-40.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-40.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.76000000000002:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.76000000000002:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.76000000000002:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.76000000000002:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.439999999999998:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.439999999999998:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.46000000000001:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.740000000000009:-39.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.439999999999998:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.439999999999998:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.140000000000015:-37.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.740000000000009:-37.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.439999999999998:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-37.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.390000000000015:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.439999999999998:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.439999999999998:-37.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.439999999999998:-37.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.140000000000015:-37.46 _clp_cinfo) nil
 	(_clpAdjustPt 7.139531273586954:-37.76046872641306 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.740000000000009:-37.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.439999999999998:-37.76 _clp_cinfo) nil
 	(_clpAdjustPt 4.739135616285381:-37.75913561628537 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.740000000000009:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.439999999999998:-39.51000000000001 _clp_cinfo) nil
 	(_clpAdjustPt 8.738469870532697:-39.50846987053268 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.76000000000002:-39.51000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.46000000000001:-39.21 _clp_cinfo) nil
 	(_clpAdjustPt 10.4621942108158:-39.5078057891842 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.110000000000014:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1100000000000136:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.210000000000008:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.210000000000008:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.140000000000015:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.409999999999997:-39.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.1899999999999977:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.909999999999997:-39.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.759999999999991:-35.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-35.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.490000000000009:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.110000000000014:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.110000000000014:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1100000000000136:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1100000000000136:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.210000000000008:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.210000000000008:-39.51000000000001 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.210000000000008:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.210000000000008:-37.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-35.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-35.46 _clp_cinfo) nil
 	(_clpAdjustPt -3.36086894690709:-35.4591310530929 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.210000000000008:-37.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.509999999999991:-37.46 _clp_cinfo) nil
 	(_clpAdjustPt -3.510134059425951:-37.76013405942595 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-39.51000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.140000000000015:-39.21 _clp_cinfo) nil
 	(_clpAdjustPt 3.140192971257108:-39.5098070287429 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1100000000000136:-39.51000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.1899999999999977:-39.21 _clp_cinfo) nil
 	(_clpAdjustPt -0.1878046809979423:-39.50780468099794 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.909999999999997:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.210000000000008:-39.51000000000001 _clp_cinfo) nil
 	(_clpAdjustPt -1.911198073089992:-39.50880192691 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.409999999999997:-39.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.110000000000014:-39.51000000000001 _clp_cinfo) nil
 	(_clpAdjustPt 1.410480077798127:-39.51048007779814 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-40.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-40.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.909999999999997:-39.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-39.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.509999999999991:-37.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.609999999999985:-37.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.609999999999985:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.909999999999997:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.909999999999997:-37.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.509999999999991:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-36.06 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.609999999999985:-37.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.909999999999997:-37.76 _clp_cinfo) nil
 	(_clpAdjustPt -4.610533050393542:-37.75946694960644 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.759999999999991:-35.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-36.06 _clp_cinfo) nil
 	(_clpAdjustPt -5.760864383810741:-36.05913561618924 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.44:-37.38 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.56:-37.15 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-37.14 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.12:-36.92 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-40.73 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-40.47 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-37.14 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-38.31 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-36.92 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-38.09 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.60999999999999:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-40.47 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.50999999999999:-40.73 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-40.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.40000000000001:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.75999999999999:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-40.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-40.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.26999999999998:-38.09 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-40.46 _clp_cinfo) nil
 	(_clpAdjustPt -19.65985449263914:-39.1964604390337 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.13999999999999:-38.31 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-40.21 _clp_cinfo) nil
 	(_clpAdjustPt -19.66100602942714:-39.19962257585527 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-29.41 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-26.26 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-29.41 _clp_cinfo) nil
 	(_clpAdjustPt 26.63913247793829:-29.4091324779383 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-27.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-28.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.25:-27.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.25:-28.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-34.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.99000000000001:-32.09 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.89000000000001:-27.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.89000000000001:-28.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.98000000000002:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.98000000000002:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.90000000000001:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.90000000000001:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.47:-31.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-32.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-31.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.41:-32.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-34.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-34.66 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-33.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-33.54 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-32.88 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-32.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-31.76 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-31.76 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-30.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-29.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-29.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-28.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-28.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-33.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.43000000000001:-34.66 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.45000000000002:-33.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-34.66 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.47:-34.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-34.7 _clp_cinfo) nil
 	(_clpAdjustPt 24.64641538677691:-34.33075383966926 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.59:-31.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-31.76 _clp_cinfo) nil
 	(_clpAdjustPt 24.67123907113933:-32.07397377073413 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-29.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-28.71 _clp_cinfo) nil
 	(_clpAdjustPt 26.68868108753279:-28.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-28.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-29.21 _clp_cinfo) nil
 	(_clpAdjustPt 20.88882797409923:-28.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.47:-31.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.47:-32.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-31.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.81:-32.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.34:-31.23 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.34:-32.28 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.64000000000001:-32.58 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-32.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-32.08 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-32.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-31.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-31.43 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-30.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.64000000000001:-30.93 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.64000000000001:-30.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.34:-31.23 _clp_cinfo) nil
 	(_clpAdjustPt 13.64114250453915:-31.23114250453914 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.34:-32.28 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.64000000000001:-32.58 _clp_cinfo) nil
 	(_clpAdjustPt 13.63820595824896:-32.28179404175107 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-30.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-30.71 _clp_cinfo) nil
 	(_clpAdjustPt 18.08893374067705:-30.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-31.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-30.93 _clp_cinfo) nil
 	(_clpAdjustPt 16.58893076291309:-31.18 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-32.58 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-32.08 _clp_cinfo) nil
 	(_clpAdjustPt 16.58882458839105:-32.33 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.78999999999999:-28.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-28.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.09:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.39000000000001:-28.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.49000000000001:-28.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-28.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.39000000000001:-28.96 _clp_cinfo) nil
 	(_clpAdjustPt 10.3898673925886:-28.66013260741138 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.49000000000001:-28.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-28.66 _clp_cinfo) nil
 	(_clpAdjustPt 11.48946638654161:-28.6594663865416 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-34.98 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-34.98 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-34.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-34.33 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.439999999999998:-28.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-29.58 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-29.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.2599999999999909:-28.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.140000000000015:-28.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-28.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-28.93 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-28.16 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.759999999999991:-28.16 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-28.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.5600000000000023:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-35.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-35.28 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-34.03 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-29.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-28.63 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-28.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-35.28 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-34.98 _clp_cinfo) nil
 	(_clpAdjustPt -3.362139748796693:-35.2821397487967 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-34.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-34.03 _clp_cinfo) nil
 	(_clpAdjustPt -3.359213022621674:-34.03078697737831 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-28.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.2599999999999909:-28.96 _clp_cinfo) nil
 	(_clpAdjustPt -0.2601326075086376:-28.66013260750864 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.140000000000015:-28.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-28.66 _clp_cinfo) nil
 	(_clpAdjustPt 2.139131053172036:-28.65913105317203 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-28.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-28.63 _clp_cinfo) nil
 	(_clpAdjustPt -3.359213022598396:-28.63078697740159 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-28.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-28.16 _clp_cinfo) nil
 	(_clpAdjustPt -3.360469843140606:-28.46046984314061 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-29.88 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-29.58 _clp_cinfo) nil
 	(_clpAdjustPt -3.362139748897505:-29.88213974889751 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.530000000000001:-28.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.530000000000001:-29.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.530000000000001:-34.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.530000000000001:-34.98 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-28.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.189999999999998:-29.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-34.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.189999999999998:-34.98 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-27.86 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-27.86 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.759999999999991:-28.16 _clp_cinfo) nil
 	(_clpAdjustPt -5.760463502501523:-27.86046350250152 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-29.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-28.33 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-29.28 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-28.11 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-29.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18:-29.28 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.56:-29.26 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.44:-29.04 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.66:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-28.33 _clp_cinfo) nil
 	(_clpAdjustPt -19.66004696746728:-27.22349002103163 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.66:-26.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-28.11 _clp_cinfo) nil
 	(_clpAdjustPt -19.6611970583466:-27.22032916420717 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-26.26 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-25.96 _clp_cinfo) nil
 	(_clpAdjustPt 27.13953015680568:-26.26046984319433 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-26.41 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-25.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-26.41 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.19:-25.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.19:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.99000000000001:-25.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.99000000000001:-25.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-26.41 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-25.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-26.41 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-27.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-27.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-26.3 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-26.3 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-26.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-25.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-25.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-25.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-27.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt 26.6885980797714:-27.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-27.71 _clp_cinfo) nil
 	(_clpAdjustPt 20.8889390105287:-27.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-26.41 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-26.41 _clp_cinfo) nil
 	(_clpAdjustPt 20.59:-26.40951009824978 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-26.41 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-26.41 _clp_cinfo) nil
 	(_clpAdjustPt 22.59:-26.40951009824978 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-26.26 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-26.93 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-26.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.06:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.01000000000002:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.01000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.56:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.39000000000001:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.28999999999999:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.78999999999999:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.49000000000001:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.09:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.99000000000001:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.86000000000001:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.76000000000002:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-26.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-25.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-25.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.99000000000001:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-26.91 _clp_cinfo) nil
 	(_clpAdjustPt 13.9894652792845:-26.90946527928447 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.09:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt 13.08986739270506:-26.91013260729493 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.86000000000001:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt 14.85986739268196:-26.91013260731805 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.76000000000002:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-26.91 _clp_cinfo) nil
 	(_clpAdjustPt 15.7594663865562:-26.9094663865562 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-25.96 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-26.26 _clp_cinfo) nil
 	(_clpAdjustPt 17.8094669496339:-26.2594669496339 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-26.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-26.93 _clp_cinfo) nil
 	(_clpAdjustPt 17.285:-26.93359256318922 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.090000000000003:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.760000000000019:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.760000000000019:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.390000000000015:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.740000000000009:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.460000000000008:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.060000000000002:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.789999999999992:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-25.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-25.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.060000000000002:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt 7.060538951746821:-26.90946104825318 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.460000000000008:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-26.91 _clp_cinfo) nil
 	(_clpAdjustPt 5.461795370650833:-26.91179537065082 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.789999999999992:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-26.91 _clp_cinfo) nil
 	(_clpAdjustPt 8.790131718790406:-26.9101317187904 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.490000000000009:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.560000000000002:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.759999999999991:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.859999999999985:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.759999999999991:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt -2.760463502391502:-26.91046350239152 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.740000000000009:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt 3.738868959105218:-26.91113104089479 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.859999999999985:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-26.91 _clp_cinfo) nil
 	(_clpAdjustPt -1.860868946996675:-26.90913105300334 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.759999999999991:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.859999999999985:-27.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-26.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-26.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.560000000000002:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.609999999999985:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-25.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-25.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.060000000000002:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.509999999999991:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-26.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.759999999999991:-27.21 _clp_cinfo) nil
 	(_clpAdjustPt -4.760463502401308:-26.91046350240133 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.859999999999985:-27.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-26.91 _clp_cinfo) nil
 	(_clpAdjustPt -3.860868946863235:-26.90913105313677 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-25.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-25.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.60999999999999:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-25.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.50999999999999:-25.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.40000000000001:-26.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-26.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.75999999999999:-26.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-26.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-25.96 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.460000000000008:-32.71 _clp_cinfo))
	(_clpMKSConvert 0.050000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.050000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.460000000000008:-33.71 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/BODY_CENTER" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.960000000000008:-33.21 _clp_cinfo))
	(_clpMKSConvert 0.050000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.050000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.960000000000008:-33.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/BODY_CENTER" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-28.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-29.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-28.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-29.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-28.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-28.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-28.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-28.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-28.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-28.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-28.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-28.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-29.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-30.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-29.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-29.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-29.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-30.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-30.1 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-30.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-32.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-33.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-32.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-33.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-32.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-32.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-32.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-32.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-32.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-32.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-32.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-32.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-33.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-34.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-33.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-33.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-33.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-34.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-34.1 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-34.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-36.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-37.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-36.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-37.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-36.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-36.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-36.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-36.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-36.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-36.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-36.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-36.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-37.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-38.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-37.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-37.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-37.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-38.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-38.1 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-38.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.22999999999999:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.560000000000002:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.3599999999999852:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.289999999999992:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.53999999999999:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.44:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.64000000000001:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.640000000000015:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.560000000000002:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.359999999999985:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.289999999999992:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.22999999999999:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.98999999999998:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.93000000000001:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.46000000000001:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.46000000000001:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.98999999999998:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.93000000000001:-40.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.44:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.640000000000015:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.35999999999999:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.98999999999998:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.93000000000001:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.98999999999998:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.93000000000001:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.56:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.35999999999999:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-25.44 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-25.44 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-27.61 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-29.2 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-32.41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-34 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-37.21 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-38.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-40.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.53999999999999:-25.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-25.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-26.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-26.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-39.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-39.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-40.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-40.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-25.71 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "8.8 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.53999999999999:-25.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-25.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-26.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-26.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-39.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-39.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-40.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-40.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-25.71 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "8.8 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 50 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "20" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-55 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:4.8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_10")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "19" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-50.19 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:-0.01 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_9")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "18" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-21.06:-45.4 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 6.2:-4.8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_8")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(16.03999999999999:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG1")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(6.039999999999992:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -20.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG3")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S155H85" _clpAdjustPt(-13.96000000000001:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -0.9:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG4")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "5" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(11.03999999999999:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -25.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG5")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "6" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(1.039999999999992:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -15.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG6")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-8.960000000000008:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -5.9:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG7")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "8" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-18.96000000000001:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 4.1:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG8")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "9" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(16.03999999999999:-48.73999999999999 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30.9:-1.46 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-46.23999999999999 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:-3.96 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "10" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("S175H105" _clpAdjustPt(-3.960000000000008:-51.64 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10.9:1.44 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_0")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "12" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-6.759999999999991:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -8.1:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "13" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-11.46000000000001:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -3.4:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_3")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "14" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-16.46000000000001:-57.32 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.6:7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_4")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-6.759999999999991:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -8.1:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_5")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "16" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-11.46000000000001:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -3.4:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_6")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "17" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("C165H95" _clpAdjustPt(-16.46000000000001:-43.08 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 1.6:-7.12 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_THERMAL_BEST_FIT "FALSE")
	'(DYN_THERMAL_CON_TYPE "8_WAY")
	'(CDS_PINID "CG_7")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("SFP_CAGE" "PACKAGE") _clpAdjustPt('(-14.85999999999999 -50.2) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DESCRIPTION "Cage bottom For Single Port SFP  (Small Form-factor Pluggable)")
	'(COMP_HEIGHT "8.8mm")
	'(MECH_PIN_TO_MECH_PIN_SPACING "0.2 MM")
	'(MECH_PIN_TO_CONDUCTOR_SPACING "0.2 MM")
	'(FIXED t)
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "RD"
	(_clpAdjustPt -22.79999999999998:-43.1 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "12" )
_clp_dbid = (_clpDBCreateText "RD"
	(_clpAdjustPt -14.85999999999999:-49.7 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "49" )
_clp_dbid = (_clpDBCreateText "DT"
	(_clpAdjustPt -14.85999999999999:-49.95 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 180.000 "49" )
_clp_dbid = (_clpDBCreateText "DT"
	(_clpAdjustPt -14.85999999999999:-49.95 _clp_cinfo)  _clp_text_orient 
	"DEVICE TYPE/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-42.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-57.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-57.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.259999999999991:-56.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-53.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-53.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-58.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-58.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-47.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-47.15 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-44.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.259999999999991:-44.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.259999999999991:-56.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.259999999999991:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.759999999999991:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.759999999999991:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.259999999999991:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.960000000000008:-44.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.960000000000008:-44.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.960000000000008:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.960000000000008:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.960000000000008:-44.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.460000000000008:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-42.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-44.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-45.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-45.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-55.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-54.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.56:-55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-49.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-50.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.56:-50.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.460000000000008:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.960000000000008:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.75999999999999:-51.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-51.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-48.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-48.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.75999999999999:-51.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.56:-45.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-45.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-45.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.56:-50.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-50.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-50.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-46.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-46.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-53.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-53.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-47.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-52.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-52.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-48 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-48 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-52 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-52 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-48.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-48.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-51.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-51.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-49.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-49.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.25999999999999:-50.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.25999999999999:-50.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.96000000000001:-42.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-43.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.75999999999999:-45.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.75999999999999:-54.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.96000000000001:-46.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-54.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.03999999999999:-58.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-58.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-58.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.03999999999999:-49.75 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-49.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03999999999999:-47.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-47.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.03999999999999:-49.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.53999999999999:-57.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-57.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.53999999999999:-48.75 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-48.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-48.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.03999999999999:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.53999999999999:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.53999999999999:-48.75 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-48.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.03999999999999:-49.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.96000000000001:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-42.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.96000000000001:-57.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-57.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.96000000000001:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-54 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-54 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-46.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-46.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-53.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-53.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-47.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-47.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-52.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-52.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-48.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-48.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-51.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-51.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-49.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-49.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-50.8 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-50.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.46000000000001:-50 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.46000000000001:-50 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.96000000000001:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.46000000000001:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.46000000000001:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -11.96000000000001:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.96000000000001:-44.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.96000000000001:-44.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.96000000000001:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.96000000000001:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.96000000000001:-44.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.03999999999999:-44.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.03999999999999:-44.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.03999999999999:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.03999999999999:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.03999999999999:-44.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.53999999999999:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-42.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.53999999999999:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.03999999999999:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.039999999999992:-58.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.039999999999992:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.039999999999992:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.039999999999992:-58.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.039999999999992:-58.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.539999999999992:-57.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-57.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.039999999999992:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.039999999999992:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.539999999999992:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.039999999999992:-44.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.03999999999999204:-44.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.03999999999999204:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.039999999999992:-42.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.039999999999992:-44.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.539999999999992:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-42.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.539999999999992:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.039999999999992:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-58.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-58.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-58.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-47.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-47.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-45.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-45.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-47.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.960000000000008:-52.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-52.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.960000000000008:-50.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-50.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.960000000000008:-52.65 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-57.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-57.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-46.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-46.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-45.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.460000000000008:-51.65 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-51.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-52.15 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.960000000000008:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.460000000000008:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.460000000000008:-46.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-46.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-46.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.960000000000008:-51.15 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.960000000000008:-51.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.460000000000008:-51.65 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.96000000000001:-58.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.96000000000001:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.96000000000001:-56.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.96000000000001:-58.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.96000000000001:-58.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-42.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.96000000000001:-43.08 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-57.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.96000000000001:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.46000000000001:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.96000000000001:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.46000000000001:-57.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-57.83 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.96000000000001:-43.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-43.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.46000000000001:-43.58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-44.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-45.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.35999999999999:-55 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-55.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-54.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.35999999999999:-55 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.35999999999999:-50.2 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-50.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-50.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85999999999999:-49.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85999999999999:-50.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.35999999999999:-50.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.96000000000001:-56.83 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.96000000000001:-57.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.46000000000001:-57.33 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.35999999999999:-45.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.35999999999999:-45.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.09:-45.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.09:-45.4 _clp_cinfo) nil
 	(_clpAdjustPt -14.86199999999999:-45.397 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.09:-55 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.09:-55 _clp_cinfo) nil
 	(_clpAdjustPt -14.86199999999999:-54.997 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/DISPLAY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-50.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.41:-49.87 _clp_cinfo) t
 	(_clpAdjustPt 22.56409841623037:-50.205 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-51.32 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-51.7 _clp_cinfo) t
 	(_clpAdjustPt 24.62742166076404:-51.33886490606744 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-49.08 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-48.71 _clp_cinfo) nil
 	(_clpAdjustPt 24.62914957847647:-49.06889234759301 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-47.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.94:-47.7 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.74000000000001:-48.5 _clp_cinfo) t
 	(_clpAdjustPt 25.93899958463246:-48.50100041536756 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.74000000000001:-51.9 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.94:-52.7 _clp_cinfo) t
 	(_clpAdjustPt 25.94033236124559:-51.90033236124559 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-52.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-57.15 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-54 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-57.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.64000000000001:-53.2 _clp_cinfo) nil
 	(_clpAdjustPt 26.63866569728592:-54.0013343027141 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.14000000000001:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-57.15 _clp_cinfo) nil
 	(_clpAdjustPt 27.13999443683434:-57.14999443683435 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-54.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-55.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.25:-54.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.25:-55.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 25.55000000000001:-52.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.55000000000001:-47.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-57 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-57 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-57.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.19:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.19:-57.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.89000000000001:-54.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.89000000000001:-55.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.99000000000001:-57.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.99000000000001:-57.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-57.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-57 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-57 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.23000000000002:-52.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.23000000000002:-47.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.98000000000002:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.98000000000002:-53.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.90000000000001:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.90000000000001:-53.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.84:-52.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.84:-47.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-57.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-57.71 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-57.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-57.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-57.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-57.11 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-57.11 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-56.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-55.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-55.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-54.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-54.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-54.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-54.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-53.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-53.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-54.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-54.2 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859803955337:-54.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-55.7 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859803955345:-55.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-54.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-54.7 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893898036903:-54.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-55.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-56.2 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893898036946:-55.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-57 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-57 _clp_cinfo) nil
 	(_clpAdjustPt 20.59:-57.00163300187037 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-57 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-57 _clp_cinfo) nil
 	(_clpAdjustPt 22.59:-57.00163300187037 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-53.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-52.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-47.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-53.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-52.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-47.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-56.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-57.15 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-57.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-56.48 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.78999999999999:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.78999999999999:-54.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.01000000000002:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.01000000000002:-57.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.09:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.09:-54.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.39000000000001:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.09:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.09:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.49000000000001:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-57.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-57.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-57.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.78999999999999:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.09:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.09:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.78999999999999:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.06:-56.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.49000000000001:-54.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.39000000000001:-54.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.39000000000001:-54.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.09:-54.75 _clp_cinfo) nil
 	(_clpAdjustPt 15.39033592699769:-54.75033592699771 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.06:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.76000000000002:-56.5 _clp_cinfo) nil
 	(_clpAdjustPt 12.05999999998855:-56.49999999998857 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.09:-56.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.78999999999999:-56.2 _clp_cinfo) nil
 	(_clpAdjustPt 13.78999999989813:-56.50000000010189 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.78999999999999:-54.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.49000000000001:-54.45 _clp_cinfo) nil
 	(_clpAdjustPt 16.48899889807552:-54.7510011019245 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-57.15 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.81:-57.45 _clp_cinfo) nil
 	(_clpAdjustPt 17.80900112071734:-57.15099887928267 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-52.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-53.2 _clp_cinfo) nil
 	(_clpAdjustPt 18.08893371039096:-52.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-56.48 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-56.48 _clp_cinfo) nil
 	(_clpAdjustPt 17.285:-56.477550504212 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.76000000000002:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.76000000000002:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-57.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-57.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.76000000000002:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.76000000000002:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.76000000000002:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.76000000000002:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.439999999999998:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.439999999999998:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.46000000000001:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.740000000000009:-56.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.439999999999998:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.439999999999998:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.140000000000015:-54.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.740000000000009:-54.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.439999999999998:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-54.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.390000000000015:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.439999999999998:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.439999999999998:-54.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.439999999999998:-54.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.140000000000015:-54.45 _clp_cinfo) nil
 	(_clpAdjustPt 7.138665207962674:-54.75133479203735 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.740000000000009:-54.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.439999999999998:-54.75 _clp_cinfo) nil
 	(_clpAdjustPt 4.740005548297603:-54.75000554829761 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.740000000000009:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.439999999999998:-56.5 _clp_cinfo) nil
 	(_clpAdjustPt 8.739999999925999:-56.49999999992602 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.76000000000002:-56.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.46000000000001:-56.2 _clp_cinfo) nil
 	(_clpAdjustPt 10.46000000001314:-56.49999999998687 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.110000000000014:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1100000000000136:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.210000000000008:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.210000000000008:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.140000000000015:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.409999999999997:-56.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.1899999999999977:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.909999999999997:-56.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.759999999999991:-52.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-52.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.490000000000009:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.110000000000014:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.110000000000014:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1100000000000136:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.1100000000000136:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.210000000000008:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.210000000000008:-56.5 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.210000000000008:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.210000000000008:-54.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-52.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-52.45 _clp_cinfo) nil
 	(_clpAdjustPt -3.360005563038868:-52.44999443696111 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.210000000000008:-54.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.509999999999991:-54.45 _clp_cinfo) nil
 	(_clpAdjustPt -3.511001101937893:-54.75100110193789 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-56.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.140000000000015:-56.2 _clp_cinfo) nil
 	(_clpAdjustPt 3.140000000006438:-56.49999999999355 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.1100000000000136:-56.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.1899999999999977:-56.2 _clp_cinfo) nil
 	(_clpAdjustPt -0.1900000000501336:-56.50000000005015 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.909999999999997:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.210000000000008:-56.5 _clp_cinfo) nil
 	(_clpAdjustPt -1.909999999894097:-56.50000000010589 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 1.409999999999997:-56.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.110000000000014:-56.5 _clp_cinfo) nil
 	(_clpAdjustPt 1.410000000063462:-56.50000000006344 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-57.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-57.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.909999999999997:-56.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-56.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.509999999999991:-54.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.609999999999985:-54.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.609999999999985:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.909999999999997:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.909999999999997:-54.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.509999999999991:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-53.05 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.609999999999985:-54.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.909999999999997:-54.75 _clp_cinfo) nil
 	(_clpAdjustPt -4.609664073012567:-54.75033592698743 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.759999999999991:-52.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-53.05 _clp_cinfo) nil
 	(_clpAdjustPt -5.759994451782433:-53.05000554821756 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.44:-54.37 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.56:-54.15 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-54.13 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.12:-53.91 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-57.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-57.46 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-54.13 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-55.3 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-53.91 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-55.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.60999999999999:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-57.46 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.50999999999999:-57.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-57.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.40000000000001:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.75999999999999:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-57.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-57.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.26999999999998:-55.08 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-57.45 _clp_cinfo) nil
 	(_clpAdjustPt -19.66027123203827:-56.18656770107314 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.13999999999999:-55.3 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-57.2 _clp_cinfo) nil
 	(_clpAdjustPt -19.66141956654494:-56.1897270483903 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-46.4 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-43.25 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.44:-46.4 _clp_cinfo) nil
 	(_clpAdjustPt 26.63999791562227:-46.39999791562227 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-44.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-45.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.25:-44.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.25:-45.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.99000000000001:-51.32 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.99000000000001:-49.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.89000000000001:-44.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.89000000000001:-45.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.98000000000002:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.98000000000002:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.90000000000001:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.90000000000001:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.47:-48.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-49.87 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-48.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.41:-49.87 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-51.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-51.66 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-50.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-50.54 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-49.87 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.45000000000002:-49.87 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.43000000000001:-48.75 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-48.75 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.64000000000001:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-47.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-46.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-46.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-45.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-45.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.41:-50.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.43000000000001:-51.66 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.45000000000002:-50.54 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-51.66 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.47:-51.66 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.59:-51.7 _clp_cinfo) nil
 	(_clpAdjustPt 24.64789074624542:-51.3263277612637 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.59:-48.71 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.47:-48.75 _clp_cinfo) nil
 	(_clpAdjustPt 24.64586615716163:-49.07759847148489 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-46.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-45.7 _clp_cinfo) nil
 	(_clpAdjustPt 26.6885980395532:-45.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-45.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-46.2 _clp_cinfo) nil
 	(_clpAdjustPt 20.88893898036972:-45.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.5:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.5:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.38:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.38:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.47:-48.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.47:-49.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-48.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.81:-49.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.34:-48.23 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.34:-49.28 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.64000000000001:-49.58 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-49.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-49.08 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-49.08 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.81:-48.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-48.43 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-47.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.64000000000001:-47.93 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.64000000000001:-47.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.34:-48.23 _clp_cinfo) nil
 	(_clpAdjustPt 13.63866927993865:-48.22866927993867 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.34:-49.28 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.64000000000001:-49.58 _clp_cinfo) nil
 	(_clpAdjustPt 13.64067148352771:-49.27932851647231 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.09:-47.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.09:-47.7 _clp_cinfo) nil
 	(_clpAdjustPt 18.0889337103911:-47.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-48.43 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-47.93 _clp_cinfo) nil
 	(_clpAdjustPt 16.58893084932828:-48.18 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.59:-49.58 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.59:-49.08 _clp_cinfo) nil
 	(_clpAdjustPt 16.58893084932873:-49.33 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.78999999999999:-45.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-45.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.09:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.39000000000001:-45.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.49000000000001:-45.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-45.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.39000000000001:-45.95 _clp_cinfo) nil
 	(_clpAdjustPt 10.38900112055629:-45.65099887944372 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 11.49000000000001:-45.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-45.65 _clp_cinfo) nil
 	(_clpAdjustPt 11.49033074136526:-45.65033074136526 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-51.98 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-51.98 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-51.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-51.33 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.439999999999998:-45.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-46.58 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-46.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.2599999999999909:-45.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.140000000000015:-45.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-45.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-45.93 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-45.15 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.759999999999991:-45.15 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-45.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.5600000000000023:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-52.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-52.28 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-51.03 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-46.88 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-45.63 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-45.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-52.28 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-51.98 _clp_cinfo) nil
 	(_clpAdjustPt -3.359674820157664:-52.27967482015767 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-51.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-51.03 _clp_cinfo) nil
 	(_clpAdjustPt -3.361670327937446:-51.02832967206256 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-45.65 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.2599999999999909:-45.95 _clp_cinfo) nil
 	(_clpAdjustPt -0.2609988795409777:-45.65099887954098 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2.140000000000015:-45.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-45.65 _clp_cinfo) nil
 	(_clpAdjustPt 2.139994436784264:-45.64999443678425 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.359999999999985:-45.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-45.63 _clp_cinfo) nil
 	(_clpAdjustPt -3.361670327828961:-45.62832967217103 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-45.45 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-45.15 _clp_cinfo) nil
 	(_clpAdjustPt -3.36133590567357:-45.45133590567359 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-46.88 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.359999999999985:-46.58 _clp_cinfo) nil
 	(_clpAdjustPt -3.359674820182192:-46.8796748201822 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.530000000000001:-45.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.530000000000001:-46.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.530000000000001:-51.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.530000000000001:-51.98 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-45.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.189999999999998:-46.58 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.189999999999998:-51.33 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.189999999999998:-51.98 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-44.85 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -6.060000000000002:-44.85 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.759999999999991:-45.15 _clp_cinfo) nil
 	(_clpAdjustPt -5.761330719911058:-44.85133071991108 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-46.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-45.33 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18:-46.27 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-45.1 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.12:-46.5 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18:-46.27 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.56:-46.26000000000001 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.44:-46.03 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.66:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.26999999999998:-45.33 _clp_cinfo) nil
 	(_clpAdjustPt -19.6665128591188:-44.21650300669644 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -19.66:-43.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.13999999999999:-45.1 _clp_cinfo) nil
 	(_clpAdjustPt -19.65551741183668:-44.21709081604148 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.44:-43.25 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.14000000000001:-42.95 _clp_cinfo) nil
 	(_clpAdjustPt 27.13866409438765:-43.25133590561235 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.44:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-43.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-43.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-43.4 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-42.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.34:-43.4 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.19:-42.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.19:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.99000000000001:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.99000000000001:-42.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.84:-43.4 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-42.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-43.4 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-44.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-44.7 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-43.3 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-43.3 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.44:-43.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.44:-43.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.34:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.84:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.44:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-42.69 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-42.69 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.69:-44.7 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.69:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt 26.68859803955328:-44.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.89000000000001:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.89000000000001:-44.7 _clp_cinfo) nil
 	(_clpAdjustPt 20.8889389803696:-44.45 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.34:-43.4 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.84:-43.4 _clp_cinfo) nil
 	(_clpAdjustPt 20.59:-43.40163300187046 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 22.34:-43.4 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.84:-43.4 _clp_cinfo) nil
 	(_clpAdjustPt 22.59:-43.40163300187046 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-43.25 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-43.93 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-43.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.06:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.06:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.01000000000002:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.01000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.56:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.39000000000001:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.28999999999999:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.78999999999999:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.49000000000001:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.09:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.99000000000001:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.86000000000001:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.76000000000002:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 11.78999999999999:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-43.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.66:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.51000000000002:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-42.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.49000000000001:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.39000000000001:-42.68 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.99000000000001:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.28999999999999:-43.9 _clp_cinfo) nil
 	(_clpAdjustPt 13.99032963128366:-43.90032963128364 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12.78999999999999:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.09:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt 13.08900112067275:-43.90099887932728 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.56:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.86000000000001:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt 14.85900112064962:-43.90099887935038 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.76000000000002:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 16.06:-43.9 _clp_cinfo) nil
 	(_clpAdjustPt 15.76033074169476:-43.90033074169476 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.81:-42.95 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-43.25 _clp_cinfo) nil
 	(_clpAdjustPt 17.8103359270149:-43.25033592701489 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.06:-43.93 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.51000000000002:-43.93 _clp_cinfo) nil
 	(_clpAdjustPt 17.285:-43.92755050421188 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.090000000000003:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.760000000000019:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.760000000000019:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.390000000000015:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.740000000000009:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.460000000000008:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7.060000000000002:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.789999999999992:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.09:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-42.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.390000000000015:-42.68 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6.760000000000019:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.060000000000002:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt 7.059680364382189:-43.90031963561781 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.460000000000008:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.760000000000019:-43.9 _clp_cinfo) nil
 	(_clpAdjustPt 5.462660552217471:-43.90266055221745 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8.789999999999992:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.090000000000003:-43.9 _clp_cinfo) nil
 	(_clpAdjustPt 8.790992224212829:-43.90099222421284 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.490000000000009:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.490000000000009:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.439999999999998:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.560000000000002:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -2.759999999999991:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.859999999999985:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5600000000000023:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.060000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.060000000000002:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.759999999999991:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt -2.761330719941213:-43.90133071994121 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 3.439999999999998:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.740000000000009:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt 3.738005630637986:-43.90199436936201 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.859999999999985:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.560000000000002:-43.9 _clp_cinfo) nil
 	(_clpAdjustPt -1.860005563152669:-43.89999443684735 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.759999999999991:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.859999999999985:-44.2 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-43.72 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.060000000000002:-43.72 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.560000000000002:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.609999999999985:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-42.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.609999999999985:-42.68 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.060000000000002:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.509999999999991:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.509999999999991:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.060000000000002:-43.9 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.759999999999991:-44.2 _clp_cinfo) nil
 	(_clpAdjustPt -4.761330719916629:-43.90133071991662 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.859999999999985:-44.2 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.560000000000002:-43.9 _clp_cinfo) nil
 	(_clpAdjustPt -3.860005563094973:-43.89999443690503 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-42.94 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-42.68 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12.60999999999999:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.60999999999999:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.50999999999999:-42.68 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.50999999999999:-42.94 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.40000000000001:-43.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-43.21 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.75999999999999:-43.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -20.75999999999999:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.06:-43.21 _clp_cinfo))
	(_clpMKSConvert 0.100000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.100000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.06:-42.95 _clp_cinfo))
_clpPl = list(
	'(CLIP_DRAWING "CLIP_1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -1.460000000000008:-49.7 _clp_cinfo))
	(_clpMKSConvert 0.050000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.050000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.460000000000008:-50.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/BODY_CENTER" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.960000000000008:-50.2 _clp_cinfo))
	(_clpMKSConvert 0.050000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.050000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.960000000000008:-50.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/BODY_CENTER" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-45.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-46.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-45.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-46.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-45.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-45.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-45.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-45.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-45.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-45.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-45.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-45.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-46.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-47.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-46.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-46.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-46.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-47.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-47.1 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-47.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-49.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-50.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-49.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-50.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-49.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-49.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-49.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-49.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-49.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-49.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-49.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-49.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-50.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-51.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-50.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-50.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-50.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-51.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-51.1 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-51.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.74000000000001:-53.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 21.74000000000001:-54.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 26.78999999999999:-53.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26.78999999999999:-54.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-53.6 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-53.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-53.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-53.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-53.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-53.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-53.3 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-53.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.74000000000001:-54.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-55.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-54.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-54.8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-54.8 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.03999999999999:-55.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.03999999999999:-55.1 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.74000000000001:-55.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.22999999999999:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -7.560000000000002:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.3599999999999852:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.289999999999992:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.53999999999999:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.44:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 14.64000000000001:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7.439999999999998:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.640000000000015:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.560000000000002:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.359999999999985:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.289999999999992:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7.22999999999999:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.98999999999998:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.93000000000001:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.46000000000001:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.46000000000001:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.98999999999998:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.93000000000001:-57.98 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.53999999999999:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.44:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.640000000000015:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2.439999999999998:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10.35999999999999:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10.98999999999998:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -11.93000000000001:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -15.98999999999998:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.93000000000001:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -17.56:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.35999999999999:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-42.43 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-42.43 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-44.6 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-46.19 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-49.4 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-50.98999999999999 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-54.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -21.16:-55.79 _clp_cinfo))
	(_clpMKSConvert 0.200000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.200000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-57.98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.53999999999999:-42.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-42.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-43.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-43.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-56.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-56.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-57.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-57.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-42.7 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/DFA_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "8.8 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 20.53999999999999:-42.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-42.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-43.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-43.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.84:-56.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-56.8 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21.16:-57.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-57.7 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.53999999999999:-42.7 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "8.8 MM")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 60 percent completed")
newline()

_clp_path  = (_clpPathStart (list (_clpAdjustPt -148.81:2.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.900000000000006:2.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.900000000000006:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.5:1.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.5:-2.700000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.5:-2.700000000000003 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.5:-69.90000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.140000000000015:-69.90000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 6.140000000000015:-69.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.099999999999994:-69.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2.099999999999994:-71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -148.81:-71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -148.83:-71 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -149.22:-70.79000000000001 _clp_cinfo) t
 	(_clpAdjustPt -148.8150648831552:-70.50512049728822 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -149.3:-70.51000000000001 _clp_cinfo) t
 	(_clpAdjustPt -148.8079660198094:-70.52084743423126 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -149.3:-67.73999999999999 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -150.31:-66.75 _clp_cinfo) nil
 	(_clpAdjustPt -150.3045143274687:-67.7546055260034 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -159.3:-66.75 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -159.65:-66.61 _clp_cinfo) t
 	(_clpAdjustPt -159.3057372083214:-66.25684302080356 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -160.11:-66.15000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -160.11:-2.349999999999994 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -159.65:-1.890000000000001 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -159.3:-1.75 _clp_cinfo) t
 	(_clpAdjustPt -159.3003828531607:-2.256542867098318 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -159.28:-1.75 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -150.3:-1.75 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -149.3:-0.75 _clp_cinfo) nil
 	(_clpAdjustPt -150.3006695159261:-0.7493304840738801 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -149.3:2.010000000000005 _clp_cinfo))
_clp_path = (_clpPathArcCenter _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -148.81:2.5 _clp_cinfo) t
 	(_clpAdjustPt -148.8018021350673:2.001802135067337 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/DESIGN_OUTLINE" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_498")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 100 percent completed")
newline()

axlFlushDisplay()
