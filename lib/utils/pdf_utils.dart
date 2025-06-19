// lib/utils/pdf_utils.dart
import 'dart:io';
import 'dart:typed_data'; // Added for Uint8List type hint
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfUtils {
  /// **REPLACED FUNCTION**
  /// Generates a multi-page PDF from a list of images.
  /// Each Uint8List in the `imageBytesList` will be placed on a new, separate page.
  static Future<Uint8List> generateMultiPagePdfFromImages({
    required List<Uint8List> imageBytesList,
  }) async {
    final pdf = pw.Document();

    // Loop through each image byte list and add it as a new page
    for (final imageBytes in imageBytesList) {
      final pw.MemoryImage pdfImage = pw.MemoryImage(imageBytes);

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          margin:
              const pw.EdgeInsets.all(20), // Added some margin for better look
          build: (pw.Context context) {
            return pw.Center(
              // Using pw.Image which will scale down the image if it's too large for the page
              child: pw.Image(pdfImage, fit: pw.BoxFit.contain),
            );
          },
        ),
      );
    }

    return pdf.save();
  }

  // Save the PDF to a file.
  // This function does not need changes. It works correctly with any PDF bytes.
  static Future<void> savePdf(Uint8List pdfBytes, String fileName) async {
    // Using file_saver is generally more robust across platforms than getDownloadsDirectory
    // but sticking to your original code.
    try {
      if (kIsWeb) {
        // For web, we cannot rely on path_provider. Use printing's share function.
        await Printing.sharePdf(bytes: pdfBytes, filename: fileName);
        print('PDF shared for download on web.');
        return;
      }

      final Directory? output = await getDownloadsDirectory();
      if (output == null) {
        print('Downloads directory not available. Cannot save PDF directly.');
        // Fallback for other platforms if directory is not found
        await Printing.sharePdf(bytes: pdfBytes, filename: fileName);
        return;
      }
      final file = File('${output.path}/$fileName');
      await file.writeAsBytes(pdfBytes);
      print('PDF saved to: ${file.path}');
    } catch (e) {
      print('Error saving PDF: $e');
      // Provide a fallback share option on error
      await Printing.sharePdf(bytes: pdfBytes, filename: fileName);
    }
  }

  // Print the PDF.
  // This function does not need changes. It works correctly.
  static Future<void> printPdf(Uint8List pdfBytes) async {
    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdfBytes);
  }
}
