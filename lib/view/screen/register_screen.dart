part of 'screen.dart';

class RegisterScreen extends StatefulWidget {
  final UserViewModel userViewModel;
  const RegisterScreen({super.key, required this.userViewModel});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Center(
              child: Card(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create Account",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Start your journey into deep focus today",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 32,),
                      Text(
                        "FULL NAME",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          prefixIcon: Icon(Icons.person_2_outlined),
                          hintText: "Architect Name",
                        ),
                        controller: nameController,
                      ),
                      SizedBox(height: 32,),
                      Text(
                        "EMAIL ADDRESS",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          prefixIcon: Icon(Icons.email),
                          hintText: "Email Address",
                        ),
                        controller: emailController,
                      ),
                      SizedBox(height: 32,),
                      Text(
                        "PASSWORD",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8,),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Email Address",
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                        obscureText: true,
                        style: Theme.of(context).textTheme.bodyLarge,
                        controller: passwordController,
                      ),
                      SizedBox(height: 32,),
                      RichText(
                        text: TextSpan(
                          text: "By Creating an account, you agree to our ",
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: "Terms and Conditions ",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {

                              }
                            ),
                            TextSpan(
                              text: "and "
                            ),
                            TextSpan(
                              text: "Privacy Policy.",
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {

                              }
                            )
                          ]
                        ),
                      ),
                      SizedBox(height: 32,),
                      PrimaryButtonWidget(
                        text: "Sign Up",
                        onPressed: () {
                          widget.userViewModel.register(
                            nameController.text,
                            emailController.text,
                            passwordController.text
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(widget.userViewModel.message.toString()))
                          );
                        },
                      ),
                      SizedBox(height: 32,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(width: 8,),
                          GestureDetector(
                            child: Text(
                              "LoginLars",
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(userViewModel: widget.userViewModel,)
                                )
                              );
                            }
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}