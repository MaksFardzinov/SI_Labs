package org.example;

import org.jpl7.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


public class Main {
    public static void main(String[] args) {
        Input input = new Input();
        Popular popular = new Popular();
        Winrate winrate = new Winrate();
        Family family = new Family();
        Output output = new Output();
        String popularity = input.popularity();
        int winrate1 = input.winrate();
        Variable X = new Variable("X");
        Variable Y = new Variable("_");
        Map<String, Term>[] solutions;
        String[] family1 = input.family();
        Query q1 =
                new Query(
                        "consult",
                        new Term[] {new Atom("src/main/resources/mason.pl")}
                );
        q1.hasSolution();
        solutions = popular.get(popularity,X,Y);
        List<String> final_answer = family.get(family1,winrate.get(winrate1,solutions,family1,Y));
        output.answer(final_answer);
    }
}