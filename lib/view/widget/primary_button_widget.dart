part of 'widget.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const PrimaryButtonWidget({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),

      ),
    );
  }
}