; Allegro sub-drawing file
; Created by Allegro PCB Designer; version= 17.2-2016 P028

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
_clp_cinfo->createNCLayers = nil
_clp_group_info = make_clp_group_info()
_clp_cinfo->group_info = _clp_group_info
_clp_accuracy =2
_clpCheckAccuracy(_clp_accuracy _clp_cinfo->t_from_units	 	_clp_cinfo->t_to_units)
(putprop _clp_cinfo (list (_clpAdjustPt -1504:-2780 _clp_cinfo)	
	(_clpAdjustPt 11850:645 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(1159.0 7698.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

printf(" 10 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "12" )
_clp_dbid = (_clpDBCreateText "BOARD NAME: AMAC TEST & CONTROL BOARD ( ATCB )" 
	(_clpAdjustPt -1149:457 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 20 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText "1. THIS BOARD HAS 6 LAYERS.  STACKUP (TOP, GND, SIG1, SIG2, POWER, BOTTOM)" 
	(_clpAdjustPt -1334:-68 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 30 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText "2. BOARD THICKNESS: 0.062 INCHES OR GREATER" 
	(_clpAdjustPt -1319:-323 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 40 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText "4. COPPER THICKNESSES: 1/2 oz." 
	(_clpAdjustPt -1314:-873 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 50 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText "5. ALL HOLES ARE PLATED THROUGH UNLESS OTHERWISE NOTED" 
	(_clpAdjustPt -1319:-1138 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 60 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText "6. ALL TOLERANCES +/-3MILS" 
	(_clpAdjustPt -1324:-1413 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 70 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText "7. BOARD HAS A ( 0.50x0.420) RECTANGLAR CUTOUT." 
	(_clpAdjustPt -1339:-1738 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 80 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "10" )
_clp_dbid = (_clpDBCreateText " 3. FINISH: BONDABLE GOLD" 
	(_clpAdjustPt -1504:-608 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 90 percent completed")
newline()

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7127:-1733 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7383:-1733 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7841:-2191 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 7841:-2780 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

printf(" 100 percent completed")
newline()

axlFlushDisplay()
