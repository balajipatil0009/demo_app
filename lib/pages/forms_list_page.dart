import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter_desktop_app/models/form_data.dart';
import 'package:flutter_desktop_app/providers/form_provider.dart';
import 'package:flutter_desktop_app/widgets/app_navigation_bar.dart';

class FormsListPage extends StatefulWidget {
  const FormsListPage({super.key});

  @override
  State<FormsListPage> createState() => _FormsListPageState();
}

class _FormsListPageState extends State<FormsListPage> {
  String _filterFormType = 'All'; // Filter by form type.
  String _filterStatus = 'All'; // Filter by status.
  DateTime? _filterStartDate; // Filter by date range.
  DateTime? _filterEndDate;
  String _orderBy = 'submissionDateDesc'; // Order by option.

  @override
  void initState() {
    super.initState();
    // Load forms when the page initializes.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FormProvider>(context, listen: false).loadForms();
    });
  }

  // Function to filter forms based on selected criteria.
  List<BaseFormData> _getFilteredForms(List<BaseFormData> forms) {
    List<BaseFormData> filteredForms = List.from(forms);

    // Filter by form type.
    if (_filterFormType != 'All') {
      final FormType type =
          _filterFormType == 'Form 1' ? FormType.form1 : FormType.form2;
      filteredForms =
          filteredForms.where((form) => form.formType == type).toList();
    }

    // Filter by status.
    if (_filterStatus != 'All') {
      final FormStatus status = FormStatus.values
          .firstWhere((e) => e.name == _filterStatus.toLowerCase());
      filteredForms =
          filteredForms.where((form) => form.status == status).toList();
    }

    // Filter by date range.
    if (_filterStartDate != null) {
      filteredForms = filteredForms
          .where((form) => form.submissionDate.isAfter(_filterStartDate!))
          .toList();
    }
    if (_filterEndDate != null) {
      filteredForms = filteredForms
          .where((form) => form.submissionDate
              .isBefore(_filterEndDate!.add(const Duration(days: 1))))
          .toList();
    }

    // Sort forms based on selected order.
    filteredForms.sort((a, b) {
      if (_orderBy == 'submissionDateAsc') {
        return a.submissionDate.compareTo(b.submissionDate);
      } else {
        // Default to submissionDateDesc
        return b.submissionDate.compareTo(a.submissionDate);
      }
    });

    return filteredForms;
  }

  // Show date picker for start date.
  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _filterStartDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _filterStartDate) {
      setState(() {
        _filterStartDate = picked;
      });
    }
  }

  // Show date picker for end date.
  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _filterEndDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _filterEndDate) {
      setState(() {
        _filterEndDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Consumer listens to changes in FormProvider.
    return Scaffold(
      appBar: const AppNavigationBar(),
      body: Consumer<FormProvider>(
        builder: (context, formProvider, child) {
          final forms = _getFilteredForms(formProvider.forms);
          return Column(
            children: <Widget>[
              // Filtering and ordering options.
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  alignment: WrapAlignment.center,
                  children: [
                    // Filter by Form Type.
                    DropdownButton<String>(
                      value: _filterFormType,
                      onChanged: (String? newValue) {
                        setState(() {
                          _filterFormType = newValue!;
                        });
                      },
                      items: <String>['All', 'Form 1', 'Form 2']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: const Text('Filter by Form Type'),
                    ),
                    // Filter by Status.
                    DropdownButton<String>(
                      value: _filterStatus,
                      onChanged: (String? newValue) {
                        setState(() {
                          _filterStatus = newValue!;
                        });
                      },
                      items: <String>['All', 'Pending', 'Waiting', 'Done']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      hint: const Text('Filter by Status'),
                    ),
                    // Filter by Start Date.
                    ElevatedButton.icon(
                      onPressed: () => _selectStartDate(context),
                      icon: const Icon(Icons.calendar_today),
                      label: Text(_filterStartDate == null
                          ? 'Start Date'
                          : 'Start: ${DateFormat('yyyy-MM-dd').format(_filterStartDate!)}'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black),
                    ),
                    // Filter by End Date.
                    ElevatedButton.icon(
                      onPressed: () => _selectEndDate(context),
                      icon: const Icon(Icons.calendar_today),
                      label: Text(_filterEndDate == null
                          ? 'End Date'
                          : 'End: ${DateFormat('yyyy-MM-dd').format(_filterEndDate!)}'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          foregroundColor: Colors.black),
                    ),
                    // Order by.
                    DropdownButton<String>(
                      value: _orderBy,
                      onChanged: (String? newValue) {
                        setState(() {
                          _orderBy = newValue!;
                        });
                      },
                      items: <String>['submissionDateDesc', 'submissionDateAsc']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value == 'submissionDateDesc'
                              ? 'Latest First'
                              : 'Oldest First'),
                        );
                      }).toList(),
                      hint: const Text('Order By'),
                    ),
                  ],
                ),
              ),
              // Table to display submitted forms.
              Expanded(
                child: forms.isEmpty
                    ? const Center(
                        child: Text(
                          'No forms submitted yet.',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      )
                    : SingleChildScrollView(
                        scrollDirection: Axis
                            .horizontal, // Allows horizontal scrolling for large tables.
                        child: DataTable(
                          columnSpacing: 20.0,
                          dataRowHeight: 60.0,
                          headingRowColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.blue.shade100),
                          border: TableBorder.all(color: Colors.blue.shade50),
                          columns: const [
                            DataColumn(
                                label: Text('Name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Phone',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Type',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Status',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Submission Date',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                          rows: forms.map((form) {
                            return DataRow(
                              cells: [
                                // Display 'name' from ApplicationData or Form2Data
                                DataCell(Text(form.formType == FormType.form1
                                    ? (form as ApplicationData)
                                        .fullNameApplicant
                                    : (form as Form2Data).name)),
                                // Display 'phone' from ApplicationData (use a dummy or a relevant one) or Form2Data
                                DataCell(Text(form.formType == FormType.form1
                                    ? (form as ApplicationData)
                                        .aadharNumber // Using Aadhar as a unique identifier for display
                                    : (form as Form2Data).phone)),
                                DataCell(Text(form.formType == FormType.form1
                                    ? 'Form 1'
                                    : 'Form 2')),
                                DataCell(
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: _getStatusColor(form.status),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      form.status.name.toUpperCase(),
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ),
                                DataCell(Text(DateFormat('yyyy-MM-dd HH:mm')
                                    .format(form.submissionDate))),
                                DataCell(
                                  ElevatedButton(
                                    onPressed: () {
                                      // Navigate to the respective form page for editing.
                                      if (form.formType == FormType.form1) {
                                        context.go('/form1/${form.id}');
                                      } else {
                                        context.go('/form2/${form.id}');
                                      }
                                    },
                                    child: const Text('View/Edit'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  // Helper function to get color for status.
  Color _getStatusColor(FormStatus status) {
    switch (status) {
      case FormStatus.pending:
        return Colors.red;
      case FormStatus.waiting:
        return Colors.orange;
      case FormStatus.done:
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
