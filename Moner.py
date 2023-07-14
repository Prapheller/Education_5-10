from tkinter import*
from tkinter import ttk
root=Tk()
root.title("โปรแกรมแปลงสกุลเงิน")

txt=StringVar()
txt.set('จำนวนที่ได้')
baht=IntVar()
change=Label(text='ใส่จำนวนเงิน(TBH)',font=100).grid(row=0,column=0,sticky=W)
exchange=Label(textvariable=txt,font=100)
exchange.grid(row=2,column=0,sticky=W)

Ichange=Entry(root,textvariable=baht,width=30)
Ichange.grid(row=0,column=1,sticky=W)
Iexchange=Entry(width=20,font=100)
Iexchange.grid(row=2,column=1,sticky=W)

choice=StringVar(value='โปรดเลือกสกุลเงิน')
Label(text='เลือกสกุลเงิน',font=100).grid(row=1,sticky=W)
combo=ttk.Combobox(width=18,font=100,textvariable=choice)
combo["values"]=('USD','JPY','EUR','GBP')
combo.grid(row=1,column=1)

def change_dollar():
    Iexchange.delete(0,END)
    txt.set('จำนวนที่ได้(USD)')
    dollar=baht.get()
    dollars=dollar/34.47
    Iexchange.insert(0,dollars)
def change_yen():
    Iexchange.delete(0,END)
    txt.set('จำนวนที่ได้(JPY)')
    yen=baht.get()
    yens=yen/0.25694
    Iexchange.insert(0,yens)

def change_euro():
    Iexchange.delete(0,END)
    txt.set('จำนวนที่ได้(EUR)')
    euro=baht.get()
    euros=euro/36.86
    Iexchange.insert(0,euros)

def change_pound():
    Iexchange.delete(0,END)
    txt.set('จำนวนที่ได้(GBP)')
    pound=baht.get()
    pounds=pound/41.51
    Iexchange.insert(0,pounds)

def suffer():
    if  combo.get()=='USD':
        Button(root,text="dollar",command=change_dollar,width=20).grid(row=3,column=1)
    elif combo.get()=='JPY':
        Button(root,text="yen",command=change_yen,width=20).grid(row=3,column=1)
    elif combo.get()=='EUR':
        Button(root,text="euro",command=change_euro,width=20).grid(row=3,column=1)
    elif combo.get()=='GBP':
        Button(root,text="pound",command=change_pound,width=20).grid(row=3,column=1)

btn = ttk.Button(root, text="Get Value",command=suffer).grid(row=4,sticky=W)
root.geometry("320x130")
root.mainloop()