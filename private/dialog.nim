

var wxDEFAULT_DIALOG_STYLE* {.importcpp: "wxDEFAULT_DIALOG_STYLE", 
                              header: "wx.h".}: clong


type 
  WxDialog* {.importcpp: "wxDialog", header: "wx.h".} = object of WxWindow
  

proc constructwxDialog*(): WxDialog {.cdecl, constructor, 
                                      importcpp: "wxDialog(@)", header: "wx.h".}
proc constructwxDialog*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; 
                        style: clong = wxDEFAULT_DIALOG_STYLE; 
                        name: WxString = constructWxString("dialog")): WxDialog {.
    cdecl, constructor, importcpp: "wxDialog(@)", header: "wx.h".}
proc create*(this: var WxDialog; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; 
             style: clong = wxDEFAULT_DIALOG_STYLE; 
             name: WxString = constructWxString("dialog")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxDialog*(this: var WxDialog) {.cdecl, importcpp: "#.~wxDialog()", 
    header: "wx.h".}
proc isModal*(this: WxDialog): bool {.noSideEffect, cdecl, importcpp: "IsModal", 
                                      header: "wx.h".}
proc showModal*(this: var WxDialog): cint {.cdecl, importcpp: "ShowModal", 
    header: "wx.h".}
proc endModal*(this: var WxDialog; retCode: cint) {.cdecl, 
    importcpp: "EndModal", header: "wx.h".}
proc isModalShowing*(this: WxDialog): bool {.noSideEffect, cdecl, 
    importcpp: "IsModalShowing", header: "wx.h".}
proc show*(this: var WxDialog; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "wx.h".}
proc onCloseWindow*(this: var WxDialog; event: var WxCloseEvent) {.cdecl, 
    importcpp: "OnCloseWindow", header: "wx.h".}
proc onOK*(this: var WxDialog; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnOK", header: "wx.h".}
proc onApply*(this: var WxDialog; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnApply", header: "wx.h".}
proc onCancel*(this: var WxDialog; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnCancel", header: "wx.h".}