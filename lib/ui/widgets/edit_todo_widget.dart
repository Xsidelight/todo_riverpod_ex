import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todos_riverpod/data/models/todo.dart';
import 'package:todos_riverpod/data/repositories/todo_repository.dart';

final todosRepository = Provider((ref) => TodoRepository());

class EditTodoWidget extends ConsumerStatefulWidget {
  final Todo todo;

  const EditTodoWidget({Key? key, required this.todo}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditTodoWidgetState();
}

class _EditTodoWidgetState extends ConsumerState<EditTodoWidget> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController idEditingController = TextEditingController();
  TextEditingController titleEditingController = TextEditingController();
  TextEditingController descriptionEditingController = TextEditingController();
  void clearControllers() {
    idEditingController.clear();
    titleEditingController.clear();
    descriptionEditingController.clear();
  }

  void setControllers(Todo item) {
    idEditingController.text = item.id.toString();
    titleEditingController.text = item.todo!;
    descriptionEditingController.text = item.description!;
  }

  @override
  Widget build(BuildContext context) {
    // Todo todo = context.watch<TodoProvider>().todo;
    setControllers(widget.todo);

    return Container(
      color: const Color(0xFF6CB4B1),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          right: 40.0,
          bottom: 20,
          left: 40,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                enabled: false,
                textAlign: TextAlign.center,
                controller: idEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter ID",
                  hintStyle: TextStyle(
                    color: Color(0xFFDBFFF4),
                    fontSize: 22,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Enter Valid Value';
                  } else if (double.tryParse(val) == null) {
                    return 'ID should be number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                controller: titleEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter title",
                  hintStyle: TextStyle(
                    color: Color(0xFFDBFFF4),
                    fontSize: 22,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    return 'Enter Valid Value';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                controller: descriptionEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter Description",
                  hintStyle: TextStyle(
                    color: Color(0xFFDBFFF4),
                    fontSize: 22,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
                validator: (val) {
                  if (val == null) {
                    return 'Enter Valid Value';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 200,
                child: TextButton(
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF04A3A3),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      var updatedTodo = Todo(
                        id: int.parse(
                          idEditingController.text,
                        ),
                        todo: titleEditingController.text,
                        description: descriptionEditingController.text,
                        isDone: widget.todo.isDone,
                      
                      );
                      // ref.read(todosRepository).updateTodo(updatedTodo);
                      clearControllers();
                      Navigator.pop(context);
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.white,
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          13.0,
                        ),
                        // side: const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
