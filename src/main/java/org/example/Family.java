package org.example;

import org.jpl7.Query;
import org.jpl7.Term;

import java.util.ArrayList;
import java.util.List;

public class Family {
    public List<String> get(String[] family,List<String> answer ) {
        List<String> final_answer = new ArrayList<>();
        if (!family[0].equals("noone")) {
            for (String value : answer) {
                String hero = family[0];
                hero = new StringBuilder(hero).insert(hero.length(), "'").insert(0, "'").toString();
                Query q5 =
                        new Query(
                                family[1],
                                new Term[]{Term.textToTerm(hero), Term.textToTerm(value)}
                        );
                if (q5.hasSolution()) {
                    final_answer.add(value);
                }
            }
        } else {
            final_answer = answer;
        }
        return final_answer;
    }
}
