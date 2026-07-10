part of 'screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/example.png',
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 16,),
                    Text(
                      "NOCTURNAL",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4,),
                    Text(
                      "Task Studio",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32,),
                SizedBox(
                  width: double.infinity,
                  child: Card(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome Back",
                            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Enter your credentials to access your \nstudio.",
                            style: Theme.of(context).textTheme.bodyMedium,
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
                            )
                          ),
                          SizedBox(height: 32,),
                          Row(
                            children: [
                              Text(
                                "PASSWORD",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Spacer(),
                              Text(
                                "Forgot Password?",
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ],
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
                          ),
                          SizedBox(height: 32,),
                          PrimaryButtonWidget(text: "Login",),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}