import java.util.Scanner;

class calculator {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter the value of A and B");
        int a = sc.nextInt();
        int b = sc.nextInt();
        int c = 0;
        System.out.println("Enter your choice");
        char op = sc.next().charAt(0);
         
        switch (op) {
            case '+':
                c = a + b;
                break;
            case '-':
                c = a - b
                break;
            case '*':
                c = a * b
            case '/':
                c = a / b
            default:
                System.out.println("You entered wrong input");
        }
        System.out.println(a + " " + op + " " + b + " = " + c);
        sc.close();
    }

}