
domains
	disease,indication = symbol
	Patient,name = string

predicates
	hypothesis(string,disease)
	symptom(name,indication)
	response(char)
	go

clauses
	go:-
		write("Enter your name "),
		readln(Patient),
		hypothesis(Patient,Disease),
		write(Patient, " may has ",Disease,"."),nl.

 	go:-
 		write("Sorry I dont seem to be able to diagnise the disease"),nl.

	symptom(patient,sweating):-
		write("Are your sweating ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,squeezing):-
		write("Are your squeezing ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,pressure):-
		write("Are your feeling pressure ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,fullness):-
		write("Are your feeling fullness ? (y/n)"),
		response(Reply),
		Reply='y'.


	symptom(patient,burning):-
		write("Are your feeling burning ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,breath_shortness):-
		write("Do you have any breat shortness ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,fatigue):-
		write("Do you have fatigue ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,weakness):-
		write("Are your feeling weakness ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,chest_pain):-
		write("Do you have chest pain ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,discomfort_in_neck):-
		write("Are your feeling discomfort in neck ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,discomfort_in_jaw):-
		write("Are your feeling discomfort in jaw ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,pain_in_shoulders):-
		write("Are your feeling pain in shoulders ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,light_headed):-
		write("Are your feeling light headed ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,irregular_heartbeat):-
		write("Do you have irregular heartbeat ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,swelling):-
		write("Are you swelling ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,lack_of_appetite):-
		write("Do you have lack of appetite ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,chest_fluttering):-
		write("Do you have chest fluttering ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,slow_heartbeat):-
		write("Do you have slow heartbeat ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,racing_heartbeat):-
		write("Do you have racing heartbeat ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,anxiety):-
		write("Do you have anxiety ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,dizziness):-
		write("Do you have dizziness ? (y/n)"),
		response(Reply),
		Reply='y'.

	symptom(patient,lightheadedness):-
		write("Do you have lightheadedness? (y/n)"),
		response(Reply),
		Reply='y'.


hypothesis(Patient,angina):-
	symptom(Patient,sweating),
	symptom(Patient,squeezing),
	symptom(Patient,pressure),
	symptom(Patient,fullness),
	symptom(Patient,burning),
	symptom(Patient,breath_shortness),
	symptom(Patient,fatigue),
	symptom(Patient,weakness).

hypothesis(Patient,heart_attack):-
	symptom(Patient,chest_pain),
	symptom(Patient,weakness),
	symptom(Patient,discomfort_in_neck),
	symptom(Patient,discomfort_in_jaw),
	symptom(Patient,breath_shortness),
	symptom(Patient,pain_in_shoulders),
	symptom(Patient,light_headed),
	symptom(Patient,irregular_heartbeat).

hypothesis(Patient,heart_failure):-
	symptom(Patient,chest_pain),
	symptom(Patient,weakness),
	symptom(Patient,swelling),
	symptom(Patient,lack_of_appetite),
	symptom(Patient,chest_fluttering),
	symptom(Patient,irregular_heartbeat).

hypothesis(Patient,heart_arrhythmia):-
	symptom(Patient,weakness),
	symptom(Patient,slow_heartbeat),
	symptom(Patient,racing_heartbeat),
	symptom(Patient,anxiety),
	symptom(Patient,chest_fluttering),
	symptom(Patient,dizziness),
	symptom(Patient,lightheadedness).

response(Reply):-
	readchar(Reply),
	write(Reply),nl.




