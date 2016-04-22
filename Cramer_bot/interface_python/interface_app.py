
import read
import user_create
import delate
import update

from Tkinter import *

class ListBoxChoice(object):
    def __init__(self, master=None, title=None, message=None, list=[]):
        self.master = master
        self.value = None

        self.modalPane = Toplevel(self.master)
        self.modalPane.transient(self.master)
        self.modalPane.grab_set()
        self.modalPane.bind("<Return>", self._choose)
        self.modalPane.bind("<Escape>", self._cancel)

        if title:
            self.modalPane.title(title)

        if message:
            Label(self.modalPane, text=message).pack(padx=5, pady=5)

        self.resetlist()

        self.changingFame = Frame(self.modalPane)
        self.changingFame.pack(expand=TRUE)

        self.buttons()



    def buttons(self):
        self.buttonFrame = Frame(self.modalPane)
        self.buttonFrame.pack(side=BOTTOM)

        chooseButton = Button(self.buttonFrame, text="Choose", command=self._choose)
        chooseButton.pack()

        createButton = Button(self.buttonFrame, text="Create", command=self._create)
        createButton.pack()

        modifyButton = Button(self.buttonFrame, text="Modify", command=self._modify)
        modifyButton.pack()

        autoButton = Button(self.buttonFrame, text="Auto Update",command=self.autoChangeEntry)
        autoButton.pack()

        delButton = Button(self.buttonFrame, text="Delete", command=self._deleteStock)
        delButton.pack()

        cancelButton = Button(self.buttonFrame, text="Quit", command=self._cancel)
        cancelButton.pack()

    def resetlist(self):
        self.listFrame = Frame(self.modalPane)
        self.listFrame.pack(side=TOP, expand=TRUE, padx=30, pady=30)

        self.scrollBar = Scrollbar(self.listFrame)
        self.scrollBar.pack(side=LEFT, fill=Y)

        self.listBox = Listbox(self.listFrame, selectmode=SINGLE)
        self.listBox.pack(side=LEFT, fill=Y)

        self.scrollBar.config(command=self.listBox.yview)
        self.listBox.config(yscrollcommand=self.scrollBar.set)

        self.list = read.getTickerList()
        self.list.sort()

        for item in self.list:
            self.listBox.insert(END, item)

    def resetSourceList(self):
        self.listFrame.pack_forget()
        self.listFrame = Frame(self.modalPane)
        self.listFrame.pack(side=TOP, expand=TRUE, padx=30, pady=30)

        self.scrollBar = Scrollbar(self.listFrame)
        self.scrollBar.pack(side=LEFT, fill=Y)

        self.listBox = Listbox(self.listFrame, selectmode=SINGLE)
        self.listBox.pack(side=LEFT, fill=Y)

        self.scrollBar.config(command=self.listBox.yview)
        self.listBox.config(yscrollcommand=self.scrollBar.set)



        self.list = read.getSourceList()
        self.list.sort()

        for item in self.list:
            self.listBox.insert(END, item)


    def cleanFrame(self):
        try:
            self.changingFame.pack_forget()
            self.changingFame = Frame(self.modalPane)
            self.changingFame.pack(expand=TRUE, padx=10, pady=10)
            self.value = None
        except:
            pass

    def _choose(self, event=None):
        try:
            self.cleanFrame()
            firstIndex = self.listBox.curselection()[0]
            self.value = self.list[int(firstIndex)]
            self.text = read.all_stock_into(self.value)
            self.changingText = Label(self.changingFame, text=self.text)
            self.changingText.pack(in_=self.changingFame)
        except IndexError:
            self.value = None


    def _create(self, event=None):
        self.cleanFrame()
        ticker = StringVar()
        price = StringVar()
        self.tickerLabel = Label(self.changingFame, text="Ticker")
        self.tickerLabel.grid(row=0)
        self.priceLabel  = Label(self.changingFame, text="Price")
        self.priceLabel.grid(row=1)
        self.tickerEntry = Entry(self.changingFame, textvariable=ticker)
        self.tickerEntry.grid(row=0, column=1)
        self.priceEntry = Entry(self.changingFame, textvariable=price)
        self.priceEntry.grid(row=1, column=1)
        self.insertButton = Button(self.changingFame, text="Insert", command=self.createEntry)
        self.insertButton.grid(row=2, column=1)

    def createEntry(self):
        self.cleanFrame()
        if self.tickerEntry.get() and self.priceEntry.get():
            user_create.user_create(ticker=self.tickerEntry.get(),price=self.priceEntry.get())
            self.list.append(self.tickerEntry.get())
            self.listBox.insert(END, self.tickerEntry.get())

    def _cancel(self, event=None):
        self.modalPane.destroy()


    def _deleteStock(self):
        self.cleanFrame()
        firstIndex = self.listBox.curselection()[0]
        self.value = self.list[int(firstIndex)]
        val1 = self.value
        self.list.remove(val1)
        delate.user_delete(val1)
        self.listFrame.pack_forget()
        self.resetlist()


    def _modify(self, event=None):
        try:
            self.cleanFrame()
            firstIndex = self.listBox.curselection()[0]
            self.value = self.list[int(firstIndex)]
            price = StringVar()
            self.priceLabel  = Label(self.changingFame, text="Price")
            self.priceLabel.grid(row=0)
            self.priceChange = Entry(self.changingFame, textvariable=price)
            self.priceChange.grid(row=0, column=1)
            self.insertButton = Button(self.changingFame, text="Update",command=self.changeEntry)
            self.insertButton.grid(row=1, column=1)
        except IndexError:
            self.value = None



    def changeEntry(self):
        self.cleanFrame()
        if self.priceChange.get():
            update.user_update(ticker=self.value,price=float(self.priceChange.get()))



    def autoChange(self):
        try:
            self.cleanFrame()
            firstIndex = self.listBox.curselection()[0]
            self.value = self.list[int(firstIndex)]
            self.text = str(self.value)
            self.changingText = Label(self.changingFame, text=self.text)
            self.changingText.pack(in_=self.changingFame)
            self.source2Button = Button(self.changingFame, text="Update2 Source", command=self.updateSource)
            self.source2Button.pack(side=BOTTOM)
            firstIndex = self.listBox.curselection()[0]
            self.value = self.list[int(firstIndex)]
            print('worked')

        except IndexError:
            self.value = None
            print('didn')

    def updateSource(self):
        try:
            self.cleanFrame()
            firstIndex = self.listBox.curselection()[0]
            self.value = self.list[int(firstIndex)]
            update.auto_update(self.value)
            self.listFrame.pack_forget()
            self.resetlist()
            self.buttonFrame.pack_forget()
            self.buttons()
        except IndexError:
            self.value = None


    def autoChangeEntry(self):
        self.resetSourceList()
        self.buttonFrame.pack_forget()
        self.buttonFrame = Frame(self.modalPane)
        self.buttonFrame.pack(side=BOTTOM)
        chooseButton = Button(self.buttonFrame, text="Choose", command=self.updateSource)
        chooseButton.pack()

    def returnValue(self):
       return self.master.wait_window(self.modalPane)




if __name__ == '__main__':

    root = Tk()
    root.withdraw()

    returnValue = True
    while returnValue:
        returnValue = ListBoxChoice(root, title="Stock Tweets", message="Pick one of these stocks").returnValue()
        print



