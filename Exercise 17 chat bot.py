
x = input("You: ")

while x != "Bye.":

    if x == "":
        print("Robot: Did you say something?")
    elif x.islower() == True:
        print("Robot: Please use proper grammer.")
    elif x.isupper() == True:
        print("Robot: Please don't shout at me.")
    elif x.endswith("!") == True:
        print("Robot: You seem very excited!")
    elif x[-1] != (".") and x[-1] !=("?") and x[-1] != ("!"):
        print("Robot: Please use punctuation.")
    elif x.endswith("?") == True:
        print("Robot: I'll have to think about it.")
    elif x == "Hey.":
        print("Robot: Hello there.")
    elif x == "Hi.":
        print("Robot: Hello there.")
    elif x == "Hello.":
        print("Robot: Hello there.")

    else:
        print("Robot: That's very interesting.")

    x = input("You: ")



if x == "Bye.":
    print("Robot: See you later.")
