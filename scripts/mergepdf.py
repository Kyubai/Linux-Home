from PyPDF2 import PdfFileMerger

pdfs = ['coverletter.pdf', 'lebenslauf.pdf']

merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(pdf)

merger.write("result.pdf")
merger.close()