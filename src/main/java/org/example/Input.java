package org.example;

import java.util.Scanner;

public class Input {

    public String popularity(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Введите 'популярный' если  вам нужен популярный герой или 'не популярный'" +
                " если хоите непопулярного");
        try{
            String p = sc.nextLine();
            while ((!p.equals("популярный") & !p.equals("не популярный"))){
                System.out.println("Введите 'популярный' если  вам нужен популярный герой или 'не популярный'" +
                        " если хоите непопулярного");
                p = sc.nextLine();
            }
            return p;
        }
        catch (Exception e){
            return popularity();
        }
    }
    public int winrate(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Введите '1' если  вам нужен  герой c большим винрейтом или '2'" +
                " если хоите героя с маленьким винрейтом");
        try{
            int w = sc.nextInt();
            while (w!=1 & w!=2){
                w = sc.nextInt();
            }
            return w;
        }
        catch (Exception e){
            return winrate();
        }
    }
    public String[] family(){
        String[] values = new String[2];
        Scanner sc = new Scanner(System.in);
        System.out.println("Введите имя героя чтобы установить родственные связи или \"noone\"" +
                " если не хотите их устанавливать ");
        String hero = sc.nextLine();
        values[0] = hero;
        if(!hero.equals("noone")) {
            System.out.println("Введите кем вы хотите чтобы этоо герой приходился вашему герою");
            String family_role = sc.nextLine();
            while (!family_role.equals("father") & !family_role.equals("mother") & !family_role.equals("brother")
                    & !family_role.equals("uncle") & !family_role.equals("grandpa")
                    & !family_role.equals("father") & !family_role.equals("nobody")) {
                family_role = sc.nextLine();
            }

            values[1] = family_role;
        }
        return values;
    }
}
