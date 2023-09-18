package org.example;

import org.jpl7.Query;
import org.jpl7.Term;
import org.jpl7.Variable;

import java.util.Map;

public class  Popular {
    public Map<String, Term>[] get(String info, Variable X,Variable Y){
        Map<String, Term>[] solutions;
        if (info.equals("популярный")) {
            Query q2 =
                    new Query(
                            "is_popular",
                            new Term[]{X, Y}
                    );
            solutions = q2.allSolutions();
        }
        else {
            Query q2 =
                    new Query(
                            "no_popular",
                            new Term[]{X, Y}
                    );
            solutions = q2.allSolutions();
        }
        return solutions;
    }
}
