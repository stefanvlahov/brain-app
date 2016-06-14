Answer.create!([
  {answer: "None", question_id: 2},
  {answer: "1 - 2 days per week", question_id: 2},
  {answer: "3 - 5 days per week", question_id: 2},
  {answer: "6+ days per week", question_id: 2},
  {answer: "None", question_id: 3},
  {answer: "1 Per Day", question_id: 3},
  {answer: "2 Per Day", question_id: 3},
  {answer: "3 Per Day", question_id: 3},
  {answer: "4+ Per Day", question_id: 3},
  {answer: "8+ hours", question_id: 4},
  {answer: "5 - 7 hours", question_id: 4},
  {answer: "3 - 4 hours", question_id: 4},
  {answer: "Less than 2 hours", question_id: 4},
  {answer: "None (or close to it)", question_id: 5},
  {answer: "1 - 2 servings per week", question_id: 5},
  {answer: "3 - 5 servings per week", question_id: 5},
  {answer: "6+ servings per week", question_id: 5}
])
Category.create!([
  {name: "Diet", influence_score: "8.0"},
  {name: "Exercise", influence_score: "9.0"}
])
Question.create!([
  {question: "How often do you do aerobic exercise each week?", category_id: 2},
  {question: "How many vegetable servings per day do you consume?", category_id: 1},
  {question: "How many hours per day do you spend in a seated position?", category_id: 2},
  {question: "How much refined sugar per week do you consume?", category_id: 1}
])
Treatment.create!([
  {name: "Yoga", influence_score: "8.0", description: "Yoga works by putting the body in stressful positions physically, but keeping the mind calm. This improves anxiety and stress responses while also keeping the body fit. Yoga classes are widely available, but some people are self-taught. Benefits are observed within 2 months of regular practice."},
  {name: "Acupuncture", influence_score: "7.0", description: "By stimulating specific nerve endings, acupuncture can increase blood circulation. While this has many physical benefits it also relaxes the mind and is a long-term stress reducer with regular bi-weekly sessions. Only professionals can perform acupuncture. Benefits are usually observed after the first session."},
  {name: "Supplements", influence_score: "5.0", description: "It is usually highly recommended to consult a doctor before using supplements. Most people don't have a diet that meets all the vitamin and beneficial fat requirements. High-quality supplements are recommended."},
  {name: "Tai Chi/Martial Arts", influence_score: "7.0", description: "Taiji and Martial Arts have traditionally been used for increased body awareness and physical fitness. Long-term practice is known to greatly improve stress responses to the point of staying calm in the most stressful situations imaginable (after ~ 2 years of practice). Professional training is recommended."},
  {name: "Biofeedback", influence_score: "9.0", description: "Biofeedback is used to increase self awareness of how your body reacts in different situations. After just a few sessions, you will be better able to notice and even address physical and mental negative reactions to external stimulants. Professional sessions are recommended and becoming more widely available."},
  {name: "Massage Therapy", influence_score: "5.0", description: "Regular massage therapy sessions have shown increased athletic performance, better sleep patterns, and a noticeable reduction of stress after just one session. Repeat sessions (bi-weekly) are recommended for long-term physiological and stress-reduction benefits."},
  {name: "Running", influence_score: "9.0", description: "Running has been shown to be the most effective stress reducer of all of the aerobic exercises. Running outdoors can have a greater impact than on the treadmill. Running is more beneficial for stress than anaerobic exercise, bicycling and stretching. It also has better short term impact than yoga."},
  {name: "Nutrition Training", influence_score: "9.0", description: "Consulting a nutritionist is the safest way to improve your diet. A nutritionist will tailor the diet plan to the individual, accounting for any specific dietary needs or limitations for that individual. An improved diet has shown to benefit cognitive and physiological function."}
])
