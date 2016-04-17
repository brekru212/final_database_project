

# First create application class
# built off of http://code.activestate.com/recipes/578860-setting-up-a-listbox-filter-in-tkinterpython-27/

import read
import user_create
import delate

from Tkinter import *

class ListBoxChoice(object):
    def __init__(self, master=None, title=None, message=None, list=[]):
        self.master = master
        self.value = None
        self.text = None
        self.list = read.getTickerList()

        self.modalPane = Toplevel(self.master)

        self.modalPane.transient(self.master)
        self.modalPane.grab_set()

        self.modalPane.bind("<Return>", self._choose)
        self.modalPane.bind("<Escape>", self._cancel)

        if title:
            self.modalPane.title(title)

        if message:
            Label(self.modalPane, text=message).pack(padx=5, pady=5)

        self.listFrame = Frame(self.modalPane)
        self.listFrame.pack(side=TOP, padx=5, pady=5)

        self.scrollBar = Scrollbar(self.listFrame)
        self.scrollBar.pack(side=LEFT, fill=Y)
        self.listBox = Listbox(self.listFrame, selectmode=SINGLE)
        self.listBox.pack(side=LEFT, fill=Y)
        self.scrollBar.config(command=self.listBox.yview)
        self.listBox.config(yscrollcommand=self.scrollBar.set)
        self.list.sort()
        for item in self.list:
            self.listBox.insert(END, item)

        interactiveFrame = Label(self.modalPane, text=self.text)
        self.changingFame = interactiveFrame
        interactiveFrame.pack(side=RIGHT)

        buttonFrame = Frame(self.modalPane)
        buttonFrame.pack(side=BOTTOM)

        chooseButton = Button(buttonFrame, text="Choose", command=self._choose)
        chooseButton.pack()

        createButton = Button(buttonFrame, text="Create", command=self._create)
        createButton.pack()

        modifyButton = Button(buttonFrame, text="Modify", command=self._cancel)
        modifyButton.pack()

        delButton = Button(buttonFrame, text="Delete", command=self._deleteStock)
        delButton.pack()

        cancelButton = Button(buttonFrame, text="Quit", command=self._cancel)
        cancelButton.pack()


    def _choose(self, event=None):
        try:
            self.changingFame.pack_forget()
            firstIndex = self.listBox.curselection()[0]
            self.value = self.list[int(firstIndex)]
            self.text = read.all_stock_into(self.value)
            self.changingFame = Label(self.modalPane, text=self.text)
            self.changingFame.pack(side=RIGHT)
        except IndexError:
            self.value = None

    def _create(self, event=None):
        self.changingFame.pack_forget()
        ticker = StringVar()
        price = StringVar()
        Label(self.changingFame, text="Ticker").grid(row=0)
        Label(self.changingFame, text="Price").grid(row=1)
        self.tickerEntry = Entry(self.changingFame, textvariable=ticker)
        self.tickerEntry.grid(row=0, column=1)
        self.priceEntry = Entry(self.changingFame, textvariable=price)
        self.priceEntry.grid(row=1, column=1)
        insertButton = Button(self.changingFame, text="Insert",command=self.createEntry)

                           #   command=user_create.user_create(ticker=tickerEntry.get(),price=priceEntry.get()))
        insertButton.grid(row=2, column=1)
        self.changingFame.pack()

    def createEntry(self):
        if self.tickerEntry.get() and self.priceEntry.get():
            user_create.user_create(ticker=self.tickerEntry.get(),price=self.priceEntry.get())
            self.list.append(self.tickerEntry.get())
            self.listBox.insert(END, self.tickerEntry.get())

    def _cancel(self, event=None):
        self.modalPane.destroy()


    def _deleteStock(self):
        self.changingFame.pack_forget()
        firstIndex = self.listBox.curselection()[0]
        self.value = self.list[int(firstIndex)]
        val1 = self.value
        self.list.remove(val1)
        delate.user_delete(val1)


        self.listFrame.pack_forget()
        self.listFrame = Frame(self.modalPane)
        self.listFrame.pack(side=TOP, padx=5, pady=5)
        self.listBox = Listbox(self.listFrame, selectmode=SINGLE)
        self.listBox.pack(side=LEFT, fill=Y)
        self.listBox.config(yscrollcommand=self.scrollBar.set)
        self.list.sort()
        for item in self.list:
            self.listBox.insert(END, item)



    def returnValue(self):
       return self.master.wait_window(self.modalPane)




if __name__ == '__main__':

    root = Tk()
    root.withdraw()

    returnValue = True
    while returnValue:
        returnValue = ListBoxChoice(root, title="Stock Tweets", message="Pick one of these stocks").returnValue()
        print



