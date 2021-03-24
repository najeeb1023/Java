package com.prac;

import java.util.Scanner;

import java.util.Arrays;

public class Main {

    public static void main(String[] args) {

        takeUserInput();


    }

    public static int takeUserInput(){

        int num;
        System.out.println("Please entered a num: ");
        Scanner input = new Scanner(System.in);
        num = input.nextInt();

        if(num == 2 || num == 3 || num == 5 || num == 7 || num == 11 || num == 13
                || num == 17 || num == 19 || num == 23 || num == 29 || num == 31) {

            System.out.println("You entered a prime number: "+prime());

        }

        else {
            System.out.println("You entered a non-prime number.");
        }

        return num;

    }

    public static boolean prime() {

       int[] primeArray = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31};

       return true;

    }

}
