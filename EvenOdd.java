package com.prak;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {


        int i=0;
        int num;
        System.out.println("Enter a number please: ");

        Scanner input = new Scanner(System.in);
        num = input.nextInt();



        if(num % 2 == 0) {

            System.out.println("You entered an even number.");

        }

        else
            System.out.println("You entered an odd number");

    }
}
