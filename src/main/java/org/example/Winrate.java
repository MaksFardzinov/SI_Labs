package org.example;

import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Winrate {
    public List<String> get(int info, Map<String, Term>[] sol, String[] family, Variable Y) {
        Family family1 = new Family();
        List<String> answer = new ArrayList<>();
        List<String> final_answer = new ArrayList<>();
        if (info == 1) {
            for (Map<String, Term> solution : sol) {
                String x = String.valueOf(solution.get("X"));
                Query q4 =
                        new Query(
                                "is_winrate",
                                new Term[]{Term.textToTerm(x), Y}
                        );
                if (q4.hasSolution()) {
                    answer.add(String.valueOf(solution.get("X")));
                }
            }
            final_answer = family1.get(family, answer);

        } else {
            for (Map<String, Term> solution : sol) {
                String x = String.valueOf(solution.get("X"));
                Query q4 =
                        new Query(
                                "is_winrate",
                                new Term[]{Term.textToTerm(x), Y}
                        );
                if (!q4.hasSolution()) {
                    answer.add(String.valueOf(solution.get("X")));
                }
            }
            final_answer = family1.get(family, answer);
        }
        return answer;
    }
}
