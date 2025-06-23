// lib/pages/forms_list_page.dart

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
  // A map to hold the display names for the form type filter
  final Map<String, String> _formTypeDisplayNames = {
    'All': 'Form Type',
    'Form 1': 'रहिवासी दाखल',
    'Form 2': 'उत्पन्नाचा दाखला',
  };

  // State for search functionality
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  // State for filters
  String _filterFormType =
      'All'; // The internal value is still 'All', 'Form 1', etc.
  String _filterStatus = 'All';
  DateTime? _filterStartDate;
  DateTime? _filterEndDate;
  String _orderBy = 'submissionDateDesc';

  @override
  void initState() {
    super.initState();
    // Load forms when the page initializes.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FormProvider>(context, listen: false).loadForms();
    });

    // Listener for the search controller to update the UI on text change
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // Function to filter and sort forms based on all selected criteria.
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

    // Filter by search query (name or mobile)
    if (_searchQuery.isNotEmpty) {
      filteredForms = filteredForms.where((form) {
        String name = '';
        String mobile = '';

        if (form is ApplicationData) {
          name = form.fullNameApplicant;
          mobile = form.mobile;
        } else if (form is Form2Data) {
          name = form.fullNameApplicant;
          mobile = form.mobile;
        }

        final queryLower = _searchQuery.toLowerCase();
        return name.toLowerCase().contains(queryLower) ||
            mobile.contains(queryLower);
      }).toList();
    }

    // Sort forms based on selected order.
    filteredForms.sort((a, b) {
      if (_orderBy == 'submissionDateAsc') {
        return a.submissionDate.compareTo(b.submissionDate);
      } else {
        return b.submissionDate.compareTo(a.submissionDate);
      }
    });

    return filteredForms;
  }

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
    return Scaffold(
      appBar: const AppNavigationBar(),
      body: Consumer<FormProvider>(
        builder: (context, formProvider, child) {
          final forms = _getFilteredForms(formProvider.forms);
          return Column(
            children: <Widget>[
              // Filtering and ordering options UI.
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Search Bar
                    TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        labelText: 'Search by Name or Mobile Number',
                        hintText: 'Enter name or number...',
                        prefixIcon: const Icon(Icons.search),
                        border: const OutlineInputBorder(),
                        suffixIcon: _searchQuery.isNotEmpty
                            ? IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {
                                  _searchController.clear();
                                },
                              )
                            : null,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Filter Dropdowns and Buttons
                    Wrap(
                      spacing: 16.0,
                      runSpacing: 16.0,
                      alignment: WrapAlignment.center,
                      children: [
                        // Form Type Dropdown with user-friendly names
                        DropdownButton<String>(
                          value: _filterFormType,
                          onChanged: (String? newValue) {
                            setState(() {
                              _filterFormType = newValue!;
                            });
                          },
                          items: _formTypeDisplayNames.keys
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(_formTypeDisplayNames[value]!),
                            );
                          }).toList(),
                        ),
                        // Status Filter Dropdown
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
                        ),
                        // Date Pickers
                        ElevatedButton.icon(
                          onPressed: () => _selectStartDate(context),
                          icon: const Icon(Icons.calendar_today),
                          label: Text(_filterStartDate == null
                              ? 'Start Date'
                              : 'Start: ${DateFormat('yyyy-MM-dd').format(_filterStartDate!)}'),
                        ),
                        ElevatedButton.icon(
                          onPressed: () => _selectEndDate(context),
                          icon: const Icon(Icons.calendar_today),
                          label: Text(_filterEndDate == null
                              ? 'End Date'
                              : 'End: ${DateFormat('yyyy-MM-dd').format(_filterEndDate!)}'),
                        ),
                        // Sorting Dropdown
                        DropdownButton<String>(
                          value: _orderBy,
                          onChanged: (String? newValue) {
                            setState(() {
                              _orderBy = newValue!;
                            });
                          },
                          items: <String>[
                            'submissionDateDesc',
                            'submissionDateAsc'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value == 'submissionDateDesc'
                                  ? 'Latest First'
                                  : 'Oldest First'),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Table to display submitted forms.
              Expanded(
                child: forms.isEmpty
                    ? const Center(
                        child: Text(
                          'No forms match the current filters.',
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      )
                    : SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columnSpacing: 20.0,
                          dataRowHeight: 60.0,
                          headingRowColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.blue.shade100),
                          border: TableBorder.all(color: Colors.blue.shade50),
                          columns: const [
                            DataColumn(
                                label: Text('Applicant Name',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                            DataColumn(
                                label: Text('Contact Info',
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
                                label: Text('Actions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold))),
                          ],
                          rows: forms.map((form) {
                            String name = '';
                            String contactInfo = '';

                            // Correctly check for the most specific type first to get data
                            if (form is Form2Data) {
                              name = form.fullNameApplicant;
                              contactInfo = form.mobile;
                            } else if (form is ApplicationData) {
                              name = form.fullNameApplicant;
                              contactInfo = form.mobile;
                            }

                            return DataRow(
                              cells: [
                                DataCell(Text(name)),
                                DataCell(Text(contactInfo)),
                                DataCell(Text(form.formType == FormType.form1
                                    ? 'Residency'
                                    : 'Income')),
                                // Modifiable Status Dropdown in a DataCell
                                DataCell(
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton<FormStatus>(
                                      value: form.status,
                                      items: FormStatus.values.map((status) {
                                        return DropdownMenuItem<FormStatus>(
                                          value: status,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                              color: _getStatusColor(status),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Text(
                                              status.name.toUpperCase(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (FormStatus? newStatus) {
                                        if (newStatus != null &&
                                            newStatus != form.status) {
                                          form.status = newStatus;
                                          Provider.of<FormProvider>(context,
                                                  listen: false)
                                              .updateForm(form);
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                DataCell(Text(DateFormat('yyyy-MM-dd HH:mm')
                                    .format(form.submissionDate))),
                                DataCell(
                                  ElevatedButton(
                                    onPressed: () {
                                      if (form.formType == FormType.form1) {
                                        context.go('/form1/${form.id}');
                                      } else {
                                        context.go('/form2/${form.id}');
                                      }
                                    },
                                    child: const Text('View/Edit'),
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

  // Helper function to get color for status pills.
  Color _getStatusColor(FormStatus status) {
    switch (status) {
      case FormStatus.pending:
        return Colors.orange.shade700;
      case FormStatus.waiting:
        return Colors.blue.shade700;
      case FormStatus.done:
        return Colors.green.shade700;
      default:
        return Colors.grey;
    }
  }
}
