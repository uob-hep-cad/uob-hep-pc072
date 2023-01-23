; Allegro sub-drawing file
; Created by Allegro PCB Designer; version= 17.4-2019 S007

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
(putprop _clp_cinfo (list (_clpAdjustPt -195:-212 _clp_cinfo)	
	(_clpAdjustPt 195:212 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(0.0 0.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

_clpInitPinText(_clp_pin_text "93" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:115 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:115 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:105 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:105 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:95 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:95 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:75 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:75 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:85 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:85 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:55 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:55 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:65 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:65 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:45 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:45 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:35 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:35 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:25 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:25 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:15 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:15 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-15 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-15 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-25 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-25 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-55 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-55 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-35 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-35 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-45 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-45 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-65 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-65 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-75 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 167.5:-75 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-95 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 167.5:-95 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-85 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 167.5:-85 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(167.5:-105 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 167.5:-105 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(80:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 80:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(70:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 70:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 10 percent completed")
newline()

_clpInitPinText(_clp_pin_text "95" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(75:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 75:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(85:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 85:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(_clpAdjustPt 79.84:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 69.84:110.59 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 65.44:110.46 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "91" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:80 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:80 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:70 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:70 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt 92.5:84.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 90.84:74.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "HGND" 
	(_clpAdjustPt 92.5:69 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt 92.84:79.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "VDD" 
	(_clpAdjustPt 91.55:64.94 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "83" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:40 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:40 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.84:36.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "BTC_OUT_padP" 
	(_clpAdjustPt 107.46:30.32 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GP0_o_pad" 
	(_clpAdjustPt 101.84:41.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "SSSH_o_pad" 
	(_clpAdjustPt 103.84:45.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "RSTB_i_pad" 
	(_clpAdjustPt 103.84:50.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LowPower_i_pad" 
	(_clpAdjustPt 110.84:55.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GP0_i_pad" 
	(_clpAdjustPt 101.84:60.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "80" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:20 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:20 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "R3L1_OUT_padP" 
	(_clpAdjustPt 109.46:-5.33 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.8:19.15 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "BTC_OUT_padN" 
	(_clpAdjustPt 107.46:25.34 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LCB_OUT_padP" 
	(_clpAdjustPt 113.46:13 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 20 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "LCB_OUT_padN" 
	(_clpAdjustPt 113.46:8.01 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.98999999999999:1.79 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" t _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "PAD" 
	(_clpAdjustPt 91.42:12.91 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "77" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:0 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:-30 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:-30 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:-20 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:-20 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn1_padN" 
	(_clpAdjustPt 107.06:-39 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn0_padP" 
	(_clpAdjustPt 108.06:-26.4 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn0_padN" 
	(_clpAdjustPt 108.06:-21.67 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "R3L1_OUT_padN" 
	(_clpAdjustPt 109.46:-10.31 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.92:-15.51 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.8:-32.81 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "68" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:-50 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt 115.5:-50 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn3_padN" 
	(_clpAdjustPt 107.06:-73.64 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn1_padP" 
	(_clpAdjustPt 107.06:-43.72 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn2_padP" 
	(_clpAdjustPt 107.06:-61.04 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn2_padN" 
	(_clpAdjustPt 107.06:-56.32 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.67:-50.36 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.48:-67.34 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "65" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:-70 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 115.5:-70 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(115.5:-90 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 115.5:-90 _clp_cinfo) 180.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.84:-99.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "CAL_i_pad" 
	(_clpAdjustPt 101.84:-84.17 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn3_padP" 
	(_clpAdjustPt 107.06:-78.37 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 91.61:-89.42 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 30 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "VDD" 
	(_clpAdjustPt 66.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "59" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(75:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 75:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(40:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 40:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(50:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 50:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "100" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(60:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 60:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(45:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 45:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(35:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 35:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "96" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(65:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 65:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt 41.84:112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 36.84:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt 32.84:112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 46.84:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt 50.84:112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt 56.5:112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 60.84:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "RCLK_padN" 
	(_clpAdjustPt 29.84:-123.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 35.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 52.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 57.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 61.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "58" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(65:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 65:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "57" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(55:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 55:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(35:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 35:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn4_padP" 
	(_clpAdjustPt 42.84:-128.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn4_padN" 
	(_clpAdjustPt 46.84:-128.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 40 percent completed")
newline()

_clpInitPinText(_clp_pin_text "60" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(60:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 60:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "56" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(50:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 50:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(40:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 40:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(0:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(10:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 10:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(30:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 30:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "105" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(20:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 20:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "Data1_padP" 
	(_clpAdjustPt 17.84:122.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "Data1_padN" 
	(_clpAdjustPt 12.84:122.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "BTC_IN_padN" 
	(_clpAdjustPt 0.84:124.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "BTC_IN_padP" 
	(_clpAdjustPt 4.84:124.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "RCLK_padP" 
	(_clpAdjustPt 24.84:-123.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 17.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -3.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt 0.84:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "48" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(5:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 5:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(25:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 25:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "LCB_HYB_padN" 
	(_clpAdjustPt 11.84:-128.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "LCB_HYB_padP" 
	(_clpAdjustPt 6.84:-128.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "52" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(20:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 20:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(10:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 10:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(30:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 30:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(0:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-20:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -20:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-30:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 50 percent completed")
newline()

_clpInitPinText(_clp_pin_text "108" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-10:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "FusePP_i_pad" 
	(_clpAdjustPt -31.16:126.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "VDDH_FUSE" 
	(_clpAdjustPt -38.16:121.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "R3L1_IN_padN" 
	(_clpAdjustPt -24.16:126.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "R3L1_IN_padP" 
	(_clpAdjustPt -20.16:126.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "LCB_IN_padN" 
	(_clpAdjustPt -12.16:124.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "LCB_IN_padP" 
	(_clpAdjustPt -8.16:124.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -21.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -38.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "BC_HYB_padP" 
	(_clpAdjustPt -32.16:-126.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "BC_HYB_padN" 
	(_clpAdjustPt -28.16:-126.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "47" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-5:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -5:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-25:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -25:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "41" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-35:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -35:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "PRLP_HYB_padN" 
	(_clpAdjustPt -10.16:-130.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "PRLP_HYB_padP" 
	(_clpAdjustPt -15.16:-130.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "45" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-20:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -20:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-10:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -10:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "43" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-30:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -30:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-40:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -40:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-60:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -60:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-70:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -70:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-50:185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -50:185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-65:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -65:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 60 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt -49.16:112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "VDDH_FUSE" 
	(_clpAdjustPt -43.16:121.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -63.16:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -67.16:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -59.16:110.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 90.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt -54.5:112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "VDD" 
	(_clpAdjustPt -70.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -65.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -61.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -56.16:-112.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "37" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-65:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -65:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-55:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -55:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn5_padP" 
	(_clpAdjustPt -49.16:-128.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 270.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn5_padN" 
	(_clpAdjustPt -44.16:-128.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "35" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-70:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -70:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-40:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -40:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-50:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -50:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-60:-185 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -60:-185 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-80:185 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -80:185 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-85:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -85:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(270.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-75:133 _clp_cinfo) 	
	_clp_pin_text (270.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -75:133 _clp_cinfo) 270.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -92.16:94.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DVDD" 
	(_clpAdjustPt -93.16:80.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.05:71.09999999999999 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.05:85.25 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 70 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "VDD" 
	(_clpAdjustPt -91.16:65.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.16:19.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.16:1.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.16:-15.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.16:-32.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -90.16:-50.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -90.16:-67.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -91.16:-97.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -90.16:-89.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GND" 
	(_clpAdjustPt -90.16:-84.5 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "119" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_220X175" _clpAdjustPt(0:0 _clp_cinfo) 	
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

_clpInitPinText(_clp_pin_text "36" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(90.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-75:-133 _clp_cinfo) 	
	_clp_pin_text (90.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -75:-133 _clp_cinfo) 90.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:89 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:89 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:70 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:70 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "BG_o_pad" 
	(_clpAdjustPt -100.16:75.83 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "padID<3>" 
	(_clpAdjustPt -99.43000000000001:47.56 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "padID<2>" 
	(_clpAdjustPt -99.43000000000001:52.28 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "padID<1>" 
	(_clpAdjustPt -99.43000000000001:57 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "padID<0>" 
	(_clpAdjustPt -99.43000000000001:61.73 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "ABC_RSTb_o_pad" 
	(_clpAdjustPt -111.16:33.83 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "OutEncode_i_pad" 
	(_clpAdjustPt -112.16:38.83 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "RSTXOR_i_pad" 
	(_clpAdjustPt -107.16:42.83 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

printf(" 80 percent completed")
newline()

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GP1_i_pad" 
	(_clpAdjustPt -101.43:28.66 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "15" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:20 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:20 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "GP1_o_pad" 
	(_clpAdjustPt -101.43:23.93 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataCLK_padP" 
	(_clpAdjustPt -107.46:13 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataCLK_padN" 
	(_clpAdjustPt -107.47:8.01 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn10_padP" 
	(_clpAdjustPt -108.07:-4.41 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "21" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:-20 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:-20 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:-30 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:-30 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:0 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn9_padN" 
	(_clpAdjustPt -107.06:-26.46 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn9_padP" 
	(_clpAdjustPt -107.07:-21.74 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn10_padN" 
	(_clpAdjustPt -108.06:-9.140000000000001 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn8_padP" 
	(_clpAdjustPt -106.07:-39.06 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "27" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:-50 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:-50 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn8_padN" 
	(_clpAdjustPt -106.06:-43.78 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn6_padP" 
	(_clpAdjustPt -106.07:-73.7 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn7_padP" 
	(_clpAdjustPt -106.07:-56.38 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn7_padN" 
	(_clpAdjustPt -106.06:-61.1 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "33" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:-80 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:-80 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:-90 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:-90 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-115.5:-70 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -115.5:-70 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

(_clpInitTextOrientation _clp_text_orient "CENTER" nil _clp_cinfo->f_rotation + 0.000 "17" )
_clp_dbid = (_clpDBCreateText "DataIn6_padN" 
	(_clpAdjustPt -106.06:-78.43000000000001 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/PAD_NAMES" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "1" 
	(_clpAdjustPt -153:139 _clp_cinfo)  _clp_text_orient 
	"PACKAGE GEOMETRY/SILKSCREEN_TOP" _clp_sym)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	)))

_clpInitPinText(_clp_pin_text "2" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:115 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:115 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clpInitPinText(_clp_pin_text "3" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:105 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:105 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "7" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:75 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:75 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:85 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:85 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:95 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:95 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "11" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:35.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:35.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:45 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:45 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:55 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:55 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:65 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:65 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:15.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:15.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:5.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:5.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:25.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:25.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-14.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-14.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-24.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-24.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-4.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-4.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clpInitPinText(_clp_pin_text "23" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	_clp_cinfo->f_rotation "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-54.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-54.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-64.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-64.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-44.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-44.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-34.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-34.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-94 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-94 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-84.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-84.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-74.5 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-74.5 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-104 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-104 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("BONDPAD_4X30" _clpAdjustPt(-167.5:-114 _clp_cinfo) 	
	_clp_pin_text _clp_cinfo->f_rotation
	(_clpConvertPt -167.5:-114 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 195:-212 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 195:212 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -195:212 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -195:-212 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 195:-212 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -191:134 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -131:194 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -131:134 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -191:134 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/SILKSCREEN_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -80.23999999999999:-106.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -85.16:-101.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -85.16:99.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -80.23999999999999:104.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 80.23:104.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 85.16:99.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 85.16:-101.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 80.23:-106.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -80.23999999999999:-106.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/BODY_CENTER" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_10")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -80.23999999999999:-106.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -85.16:-101.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -85.16:99.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -80.23999999999999:104.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 80.23:104.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 85.16:99.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 85.16:-101.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 80.23:-106.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -80.23999999999999:-106.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/BODY_CENTER" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_10")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt -80.23999999999999:-106.5 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -85.16:-101.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -85.16:99.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -80.23999999999999:104.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 80.23:104.52 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 85.16:99.59999999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 85.16:-101.58 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 80.23:-106.5 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -80.23999999999999:-106.5 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/BODY_CENTER" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	'(CLIP_DRAWING "CLIP_10")
	list("CLIP_DRAWING" _clp_clip_prop_value))))

printf(" 100 percent completed")
newline()

axlFlushDisplay()
