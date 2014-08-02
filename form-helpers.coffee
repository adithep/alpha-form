

Template._string_select_options.helpers
  h_opt: ->
    parent = UI._parentData(2)
    return @[parent.key_key]

Template._each_input_master.helpers
  tri_gate: ->
    HUMAN_FORM.find(_pid: @_id, _s_n: "form_el")



Template.button_list.helpers
  schema_buttons: ->
    LDATA.find(_sid: @_id, _s_n: "_gr")



Template._each_input.helpers
  input_value: ->
    parent = UI._parentData(1)
    return Session.get("#{parent._id}_v")
  class: ->
    str = ""
    if @class_n?
      str = "#{str} #{@class_n}"
    if @key_ty is "r_st"
      str = "#{str} input_select"
    if str?
      return str
  select_class: ->
    parent = UI._parentData(1)
    return Session.get("#{parent._id}_select_class")
  select_options: ->
    parent = UI._parentData(1)
    sel = Session.get("#{parent._id}_sel_opt")
    if sel
      return LDATA.find({_gid: sel, _s_n: "doc"}, {sort: {sort: 1}})
  select_value: ->
    if @_v
      return @_v
    else if not @_v?
      a = HUMAN_FORM.findOne({
        _s_n: "form_sel"
        , _sel_id: @_id
        , sort: 0})
      if a
        return a[@key_key]

    return

Template._schema_buttons.helpers
  get_key_dis: ->
    DATA.find(_s_n: "keys", key_n: @_tri_dis)
  attrs: ->
    return {class: @class_n}

Template.insert_form.helpers
  input_element: ->
    LDATA.find(_sid: @_id, _s_n: "_gr")
