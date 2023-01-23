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
(putprop _clp_cinfo (list (_clpAdjustPt -212:-138.24 _clp_cinfo)	
	(_clpAdjustPt 132.24:150.5 _clp_cinfo)) 'l_extents)
(putprop _clp_cinfo (_clpAdjustPt '(-875.0 998.0) _clp_cinfo) 'l_zeropt)
(unless (_clpSelectRotOrg _clp_cinfo)
	(error "CANCEL"))
_clp_clip_prop_value = _clpGetClipPropValue()

_clp_sym = _clpIsLayout()
_clp_pbuf = _clpPinBufStart(_clp_sym)
_clpInitPinText(_clp_pin_text "1" 0:0)
_clpInitTextOrientation(_clp_text_orient "CENTER" nil
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:88.57999999999993 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:-88.58 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:68.90000000000009 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:-68.90000000000001 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:49.21000000000004 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:-49.21 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:29.52999999999997 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:-29.53 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:9.840000000000032 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:-9.84 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:-9.840000000000032 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:9.84 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:-29.52999999999997 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:29.53 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:-49.21000000000004 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:49.21 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:-68.89999999999998 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:68.90000000000001 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(-110.24:-88.58000000000004 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 110.24:88.58 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-88.58000000000004:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 88.58:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-68.89999999999998:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 68.90000000000001:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-49.21000000000004:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 49.21:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-29.52999999999997:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 29.53:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-9.840000000000032:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 9.84:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(9.840000000000032:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -9.84:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(29.52999999999997:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -29.53:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(49.21000000000004:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -49.21:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(68.89999999999998:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -68.90000000000001:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(88.58000000000004:-110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -88.58:110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:-88.58000000000004 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:88.58 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:-68.89999999999998 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:68.90000000000001 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:-49.21000000000004 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:49.21 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:-29.52999999999997 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:29.53 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:-9.840000000000032 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:9.84 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:9.840000000000032 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:-9.84 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:29.52999999999997 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:-29.53 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:49.21000000000004 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:-49.21 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:68.90000000000009 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:-68.90000000000001 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD27" _clpAdjustPt(110.24:88.57999999999993 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -110.24:-88.58 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(88.58000000000004:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -88.58:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(68.89999999999998:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -68.90000000000001:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(49.21000000000004:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -49.21:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(29.52999999999997:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -29.53:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(9.840000000000032:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt -9.84:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-9.840000000000032:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 9.84:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-29.52999999999997:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 29.53:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-49.21000000000004:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 49.21:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-68.89999999999998:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 68.90000000000001:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD26" _clpAdjustPt(-88.58000000000004:110.24 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 88.58:-110.24 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
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
	(180.000 + _clp_cinfo->f_rotation) "1")
_clp_pin_text->text = _clp_text_orient

_clp_dbid = _clpDBCreatePin("PAD28" _clpAdjustPt(0:0 _clp_cinfo) 	
	_clp_pin_text (180.000 + _clp_cinfo->f_rotation)
	(_clpConvertPt 0:0 _clp_cinfo) 0.000 _clp_pbuf _clp_sym _clpIsLayout() nil)
if(null(car(_clp_dbid)) then
	_clp_pbuf = cadr(_clp_dbid)
	_clp_dbid = nil
else
	_clp_dbid = cadr(_clp_dbid))

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_dbid = _clpDBCreateSymbolSkeleton('("MLF_40P_05MM" "PACKAGE") _clpAdjustPt('(0.0 0.0) _clp_cinfo)
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
(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "#REFDES"
	(_clpAdjustPt -149:123 _clp_cinfo)  _clp_text_orient 
	"REF DES/SILKSCREEN_TOP" _clp_sym)

(_clpInitTextOrientation _clp_text_orient "LEFT" nil _clp_cinfo->f_rotation + 0.000 "1" )
_clp_dbid = (_clpDBCreateText "#REFDES"
	(_clpAdjustPt -10:-10 _clp_cinfo)  _clp_text_orient 
	"REF DES/ASSEMBLY_TOP" _clp_sym)

_clp_path  = (_clpPathStart (list (_clpAdjustPt 118.11:102.3599999999999 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 118.11:118.1099999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 118.11:118.1099999999999 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 102.36:118.1099999999999 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -118.11:-106.3 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -118.11:-118.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -118.11:-118.11 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -106.3:-118.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 110.24:-118.11 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 118.11:-118.11 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 118.11:-118.11 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 118.11:-106.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt -106.3:118.1099999999999 _clp_cinfo))
	(_clpMKSConvert 8.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 8.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -118.11:106.3 _clp_cinfo))
_clpPl = list(
	list("CLIP_DRAWING" _clp_clip_prop_value))
_clp_dbid = _clpDBCreatePath(_clp_path "PACKAGE GEOMETRY/SILKSCREEN_TOP" 'line _clp_sym _clpPl)
_clpPl = nil

_clp_path  = (_clpPathStart (list (_clpAdjustPt 125.24:118.1099999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 125.24:-118.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -125.24:-118.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -125.24:118.1099999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 125.24:118.1099999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateShape(_clp_path  nil "PACKAGE GEOMETRY/ASSEMBLY_TOP" nil _clp_sym)
_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
	list("CLIP_DRAWING" _clp_clip_prop_value))))

_clp_path  = (_clpPathStart (list (_clpAdjustPt 125.24:118.1099999999999 _clp_cinfo))
	(_clpMKSConvert 0.000000 _clp_cinfo->t_from_units _clp_cinfo->t_to_units))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 125.24:-118.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -125.24:-118.11 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt -125.24:118.1099999999999 _clp_cinfo))
_clp_path  = (_clpPathLine _clp_path (_clpMKSConvert 0.000000 _clp_cinfo->t_from_units
	_clp_cinfo->t_to_units) (_clpAdjustPt 125.24:118.1099999999999 _clp_cinfo))
_clp_dbid = _clpDBCreateOpenShape(_clp_path  t "PACKAGE GEOMETRY/PLACE_BOUND_TOP" nil _clp_sym)

_clp_dbid = _clpDBCreateCloseShape(_clp_dbid)

_clp_dbid = car(_clp_dbid)
when(_clp_dbid _clpDBAddProp( _clp_dbid list(
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
