$PBExportHeader$w_main.srw
forward
global type w_main from window
end type
type cb_2 from commandbutton within w_main
end type
type cb_1 from commandbutton within w_main
end type
end forward

global type w_main from window
integer width = 1966
integer height = 1128
boolean titlebar = true
string title = "Create Dynamic Objects"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
end type
global w_main w_main

type variables
long ll_y, ll_ys
end variables
on w_main.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_2,&
this.cb_1}
end on

on w_main.destroy
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_2 from commandbutton within w_main
integer x = 1440
integer y = 200
integer width = 430
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Create Button"
end type

event clicked;commandbutton cb_test // declare the commandbutton variable 
cb_test = Create commandbutton // create the commandbutton object 

cb_test.X = 1050 // x position of the object 
cb_test.Y = 100  + ll_ys + 5 // y position of the object 
cb_test.Height = 100 // height value of the object 
cb_test.Width = 300 // with value of the object 
cb_test.Text = "OK" // set text of the commandbutton

ll_ys = cb_test.Y
//Parent.OpenUserObject( cb_test, "cb_test", 50, 100)
Parent.OpenUserObject( cb_test, "cb_test", 1060, ll_ys) // ok, let's create the object




end event

type cb_1 from commandbutton within w_main
integer x = 1440
integer y = 56
integer width = 430
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Create Text"
end type

event clicked;statictext st_1 // declare the statictext variable 
st_1 = Create statictext // create the statictext object 

st_1.X = 100 // x position of the object 
st_1.Y = 100  + ll_y + 5 // y position of the object 
st_1.Height = 100 // height value of the object 
st_1.Width = 1000 // with value of the object 
st_1.Text = "ProgrammingMethodsIT.Com" // set text of the statictext

ll_y = st_1.Y
//Parent.OpenUserObject( st_1, "st_1", 50, 100)
Parent.OpenUserObject( st_1, "st_1", 50, ll_y) // ok, let's create the object


end event

