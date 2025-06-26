
import 'package:flutter/material.dart';

class MessageInputBar extends StatelessWidget {
  const MessageInputBar({super.key, required this.messageController});
  
  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8, top: 8),
              child: CustomTextField(
                  myController: messageController,
                  hint: "Send a message",
                  obscureField: false,
                  initialObscureText: false),
            ),
          ),
          IconButton(
            onPressed: () async {
              // await sendMessage(messageController.text);
              messageController.clear();
            },
            icon: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.grey[50]),
              child: Padding(
                padding: const EdgeInsets.only(right: 6, bottom: 8, left: 12, top: 8),
                child: Icon(
                  Icons.send_rounded,
                  color: Colors.blue[600],
                  size: 34,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.myController,
      required this.hint,
      required this.obscureField,
      required this.initialObscureText});

  final TextEditingController myController;
  final String hint;
  final bool obscureField;
  final bool initialObscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.initialObscureText; // Initialize the state
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) return "${widget.hint} cannot be empty";
          return null;
        },
        obscuringCharacter: r'*',
        obscureText: obscureText,
        controller: widget.myController,
        cursorColor: Colors.grey[700],
        cursorWidth: 2,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[700]),
        decoration: InputDecoration(
          suffixIcon: widget.obscureField == true
              ? Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: GestureDetector(
                      onTap: () {
                        obscureText = !obscureText;
                        setState(() {});
                      },
                      child: obscureText == false
                          ? Icon(
                              Icons.visibility_outlined,
                              color: Colors.blue[600],
                            )
                          : const Icon(Icons.visibility_off_outlined)),
                )
              : null,
          fillColor: Colors.grey[50],
          hintText: widget.hint,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          hintStyle: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w700),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(50))),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(50))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(50))),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(50))),
        ));
  }
}
