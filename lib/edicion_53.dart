import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Edicion53 extends StatefulWidget {
  @override
  _Edicion53State createState() => _Edicion53State();
}

class _Edicion53State extends State<Edicion53> {
  PDFDocument? _pdfDocument;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    loadPDF();
  }

  void loadPDF() async {
    // Ruta del archivo PDF.
    String pdfPath =
        'assets/revista-53.pdf'; // Reemplaza con la ruta correcta de tu archivo PDF.

    // Carga el archivo PDF.
    PDFDocument document = await PDFDocument.fromAsset(pdfPath);
    if (mounted) {
      setState(() {
        _pdfDocument = document;
      });
    }
  }

  void goToPreviousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage -= 1;
      });
    }
  }

  void goToNextPage() {
    if (_pdfDocument != null && _currentPage < _pdfDocument!.count - 1) {
      setState(() {
        _currentPage += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba Gratis'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: _pdfDocument != null
                ? PDFViewer(
                    document: _pdfDocument!,
                    scrollDirection: Axis.vertical,
                    showPicker: false,
                    onPageChanged: (page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    indicatorBackground: Colors.red,
                    pickerButtonColor: Colors.red,
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: goToPreviousPage,
                child: const Icon(Icons.arrow_back),
              ),
              ElevatedButton(
                onPressed: goToNextPage,
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
