package org.example;

import java.util.List;

public class Output {
    public void answer(List<String> answers){
        if(answers.size()>0) {
            System.out.println("Вам подходят героии:");
            for (String s : answers) {
                System.out.println(s);
            }
        }
        else{
            System.out.println("нет подходящих героев");
        }
    }
}
