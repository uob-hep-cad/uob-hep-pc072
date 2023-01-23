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
_clp_cinfo->snapToObject = nil
_clp_cinfo->createNCLayers = nil
_clp_group_info = make_clp_group_info()
_clp_cinfo->group_info = _clp_group_info
_clp_accuracy =2
_clpCheckAccuracy(_clp_accuracy _clp_cinfo->t_from_units	 	_clp_cinfo->t_to_units)
(putprop _clp_cinfo (list (_clpAdjustPt -424.6:-535.85 _clp_cinfo)	
	(_clpAdjustPt 405.95:389.9 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(0.0 0.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

_clpInitPinText(_clp_pin_text "96" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:97.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:97.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "94" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:87.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:87.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "93" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:77.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:77.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "91" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:67.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:67.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "90" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:57.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:57.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "88" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:47.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:47.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "86" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:37.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:37.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "84" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:27.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:27.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "82" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:17.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:17.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "80" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:7.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:7.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "78" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-2.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-2.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "76" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-12.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-12.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "74" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-22.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-22.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "72" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-32.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-32.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "70" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-42.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-42.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "68" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-52.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-52.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "66" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-62.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-62.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "64" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-72.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-72.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "62" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-82.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-82.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "60" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-92.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-92.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "97" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:96 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:96 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "95" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:84.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:84.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "92" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:74 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:74 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "89" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:51 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:51 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "87" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:41.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:41.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "85" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:31.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:31.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "83" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_5X10" _clpAdjustPt(110:22 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:22 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "81" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:13 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:13 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "79" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:3 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:3 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "77" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-7 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-7 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "75" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-17 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-17 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "73" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-26.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-26.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "71" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-36 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-36 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "69" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-46 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-46 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "67" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-56.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-56.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "65" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-65.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-65.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "63" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(110:-75 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-75 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "61" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_5X10" _clpAdjustPt(110:-85 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 110:-85 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DCDCADJ_O" 
	(_clpAdjustPt 86:72 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DCDCIN_I" 
	(_clpAdjustPt 83.89:80.93000000000001 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:76 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:86 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:67 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "CLK_O" 
	(_clpAdjustPt 78.87000000000001:42.84 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "REGBG_O" 
	(_clpAdjustPt 81.89:57.31 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "PTAT_I" 
	(_clpAdjustPt 80:34 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "PGOOD_I" 
	(_clpAdjustPt 81.89:52.58 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 10 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:38 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:30 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:48 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "VDD" 
	(_clpAdjustPt 75:62 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GPO_O" 
	(_clpAdjustPt 79:25 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LDOY0EN_O" 
	(_clpAdjustPt 85:-4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "HRSTBY_O" 
	(_clpAdjustPt 83.89:5.34 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "SSSHY_I" 
	(_clpAdjustPt 82:16 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:1 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:11 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND/HGND" 
	(_clpAdjustPt 84.40000000000001:20.65 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "NTCYP_I" 
	(_clpAdjustPt 81.89:-32.46 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "NTCYN_I" 
	(_clpAdjustPt 81.89:-23.01 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "HREFY_I" 
	(_clpAdjustPt 81.89:-13.56 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-37 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-18 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-27 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-8 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "SHUNTY_O" 
	(_clpAdjustPt 83.5:-60 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-46 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LDOY1EN_O" 
	(_clpAdjustPt 85.89:-41.91 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LDOY2EN_O" 
	(_clpAdjustPt 85.89:-51.35 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "CALY_O" 
	(_clpAdjustPt 80:-70 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-65 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-56 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 75:-74 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "RESETB_I" 
	(_clpAdjustPt 83:-89 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "OF_O" 
	(_clpAdjustPt 77:-79 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND/FusePL" 
	(_clpAdjustPt 87.09999999999999:-84.09999999999999 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "59" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(75:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 75:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "58" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(65:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 65:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "101" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(40:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 40:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "99" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(50:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 50:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "98" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(56:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 56:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "102" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(33:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 33:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 20 percent completed")
newline()

_clpInitPinText(_clp_pin_text "100" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(43:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 43:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 32:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 41:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 51:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CUR10V_I_N" 
	(_clpAdjustPt 36.76:122.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CUR10V_I_P" 
	(_clpAdjustPt 46.21:122.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 30 percent completed")
newline()

_clp_sym = _clpIsLayout()
_clp_pbuf = nil
_clp_dbid = _clpDBCreateSymbolSkeleton('("LINEAR_DIMENSION" "DRAFTING") _clpAdjustPt('(75.0 -198.0) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText ".10" 
	(_clpAdjustPt 209.95:101.69 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "2.5" 
	(_clpAdjustPt 287.95:101.69 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 331.95:101.69 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 337.95:101.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 337.95:121.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 331.95:121.69 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 281.95:101.69 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 275.95:101.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 275.95:121.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 281.95:121.69 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 273.95:86.69 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 273.95:-98.40000000000001 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "22")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 273.95:-298 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 273.95:-198 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "2")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 85:-198 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 283.95:-198 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 60.8:-98.40000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 283.95:-98.40000000000001 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "21")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 278.95:-248 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 273.95:-198 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 268.95:-248 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 278.95:-248 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 268.95:-48.4 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 273.95:-98.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 278.95:-48.4 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 268.95:-48.4 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = nil
_clp_dbid = _clpDBCreateSymbolSkeleton('("LINEAR_DIMENSION" "DRAFTING") _clpAdjustPt('(46.0 -143.5) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText ".05" 
	(_clpAdjustPt 163.85:-373.49 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "1.1" 
	(_clpAdjustPt 241.85:-373.49 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 285.85:-373.49 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 291.85:-373.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 291.85:-353.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 285.85:-353.49 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 235.85:-373.49 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 229.85:-373.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 229.85:-353.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 235.85:-353.49 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 227.85:1.7 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 227.85:-98.3 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "22")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 227.85:-338.49 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 227.85:-143.5 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "2")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 56:-143.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 237.85:-143.5 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 60.75:-98.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 237.85:-98.3 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "21")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 232.85:-193.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 227.85:-143.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 222.85:-193.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 232.85:-193.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 222.85:-48.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 227.85:-98.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 232.85:-48.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 222.85:-48.3 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clpInitPinText(_clp_pin_text "57" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(46:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 46:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "VHIGH" 
	(_clpAdjustPt 31.07:-113.86 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVRET2_I" 
	(_clpAdjustPt 45.74:-118.36 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVREF2_O" 
	(_clpAdjustPt 50.47:-118.36 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GNDVFUSE2" 
	(_clpAdjustPt 41.85:-120.75 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "LAM_O/VFUSE1" 
	(_clpAdjustPt 37.25:-125.8 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "56" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_14X30" _clpAdjustPt(50:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 50:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "55" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(35:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 35:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "109" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(0:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "107" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(10:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 10:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 40 percent completed")
newline()

_clpInitPinText(_clp_pin_text "105" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(20:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 20:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "103" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(30:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 30:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "108" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(4:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 4:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "106" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(13:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 13:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "104" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(23.5:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 23.5:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 3:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 13:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 22:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DCDCEN_O" 
	(_clpAdjustPt 8:119 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "NTCPBP_I" 
	(_clpAdjustPt 17.87:118.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "NTCPBN_I" 
	(_clpAdjustPt 27.31:118.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CUR1V_I_P" 
	(_clpAdjustPt -1.03:120.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "121" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_220X150" _clpAdjustPt(0:0 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:0 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "54" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(18:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 18:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "52" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(8.5:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 8.5:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "50" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-2:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -2:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVOSC1_O" 
	(_clpAdjustPt 3:-119 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVOSC2_O" 
	(_clpAdjustPt 13:-119 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVOSC3_O" 
	(_clpAdjustPt 21:-119 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 26:-110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 7:-110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 17:-110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -2:-110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 50 percent completed")
newline()

_clpInitPinText(_clp_pin_text "43" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(28:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 28:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "53" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(25:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 25:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "51" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(15:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 15:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "49" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(5:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 5:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "47" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-5:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -5:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "113" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-30:197.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30:197.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "111" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-10:198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10:198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "114" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-29.5:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -29.5:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "110" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-6:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -6:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "112" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-16:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -16:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -15:110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -6:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "VDCDC2" 
	(_clpAdjustPt -37.83:114.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CUR1V_I_N" 
	(_clpAdjustPt -10.48:120.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -25:110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt -20:112 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -34:110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt -30:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "48" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-13:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -13:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "46" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-31.5:-143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -31.5:-143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVOSC0_O" 
	(_clpAdjustPt -7:-119 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CMD_O_P" 
	(_clpAdjustPt -24.93:-117.4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CMD_O_N" 
	(_clpAdjustPt -19.94:-117.4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 60 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CMD_I_P" 
	(_clpAdjustPt -37.27:-117.4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -14:-110 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -31:-111 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "45" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-15:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -15:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "44" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-25:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -25:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "42" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-35:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -35:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "117" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-60:197.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -60:197.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "119" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-70:197.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -70:197.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "115" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-40:197.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -40:197.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "118" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-54:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -54:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "120" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-66.5:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -66.5:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "116" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-42.5:143.5 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -42.5:143.5 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "VDCDC1" 
	(_clpAdjustPt -47.28:114.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -53:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -43:106 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_sym = _clpIsLayout()
_clp_pbuf = nil
_clp_dbid = _clpDBCreateSymbolSkeleton('("LINEAR_DIMENSION" "DRAFTING") _clpAdjustPt('(65.05 82.95) _clp_cinfo)
		nil (90.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText ".00" 
	(_clpAdjustPt -64:8.25 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "0.1" 
	(_clpAdjustPt 14:8.25 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 58:8.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 64:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 64:28.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 58:28.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 8:8.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2:8.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 2:28.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8:28.25 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0:187.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:87.59999999999999 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "22")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0:43.25 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:82.95 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "2")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 55.05:82.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10:82.95 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 55.05:87.59999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10:87.59999999999999 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "21")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5:32.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:82.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5:32.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5:32.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5:137.6 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0:87.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5:137.6 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5:137.6 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
printf(" 70 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVREF1_O" 
	(_clpAdjustPt -53.19:-119.36 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "HVRET1_I" 
	(_clpAdjustPt -48.46:-119.36 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "CMD_I_N" 
	(_clpAdjustPt -42.25:-117.4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 80 percent completed")
newline()

_clpInitPinText(_clp_pin_text "41" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-45:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -45:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "40" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-55:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -55:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "39" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-65:-198 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -65:-198 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:100 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:100 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "4" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:74 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:74 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:90.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:90.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "RO_PG_I" 
	(_clpAdjustPt -83:77 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "VDD" 
	(_clpAdjustPt -76:72 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -81:87 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -77:82 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:67 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "ID<0>" 
	(_clpAdjustPt -79.12000000000001:44.07 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "ID<1>" 
	(_clpAdjustPt -79.12000000000001:48.8 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "ID<2>" 
	(_clpAdjustPt -79.12000000000001:53.52 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "ID<3>" 
	(_clpAdjustPt -79.12000000000001:58.24 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "ID<4>/LAM" 
	(_clpAdjustPt -86.55:62.6 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "AMBG900" 
	(_clpAdjustPt -82:35 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:39 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:30 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "SSSHX_I" 
	(_clpAdjustPt -82:-4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GP_I" 
	(_clpAdjustPt -78:25 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "HRSTBX_O" 
	(_clpAdjustPt -85:7 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LDOX0EN" 
	(_clpAdjustPt -82:16 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -75:20 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:11 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -75:1 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "HREFX_I" 
	(_clpAdjustPt -82:-13 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "NTCXN_I" 
	(_clpAdjustPt -83:-32 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "NTCXP_I" 
	(_clpAdjustPt -83:-22 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -75:-37 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -75:-27 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -75:-8 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "SHUNTX_O" 
	(_clpAdjustPt -78:-60 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "CALX_O" 
	(_clpAdjustPt -81:-70 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LDOX2EN_O" 
	(_clpAdjustPt -79:-51 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LDOX1EN_O" 
	(_clpAdjustPt -79:-42 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:-56 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:-75 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -75:-65 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:-46 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "OF_I" 
	(_clpAdjustPt -77:-79 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "CAL_I" 
	(_clpAdjustPt -79:-89 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -76:-84 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/ASSEMBLY_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "1" 
	(_clpAdjustPt -140:120 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:37 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:37 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "17" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:8 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:8 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:18 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:18 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "13" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:27.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:27.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "19" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-1 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-1 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 90 percent completed")
newline()

_clpInitPinText(_clp_pin_text "23" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-21 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-21 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "21" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-11 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-11 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "27" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-40.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-40.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "25" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-30.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-30.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "31" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-59.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-59.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "29" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-49.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-49.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "33" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-69 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-69 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "37" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-88.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-88.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "35" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X4" _clpAdjustPt(-110:-78.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -110:-78.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clpIsLayout()
_clp_pbuf = nil
_clp_dbid = _clpDBCreateSymbolSkeleton('("LINEAR_DIMENSION" "DRAFTING") _clpAdjustPt('(40.0 198.0) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText ".01" 
	(_clpAdjustPt -177.55:261.3 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "0.3" 
	(_clpAdjustPt -99.55:261.3 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -55.55:261.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -49.55:261.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -49.55:281.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.55:281.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -105.55:261.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.55:261.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.55:281.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -105.55:281.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 150:271.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 50:271.3 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "22")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -34.55:271.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 40:271.3 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "2")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 50:208 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 50:281.3 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "21")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 40:208 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 40:281.3 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -10:266.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 40:271.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10:276.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10:266.3 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 100:276.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 50:271.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 100:266.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 100:276.3 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:67.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:67.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "6" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:77.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:77.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "5" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:87.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:87.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:97.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:97.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "10" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:37.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:37.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "9" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:47.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:47.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "8" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:57.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:57.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "18" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-2.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-2.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "16" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:7.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:7.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "14" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:17.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:17.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "12" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:27.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:27.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "24" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-32.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-32.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "22" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-22.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-22.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "20" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-12.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-12.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "32" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-72.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-72.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "30" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-62.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-62.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "28" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-52.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-52.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "26" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-42.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-42.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "38" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-102.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-102.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "36" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-92.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-92.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "34" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-82.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-82.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clpIsLayout()
_clp_pbuf = nil
_clp_dbid = _clpDBCreateSymbolSkeleton('("LINEAR_DIMENSION" "DRAFTING") _clpAdjustPt('(-110.0 -88.5) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText ".05" 
	(_clpAdjustPt -398.35:-254.5 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "1.1" 
	(_clpAdjustPt -320.35:-254.5 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -276.35:-254.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -270.35:-254.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -270.35:-234.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -276.35:-234.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -326.35:-254.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -332.35:-254.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -332.35:-234.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -326.35:-234.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 35.05:-244.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.95:-244.5 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "22")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -255.35:-244.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -110:-244.5 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "2")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64.95:-97.34999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.95:-254.5 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "21")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -110:-98.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -110:-254.5 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -160:-249.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -110:-244.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -160:-239.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -160:-249.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.95:-239.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.95:-244.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.95:-249.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.95:-239.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_sym = _clpIsLayout()
_clp_pbuf = nil
_clp_dbid = _clpDBCreateSymbolSkeleton('("LINEAR_DIMENSION" "DRAFTING") _clpAdjustPt('(-167.5 -102.5) _clp_cinfo)
		nil (0.000 + _clp_cinfo->f_rotation) _clp_pbuf)


if( car(_clp_dbid) then
	_clp_dbid = caadr(_clp_dbid)
else
	_clp_dbid = -1)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_sym = _clp_dbid
(when (nequal _clp_sym  -1)
 t )
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText ".10" 
	(_clpAdjustPt -398.35:-302.95 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "2.6" 
	(_clpAdjustPt -320.35:-302.95 _clp_cinfo)  _clp_text_orient 
	"BOARD GEOMETRY/DIMENSION" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -276.35:-302.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -270.35:-302.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -270.35:-282.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -276.35:-282.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -326.35:-302.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -332.35:-302.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -332.35:-282.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -326.35:-282.95 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 35.15:-292.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.84999999999999:-292.95 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "22")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -255.35:-292.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:-292.95 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "2")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64.84999999999999:-97.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.84999999999999:-302.95 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "21")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167.5:-112.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:-302.95 _clp_cinfo))
_clpPl = list(
	'(DIMENSION_INTELLIGENCE "1")
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/DIMENSION" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -217.5:-297.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:-292.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -217.5:-287.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -217.5:-297.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -14.85:-287.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.84999999999999:-292.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85:-297.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.85:-287.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "BOARD GEOMETRY/DIMENSION" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpDBCreateSymbolAutosilk _clp_sym)
_clp_sym = nil
_clp_path  = (_clpPathStart (list (_clpAdjustPt -167:-82 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.5:-68.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-78 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -169.5:-92.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64.5:-86.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:-102.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -169:-42 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64:-31 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:-40.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -168:-52 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167.5:-62 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.5:-49.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-58.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -169:-72.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -66:-2.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:-12.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -168.5:-21.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.5:-12.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -66:-21.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:-32 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:35.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -169:27.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167:17.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -63.5:25.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -165.5:8 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.5:16.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167.5:-2 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.5:7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167.5:58 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.5:54.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:50 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -168:47.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167:38 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -64.5:45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64.5:78.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -169.5:98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -167.5:88 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65:73 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:64.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -167.5:78 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64:60 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -169:68 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64.5:-82 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:-88.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-73 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111:-79 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-63.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:-69.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-54 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:-60 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:-45 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:-50 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -64.5:-25.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:-30.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-16.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -112.5:-21.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-6.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111:-11.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:2 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:-1.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:12 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -112:8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:21.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111:18 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:30.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111:27.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:40 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111:37 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -63.5:82.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -112:92.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:68.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111.5:75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65:87 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -111:99.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:-35.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -110.5:-40.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -45.3:-196.8 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -43.05:-98.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -54.6:-197.9 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -49.2:-98.40000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.25:-197.35 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -54.25:-98.2 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -44.5:98.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -54:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -39.5:100 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61:194 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -50:99.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -71:193 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -53.5:99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -67:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -35:98.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -42:144.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.05:-197.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -21:-98.75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -25.5:-197.15 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -25.85:-98.59999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -35.2:-197.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -38.55:-98.59999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -15.5:-98.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13:-144.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -33:-98 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -31.5:-144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4.75:-198.65 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.300000000000001:-97.65000000000001 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -30:98.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -40.5:194.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -25.5:98 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -29.5:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -12:99.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -10:192 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -7:99.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6:144.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16:99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16:143.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -20.5:99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -30.5:193.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.9:-196.95 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.05:-97.45 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15:-196.95 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.9:-98.05 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.95:-198.25 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 1.2:-97.84999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -4:-98 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -2:-144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 6:-99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.5:-144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.7:-143.2 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 25.1:-98.59999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 17.65:-142.85 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.4:-97.84999999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 16.5:97.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 20.5:192.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.5:193 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.5:98.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 7:99.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10:192.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 29.5:193 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 26:98.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 21.5:99.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 12:99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 2:99.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 45.5:-98.2 _clp_cinfo))
	(_clpMKSConvert 3.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 3.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.59999999999999:-198.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 37.1:-98.55 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 46.2:-197.7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 29.75:-98.2 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 35:-198.1 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 50.2:-98.59999999999999 _clp_cinfo))
	(_clpMKSConvert 3.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 3.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 74.8:-197.9 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 40.8:-98.2 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 46.4:-144.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 49.5:193 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 45:98 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 50:98.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 56:144.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 39.5:193 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 35.5:98.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 40:99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43:144 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 30.5:99 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 32.5:143.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-78.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 166.5:-82.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-87.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:-92.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-82.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:-85 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-40 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 166.5:-42.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:-49.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 168:-53 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:-59 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:-63 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:-68 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:-72.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-73.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:-75 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-63.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109.5:-65.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-54 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:-56.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:-44.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:-46.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:-11.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 166.5:-12.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-20.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 168:-22.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:-31 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:-32.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:-35 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109:-36 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 66:-26 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:-26.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-16.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109.5:-17 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:-7 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109:-7 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 66:26.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 166.5:27.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:17 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 165:17.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:8 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:8 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:-1.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167:-2.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:3 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109:2.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:12 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109.5:12.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:21.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109:22 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:63 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 169:78 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:59 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 166.5:68 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:54.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 168.5:58 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:45 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:47.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:35.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167.5:37.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:31 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109.5:31.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:40.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109.5:41 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:50 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:51 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:82.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 166.5:97.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:73.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 167:87.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/SIGNAL_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65.5:68.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 109.5:74 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 65:78 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:84.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 64.5:87.5 _clp_cinfo))
	(_clpMKSConvert 2.500000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 2.500000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 110:95.5 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "BOARD GEOMETRY/GND_BONDS" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -188.65:213.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -188.65:-213.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 187.45:-213.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 187.45:213.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -188.65:213.5 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "PACKAGE GEOMETRY/ASSEMBLY_TOP" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 187.45:-213.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 187.45:213.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -188.65:213.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -188.65:-213.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 187.45:-213.9 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -180:110 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -120:170 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -120:110 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -180:110 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -44.77:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -44.77:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.03:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.03:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -44.77:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-84.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-84.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-84.58 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-89.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-89.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-89.3 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -55.84:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -51.12:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.45999999999999:-98.95999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.45999999999999:-95.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.72:-95.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.72:-98.95999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.45999999999999:-98.95999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-79.84999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-79.84999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-79.84999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.16:-105.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -70.08:-100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -70.08:100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.16:105.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.16:105.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 70.08:100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 70.08:-100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.16:-105.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.16:-105.51 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.16:-105.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -70.08:-100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -70.08:100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.16:105.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.16:105.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 70.08:100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 70.08:-100.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.16:-105.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.16:-105.51 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-79.84999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-79.84999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-79.84999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.45999999999999:-98.95999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.45999999999999:-95.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.72:-95.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.72:-98.95999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.45999999999999:-98.95999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -51.12:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -55.84:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-89.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-89.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-89.3 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-84.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-84.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-84.58 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -44.77:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -44.77:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.03:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.03:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -44.77:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-42.06 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-42.06 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-42.06 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-51.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-51.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-51.51 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-46.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-46.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-46.78 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-65.68000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-65.68000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-65.68000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-75.13 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-75.13 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-75.13 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-56.23 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-56.23 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-56.23 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-70.40000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-70.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-70.40000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-60.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-60.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-60.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-60.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-60.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-60.95 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-70.40000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-70.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-70.40000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-56.23 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-56.23 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-56.23 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-75.13 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-75.13 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-75.13 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-65.68000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-65.68000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-65.68000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-46.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-46.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-46.78 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-51.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-51.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-51.51 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-42.06 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-42.06 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-42.06 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-32.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-32.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-32.61 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-8.99 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-8.99 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-8.99 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-27.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-27.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-27.88 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-18.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-18.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-18.43 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-37.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-37.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-37.33 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-13.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-13.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-13.71 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-23.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-23.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-23.16 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-23.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-23.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-23.16 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-13.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-13.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-13.71 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-37.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-37.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-37.33 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-18.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-18.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-18.43 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-27.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-27.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-27.88 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-8.99 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-8.99 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-8.99 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-32.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-32.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-32.61 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:5.19 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:5.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:5.19 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:14.64 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:14.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:14.64 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:0.46 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:0.46 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:0.46 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:9.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:9.91 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:9.91 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:19.36 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:19.36 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:19.36 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:24.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:24.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:24.08 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-4.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-4.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-4.26 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:-4.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:-4.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:-4.26 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:24.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:24.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:24.08 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:19.36 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:19.36 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:19.36 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:9.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:9.91 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:9.91 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:0.46 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:0.46 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:0.46 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:14.64 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:14.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:14.64 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:5.19 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:5.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:5.19 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:28.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:28.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:28.81 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:38.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:38.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:38.26 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:42.98 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:42.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:42.98 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:47.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:47.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:47.71 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:52.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:52.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:52.43 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:57.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:57.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:57.16 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:61.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:61.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:61.88 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:33.53 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:33.53 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:33.53 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:33.53 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:33.53 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:33.53 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:61.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:61.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:61.88 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:57.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:57.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:57.16 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:52.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:52.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:52.43 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:47.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:47.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:47.71 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:42.98 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:42.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:42.98 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:38.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:38.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:38.26 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:28.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:28.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:28.81 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:76.05 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:76.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:76.05 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:66.59999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:66.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:66.59999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:80.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:80.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:80.78 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:71.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:71.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:71.33 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -55.84:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:85.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:85.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:85.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -46.39:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -46.39:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -42.65:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -42.65:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -46.39:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -51.12:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:95.18000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.5:98.92 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.76:98.92 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.76:95.18000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.5:95.18000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -65.5:95.18000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.5:98.92 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.76:98.92 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.76:95.18000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -65.5:95.18000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -51.12:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -47.37:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -51.12:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -46.39:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -46.39:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -42.65:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -42.65:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -46.39:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:85.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:85.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:85.5 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -55.84:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -52.1:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -55.84:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:71.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:71.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:71.33 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:80.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:80.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:80.78 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:66.59999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:66.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:66.59999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -68.76000000000001:76.05 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -61.28:76.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -68.76000000000001:76.05 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -40.13:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -40.13:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.39:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.39:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -40.13:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -27.45:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.45:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.71:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.71:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.45:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -22.81:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.81:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.07:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.07:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.81:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.810000000000001:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.810000000000001:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.07:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.07:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.810000000000001:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -33.79:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.79:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -30.05:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -30.05:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.79:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.47:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.47:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.73:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.73:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.47:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -16.47:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.47:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.73:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -12.73:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -16.47:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -33.79:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.79:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -30.05:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -30.05:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.79:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -9.810000000000001:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.810000000000001:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.07:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -6.07:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.810000000000001:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -22.81:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.81:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.07:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.07:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.81:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -27.45:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.45:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.71:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.71:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.45:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -40.13:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -40.13:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.39:-96.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.39:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -40.13:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -32.22:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -32.22:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -28.48:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -28.48:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -32.22:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -22.77:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.77:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.03:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.03:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.77:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.04:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.04:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.3:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.3:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.04:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -36.94:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.94:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.2:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.2:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.94:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.6:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.6:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.86:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.86:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.6:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -27.49:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.49:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.75:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.75:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.49:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.32:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.32:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.58:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.58:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.32:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -41.67:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.67:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -37.93:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -37.93:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.67:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -41.67:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.67:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -37.93:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -37.93:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -41.67:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -13.32:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.32:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.58:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -9.58:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -13.32:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -27.49:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.49:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.75:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -23.75:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -27.49:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -8.6:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.6:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.86:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -4.86:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -8.6:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -36.94:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.94:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.2:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -33.2:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -36.94:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -18.04:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.04:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.3:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -14.3:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -18.04:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -22.77:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.77:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.03:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -19.03:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -22.77:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -32.22:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -32.22:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -28.48:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -28.48:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -32.22:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.36:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.36:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.38:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.38:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.36:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.09:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.09:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.83:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.83:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.09:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.54:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.54:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.28:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.28:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.54:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.09:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.09:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.35:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.35:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.09:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.81:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.81:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.55:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.55:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.81:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.36:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.36:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.36:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.26:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.26:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.26:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 23.26:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.26:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.26:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 4.36:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.36:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 8.1:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.36:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 13.81:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.81:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.55:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 17.55:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 13.81:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -5.09:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.09:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.35:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -1.35:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -5.09:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 18.54:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.54:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.28:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 22.28:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.54:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 9.09:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.09:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.83:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 12.83:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.09:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -0.36:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.36:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.38:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 3.38:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.36:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.48:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.48:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 28.22:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 28.22:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.48:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.58:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.58:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.32:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.32:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.58:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.75:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.75:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.49:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.49:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.75:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.85:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.85:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.59:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.59:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.85:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.3:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.3:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.04:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.04:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.3:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.87:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.87:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.13:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.13:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.87:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.03:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.77:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.77:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 15.03:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.77:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 18.77:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 15.03:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -3.87:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.87:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.13:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -0.13:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -3.87:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 10.3:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.3:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.04:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 14.04:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 10.3:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 0.85:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.85:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.59:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 4.59:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 0.85:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 19.75:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.75:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.49:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 23.49:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 19.75:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 5.58:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.58:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.32:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 9.32:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 5.58:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 24.48:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.48:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 28.22:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 28.22:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 24.48:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-89.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-89.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-89.3 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 34.64:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 34.64:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.38:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.38:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 34.64:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-79.84999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-79.84999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-79.84999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 39.37:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 39.37:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.11:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.11:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 39.37:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-84.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-84.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-84.58 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 48.82:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.82:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 52.56:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 52.56:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.82:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 44.09:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 44.09:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.83:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.83:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 44.09:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.98:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.98:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 31.73:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 31.73:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.98:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 27.98:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.98:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 31.73:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 31.73:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 27.98:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 44.09:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 44.09:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.83:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.83:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 44.09:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 48.82:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.82:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 52.56:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 52.56:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.82:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-84.58 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-80.84 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-84.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-84.58 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 39.37:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 39.37:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.11:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.11:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 39.37:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-79.84999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-76.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-79.84999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-79.84999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 34.64:-102.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 34.64:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.38:-94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.38:-102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 34.64:-102.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-89.3 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-85.56 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-89.3 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-89.3 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-42.06 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-42.06 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-42.06 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-51.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-51.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-51.51 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-75.13 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-75.13 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-75.13 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-46.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-46.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-46.78 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-56.23 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-56.23 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-56.23 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-65.68000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-65.68000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-65.68000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-70.40000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-70.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-70.40000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-60.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-60.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-60.95 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-60.95 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-57.21 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-60.95 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-60.95 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-70.40000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-66.66 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-70.40000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-70.40000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-65.68000000000001 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-61.94 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-65.68000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-65.68000000000001 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-56.23 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-52.49 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-56.23 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-56.23 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-46.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-43.04 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-46.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-46.78 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-75.13 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-71.39 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-75.13 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-75.13 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-51.51 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-47.77 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-51.51 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-51.51 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-42.06 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-38.32 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-42.06 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-42.06 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-23.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-23.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-23.16 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-8.99 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-8.99 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-8.99 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-27.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-27.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-27.88 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-18.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-18.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-18.43 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-37.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-37.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-37.33 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-13.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-13.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-13.71 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-32.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-32.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-32.61 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-32.61 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-28.87 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-32.61 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-32.61 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-13.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-9.970000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-13.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-13.71 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-37.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-33.59 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-37.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-37.33 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-18.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-14.69 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-18.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-18.43 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-27.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-24.14 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-27.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-27.88 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-8.99 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-5.25 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-8.99 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-8.99 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-23.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-19.42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-23.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-23.16 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:24.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:24.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:24.08 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:5.19 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:5.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:5.19 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-4.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-4.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-4.26 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:19.36 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:19.36 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:19.36 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:9.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:9.91 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:9.91 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:0.46 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:0.46 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:0.46 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:14.64 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:14.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:14.64 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:14.64 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:18.38 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:14.64 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:14.64 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:0.46 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:4.2 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:0.46 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:0.46 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:9.91 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:13.65 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:9.91 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:9.91 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:19.36 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:23.1 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:19.36 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:19.36 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:-4.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-0.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:-4.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:-4.26 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:5.19 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:8.93 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:5.19 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:5.19 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:24.08 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:27.83 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:24.08 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:24.08 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:42.98 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:42.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:42.98 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:61.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:61.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:61.88 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:47.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:47.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:47.71 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:28.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:28.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:28.81 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:38.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:38.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:38.26 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:52.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:52.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:52.43 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:57.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:57.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:57.16 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:33.53 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:33.53 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:33.53 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:33.53 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:37.27 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:33.53 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:33.53 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:57.16 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:60.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:57.16 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:57.16 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:52.43 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:56.17 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:52.43 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:52.43 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:38.26 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:42 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:38.26 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:38.26 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:28.81 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:32.55 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:28.81 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:28.81 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:47.71 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:51.45 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:47.71 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:47.71 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:61.88 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:65.62000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:61.88 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:61.88 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:42.98 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:46.72 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:42.98 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:42.98 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:71.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:71.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:71.33 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:66.59999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:66.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:66.59999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 38.65:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.65:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 42.39:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 42.39:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.65:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 48.1:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.1:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 51.84:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 51.84:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.1:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:85.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:85.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:85.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:76.05 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:76.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:76.05 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 33.92:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 33.92:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 37.66:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 37.66:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 33.92:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 43.37:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.37:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.11:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.11:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.37:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:80.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:80.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:80.78 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 29.2:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 29.2:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 32.94:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 32.94:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 29.2:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 29.2:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 29.2:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 32.94:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 32.94:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 29.2:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:80.78 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:84.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:80.78 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:80.78 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 43.37:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.37:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.11:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 47.11:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 43.37:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 33.92:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 33.92:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 37.66:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 37.66:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 33.92:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:76.05 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:79.79000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:76.05 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:76.05 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:85.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:89.24 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:85.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:85.5 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 48.1:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.1:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 51.84:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 51.84:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 48.1:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 38.65:94.74 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.65:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 42.39:102.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 42.39:94.74 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 38.65:94.74 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:66.59999999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:70.34 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:66.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:66.59999999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.27:71.33 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:75.06999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 68.76000000000001:71.33 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.27:71.33 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.76:-98.92 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.76:-95.18000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.5:-95.18000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.5:-98.92 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.76:-98.92 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.76:-98.92 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.76:-95.18000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.5:-95.18000000000001 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.5:-98.92 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.76:-98.92 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.71:95.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.71:98.95999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.45999999999999:98.95999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.45999999999999:95.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.71:95.22 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PAD_RING" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 61.71:95.22 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.71:98.95999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.45999999999999:98.95999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 65.45999999999999:95.22 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 61.71:95.22 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/0" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_2")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -424.6:389.9 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -424.6:-535.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 405.95:-535.85 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 405.95:389.9 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -424.6:389.9 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "BOARD GEOMETRY/DIMENSION" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 100 percent completed")
newline()

axlFlushDisplay()
