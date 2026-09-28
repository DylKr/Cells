# Lab Report: Cells
CS-3180: Comparative Languages

Student Name: [Dylan Krebs]
Date: [9/24/26]
Environment Specs: [e.g. Windows 11, SBCL 2.3.2]


## Part 1: S-Expressions and Lisp Syntax

1. In Lisp, both code and data are written as S-expressions. Explain the syntactic difference between an *atom* and a *list* in Lisp's grammar. (Foreshadowing a future project, your knowledge of this will be useful. Hold onto your explanation as a reference)

[An atom is a single value in a Lisp S-expression like a symbol or number or any other basic value. A list is a sequence of S-expressions enclosed in parentheses. ALICE is an atom and (ALICE BOB CHARLIE) is a list containing three atoms. The lists can contain other lists and this allows S-expressions to be nested. In Lisp both atoms and lists follow the same general S-expression syntax. This allows Lisp to represent both program code and data using the same basic structures.]

2. Lisp uses a minimal context-free grammar, but its evaluation rules are highly specific, depending mostly on how the parentheses fall.
- How does the Lisp interpreter determine whether to evaluate an S-expression or treat it as literal data?
- Explain what the quote (`'`) character actually does to prevent evaluation. Why was it was required when you defined symbols like `'ALICE` or `'BOB` in any of your definitions.

[The Lisp interpreter uses the parentheses and the first element of an S-expression to determine how it should be evaluated. The list is usually treated as an expression to evaluate where the first element is interpreted as a function. The (cons 'ALICE nil) is evaluated by calling the cons function and a quoted expression is treated as literal data instead of being evaluated. 'ALICE is shorthand for (quote ALICE) and this tells Lisp to treat ALICE as literal data rather than evaluate it.]

3. `lisp.sh`
Look at how `lisp.sh` executes SBCL. We are passing some weird arguments here like `--no-userinit` and setting the evaluator mode to `:interpret`? Why might we want to force our Lisp programs to run in an interpreter mode for learning environments rather than pre-compiling them (at runtime, kinda, it's complicated), like SBCL will do by default?

[The lisp.sh script forces SBCL to run the Lisp program in interpreter mode instead of compiling the code at runtime. This helps when learning the language because it makes the behavior of the Lisp code easier to understand and how the Lisp expressions are evaluated. SBCL will use a compiler normally and that can make the execution process more complicated to deal with basic concepts.]


## Part 2: Scope and Memory Structures

4. You used `setf` to bind a structural list to a global namespace variable. Why is mutating global state generally discouraged in functional programming? What local scoping keywords does Lisp give you if you want to temporarily bind a value safely inside a local scope instead? (If we haven't yet talked about this in lecture, feel free to do some research)

[Lisp provides local binding constructs such as let and let* and this allows values to be bound within a limited local scope instead of modifying global state. Mutating global state is normally discouraged in functional programming because it can make the programs harder to understand. It can make functions less predictable if a global variable can be changed by a different part of the program. Using local binding is a better option because the values do not modify the global namespace and their scope is limited to where they are needed.]


## Part 3: Generative AI Disclosure

Remember, the course strict citation guidelines for AI usage. At least 50% of the submitted code must be your own work, and any AI-generated help must be fully documented below.

6. AI Tools Utilized:
- [ ] No generative AI was used on this assignment.
- [x] Gemini (Google)
- [ ] ChatGPT (OpenAI)
- [ ] Claude (Anthropic)
- [ ] GitHub Copilot
- [ ] Other: [Specify]

7. Conversation Logs:
(If you used any chat-based tools, paste the public shareable links below.)
- Link 1: [Paste URL here]
- Link 2: [Paste URL here]

8. Prompting, Modification, Original Contribution Log
Explain what you asked the model to generate. What parts did you use directly and what modifications did you have to perform to adapt it to your final program. Specifically, detail how you ensured that you authored at least 50% of the code yourself.

[I used Google to research deeper into the Lisp syntax and how to get not only the program to actually run and return output but how to get the con, car, and cdr within the project guielines. Since Google has the prompt at the start of the page where it shows AI I did take information from that again to work out the project but I did not have it writet any code for me.]