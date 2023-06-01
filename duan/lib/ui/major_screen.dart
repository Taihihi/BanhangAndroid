// import 'package:flutter/material.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'package:form_builder_validators/form_builder_validators.dart';
// import '/model/major.dart';
// import 'package:flutter_demo_15/ui/major/major_item.dart';
// import 'package:flutter_demo_15/ui/major/major_view_model.dart';
// import 'package:scoped_model/scoped_model.dart';

// class MajorScreen extends StatelessWidget {
//   final _majorVM = MajorViewModel();
//   MajorScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return ScopedModel(
//       model: _majorVM,
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('Major'),
//           actions: [
//             IconButton(
//                 onPressed: () => _showEditDialog(context, _majorVM),
//                 icon: const Icon(Icons.add))
//           ],
//         ),
//         body: _listMajor(),
//       ),
//     );
//   }

//   Widget _listMajor() => ScopedModelDescendant<MajorViewModel>(
//         builder: (BuildContext context, Widget? child, MajorViewModel model) {
//           return ListView.builder(
//             itemCount: model.majors.length,
//             itemBuilder: (context, index) {
//               return MajorItem(
//                 major: model.majors[index],
//                 onClick: (major) =>
//                     _showEditDialog(context, model, major: major),
//                 onDelete: (major) => model.delete(major),
//               );
//             },
//           );
//         },
//       );

//   final _formKey = GlobalKey<FormBuilderState>();
//   Future<void> _showEditDialog(var context, MajorViewModel model,
//       {Major? major}) async {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: const Text('Enter major name'),
//             content: FormBuilder(
//               key: _formKey,
//               child: FormBuilderTextField(
//                 name: 'name',
//                 initialValue: major?.name,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Major name',
//                 ),
//                 validator: FormBuilderValidators.required(context),
//               ),
//             ),
//             actions: [
//               TextButton(
//                   child: const Text('Save'),
//                   onPressed: () {
//                     _formKey.currentState!.save();
//                     if (_formKey.currentState!.validate()) {
//                       final formValue = _formKey.currentState!.value;
//                       final data = Major(name: formValue['name']);
//                       if (major != null) data.id = major.id;
//                       model.save(data);
//                       Navigator.pop(context);
//                     }
//                   }),
//             ],
//           );
//         });
//   }
// }
