library inflection.PAST.test;

import 'package:unittest/unittest.dart';

import 'package:inflection/src/past.dart';
import 'package:inflection/src/irregular_past_verbs.dart';

void main() {
  group("The PastEncoder", () {
    test("converts verbs from present or participle to past", () {
      expect(PAST.convert(""), equals(""));
      expect(PAST.convert("ask"), equals("asked"));
      expect(PAST.convert("close"), equals("closed"));
      expect(PAST.convert("die"), equals("died"));
      expect(PAST.convert("phone"), equals("phoned"));
      expect(PAST.convert("play"), equals("played"));
      expect(PAST.convert("destroy"), equals("destroyed"));
      expect(PAST.convert("show"), equals("showed"));
      expect(PAST.convert("marry"), equals("married"));
      expect(PAST.convert("study"), equals("studied"));
      expect(PAST.convert("visit"), equals("visited"));
      expect(PAST.convert("miss"), equals("missed"));
      expect(PAST.convert("watch"), equals("watched"));
      expect(PAST.convert("finish"), equals("finished"));
      expect(PAST.convert("fix"), equals("fixed"));
      expect(PAST.convert("buzz"), equals("buzzed"));
    });

    test("handles irregular past verbs", () {
      irregularPastVerbs.forEach((String presentOrParticiple, String past) {
        expect(PAST.convert(presentOrParticiple), equals(past));
      });
      expect(PAST.convert("forgo"), equals("forwent"));
      expect(PAST.convert("undo"), equals("undid"));
      expect(PAST.convert("outsell"), equals("outsold"));
    });

  });
}