from PyPDF2 import PdfFileMerger

pdfs = ['BA.pdf', 'Bild.png']

merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(pdf)

merger.write("result.pdf")
merger.close()
