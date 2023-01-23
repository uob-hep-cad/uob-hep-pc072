; Allegro sub-drawing file
; Created by Allegro PCB Designer (was Performance L); version= 16.6 P004

_clp_lay_drw = axlDesignType(nil)
_clp_sym = nil
_clp_pbuf  = nil
_clp_cinfo = make_clp_coord_info()
_clp_cinfo->f_rotation = 0.0
_clp_cinfo->l_origin = '(0.0 0.0)
_clp_text_orient = make_axlTextOrientation()
_clp_pin_text = make_axlPinText()
_clp_cinfo->t_from_units = "mils"
_clp_cinfo->t_to_units = car(axlDBGetDesignUnits())
_clp_cinfo->preserve_shape_net = nil
_clp_cinfo->preserve_via_net = nil
_clp_cinfo->snapToObject = nil
_clp_group_info = make_clp_group_info()
_clp_cinfo->group_info = _clp_group_info
_clp_accuracy =2
_clpCheckAccuracy(_clp_accuracy _clp_cinfo->t_from_units	 	_clp_cinfo->t_to_units)
(putprop _clp_cinfo (list (_clpAdjustPt -118.5:-123.3 _clp_cinfo)	
	(_clpAdjustPt 80:50 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(517.0 1723.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD51REC59" _clpAdjustPt(37.5:0 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -37.5:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("SMD51REC59" _clpAdjustPt(-37.5:0 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 37.5:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(DYN_CLEARANCE_TYPE "NO_VOID")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("0805" "PACKAGE") _clpAdjustPt('(0.0 0.0) _clp_cinfo)
		nil (180.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "1" )
_clp_dbid = (_clpDBCreateText "C*"
	(_clpAdjustPt -91:5 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "C*"
	(_clpAdjustPt 0:-10 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 75:-45 _clp_cinfo))
	(_clpMKSConvert 10.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -75:-45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -75:45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 75:45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 75:-45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 75:-45 _clp_cinfo))
	(_clpMKSConvert 10.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -75:-45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -75:45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 75:45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 10.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 75:-45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/ASSEMBLY_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 75:45 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 75:-45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -75:-45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -75:45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 75:45 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(PACKAGE_HEIGHT_MAX "25 MIL")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 10 percent completed")
newline()

printf(" 100 percent completed")
newline()

axlMsgPut(list("Text pasted without CLIP_DRAWING property." _clpAxlMsg.classWarn))
_clpDisplayMessage()
axlFlushDisplay()
