User.create!([
  {email: "stefan.vlahov5@gmail.com", encrypted_password: "$2a$11$yzLFJLnRyRX7klr6/O/ACOZIblYzikluJam09hgdLZnDSRdyHOBO2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2016-06-19 19:18:38", last_sign_in_at: "2016-06-19 18:13:40", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil},
  {email: "josh@test.com", encrypted_password: "$2a$11$8smr0R2z3rqxslQjcn/aoOJvNJxAI0WXV.ZeHLZwYPiSNd/fyz6ue", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-06-19 20:47:14", last_sign_in_at: "2016-06-19 20:47:14", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil},
  {email: "stefan@gmail.com", encrypted_password: "$2a$11$dJmAZT0qkQuKw3WIjpNcCOQJvVydLpI4A7CLL3tZHZNNlLLIO5uDK", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2016-06-20 14:52:02", last_sign_in_at: "2016-06-20 14:51:06", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil},
  {email: "test@test.com", encrypted_password: "$2a$11$80sGzoyEp1vlT6fm5DDZDuk5azLkVsjgCbakRlxq/AQdnjZ./gmJO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2016-06-24 15:44:57", sign_in_count: 13, current_sign_in_at: "2016-06-30 21:32:58", last_sign_in_at: "2016-06-29 16:19:09", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: nil}
])
Answer.create!([
  {answer: "None", question_id: 2, multiplier: -9},
  {answer: "1 - 2 days per week", question_id: 2, multiplier: 2},
  {answer: "3 - 5 days per week", question_id: 2, multiplier: 7},
  {answer: "6+ days per week", question_id: 2, multiplier: 9},
  {answer: "None", question_id: 3, multiplier: -8},
  {answer: "1 Per Day", question_id: 3, multiplier: -4},
  {answer: "2 Per Day", question_id: 3, multiplier: 2},
  {answer: "3 Per Day", question_id: 3, multiplier: 6},
  {answer: "4+ Per Day", question_id: 3, multiplier: 8},
  {answer: "8+ hours", question_id: 4, multiplier: -9},
  {answer: "5 - 7 hours", question_id: 4, multiplier: -7},
  {answer: "3 - 4 hours", question_id: 4, multiplier: -4},
  {answer: "Less than 2 hours", question_id: 4, multiplier: 3},
  {answer: "None (or close to it)", question_id: 5, multiplier: 8},
  {answer: "1 - 2 servings per week", question_id: 5, multiplier: 6},
  {answer: "3 - 5 servings per week", question_id: 5, multiplier: -4},
  {answer: "6+ servings per week", question_id: 5, multiplier: -8},
  {answer: "Car/Motorcycle", question_id: 6, multiplier: -9},
  {answer: "Public Transport", question_id: 6, multiplier: -5},
  {answer: "Bicycle", question_id: 6, multiplier: 6},
  {answer: "Walking", question_id: 6, multiplier: 9},
  {answer: "4 hours or less", question_id: 7, multiplier: -9},
  {answer: "5 - 6 hours", question_id: 7, multiplier: -8},
  {answer: "6 - 7 hours", question_id: 7, multiplier: -2},
  {answer: "7.5 hours+", question_id: 7, multiplier: 9},
  {answer: "6 hours or less", question_id: 8, multiplier: 10},
  {answer: "7 - 8 hours", question_id: 8, multiplier: 5},
  {answer: "8 - 10 hours", question_id: 8, multiplier: -5},
  {answer: "10+ hours", question_id: 8, multiplier: -10},
  {answer: "Read a Book", question_id: 9, multiplier: 6},
  {answer: "Use Laptop/Tablet to browse the internet or play games", question_id: 9, multiplier: -8},
  {answer: "Use Cellphone to text or browse internet", question_id: 9, multiplier: -6},
  {answer: "Watch Television", question_id: 9, multiplier: -5},
  {answer: "Listen to Music", question_id: 9, multiplier: 1},
  {answer: "I just go straight to sleep", question_id: 9, multiplier: 9},
  {answer: "No I don't meditate", question_id: 10, multiplier: -8},
  {answer: "1 - 2 times per week", question_id: 10, multiplier: 2},
  {answer: "3 - 4 times per week", question_id: 10, multiplier: 8},
  {answer: "5+ times per week", question_id: 10, multiplier: 10},
  {answer: "Less than an hour per day", question_id: 11, multiplier: 8},
  {answer: "1 - 2 hours per day", question_id: 11, multiplier: -2},
  {answer: "2 - 3 hours per day", question_id: 11, multiplier: -7},
  {answer: "3+ hours per day", question_id: 11, multiplier: -10}
])
Answer::HABTM_Treatments.create!([
  {answer_id: 1, treatment_id: 2},
  {answer_id: 1, treatment_id: 3},
  {answer_id: 1, treatment_id: 8},
  {answer_id: 2, treatment_id: 3},
  {answer_id: 3, treatment_id: 6},
  {answer_id: 1, treatment_id: 5},
  {answer_id: 2, treatment_id: 5},
  {answer_id: 6, treatment_id: 4},
  {answer_id: 6, treatment_id: 9},
  {answer_id: 7, treatment_id: 9},
  {answer_id: 8, treatment_id: 4},
  {answer_id: 10, treatment_id: 8},
  {answer_id: 10, treatment_id: 2},
  {answer_id: 10, treatment_id: 3},
  {answer_id: 10, treatment_id: 5},
  {answer_id: 11, treatment_id: 8},
  {answer_id: 11, treatment_id: 3},
  {answer_id: 11, treatment_id: 5},
  {answer_id: 12, treatment_id: 8},
  {answer_id: 12, treatment_id: 6},
  {answer_id: 13, treatment_id: 3},
  {answer_id: 15, treatment_id: 4},
  {answer_id: 16, treatment_id: 9},
  {answer_id: 16, treatment_id: 4},
  {answer_id: 17, treatment_id: 9},
  {answer_id: 17, treatment_id: 4},
  {answer_id: 18, treatment_id: 8},
  {answer_id: 18, treatment_id: 2},
  {answer_id: 18, treatment_id: 3},
  {answer_id: 18, treatment_id: 5},
  {answer_id: 19, treatment_id: 8},
  {answer_id: 19, treatment_id: 7},
  {answer_id: 20, treatment_id: 6},
  {answer_id: 22, treatment_id: 10},
  {answer_id: 22, treatment_id: 12},
  {answer_id: 22, treatment_id: 7},
  {answer_id: 22, treatment_id: 3},
  {answer_id: 23, treatment_id: 10},
  {answer_id: 23, treatment_id: 12},
  {answer_id: 23, treatment_id: 7},
  {answer_id: 23, treatment_id: 3},
  {answer_id: 24, treatment_id: 10},
  {answer_id: 24, treatment_id: 7},
  {answer_id: 24, treatment_id: 3},
  {answer_id: 27, treatment_id: 13},
  {answer_id: 27, treatment_id: 7},
  {answer_id: 28, treatment_id: 6},
  {answer_id: 28, treatment_id: 3},
  {answer_id: 29, treatment_id: 6},
  {answer_id: 29, treatment_id: 11},
  {answer_id: 29, treatment_id: 2},
  {answer_id: 30, treatment_id: 12},
  {answer_id: 31, treatment_id: 10},
  {answer_id: 31, treatment_id: 12},
  {answer_id: 31, treatment_id: 7},
  {answer_id: 31, treatment_id: 3},
  {answer_id: 32, treatment_id: 10},
  {answer_id: 32, treatment_id: 12},
  {answer_id: 32, treatment_id: 7},
  {answer_id: 32, treatment_id: 3},
  {answer_id: 33, treatment_id: 10},
  {answer_id: 33, treatment_id: 12},
  {answer_id: 33, treatment_id: 7},
  {answer_id: 34, treatment_id: 10},
  {answer_id: 34, treatment_id: 3},
  {answer_id: 36, treatment_id: 6},
  {answer_id: 36, treatment_id: 11},
  {answer_id: 36, treatment_id: 7},
  {answer_id: 37, treatment_id: 11},
  {answer_id: 38, treatment_id: 10},
  {answer_id: 40, treatment_id: 10},
  {answer_id: 41, treatment_id: 6},
  {answer_id: 41, treatment_id: 10},
  {answer_id: 42, treatment_id: 6},
  {answer_id: 42, treatment_id: 11},
  {answer_id: 43, treatment_id: 6},
  {answer_id: 43, treatment_id: 11},
  {answer_id: 43, treatment_id: 2}
])
Category.create!([
  {name: "Diet", influence_score: "8.0"},
  {name: "Exercise", influence_score: "9.0"},
  {name: "Sleep", influence_score: "9.0"},
  {name: "Stress", influence_score: "10.0"}
])
Question.create!([
  {question: "How often do you do aerobic exercise each week?", category_id: 2, influence_score: 9},
  {question: "How many vegetable servings per day do you consume?", category_id: 1, influence_score: 8},
  {question: "How many hours per day do you spend in a seated position?", category_id: 2, influence_score: 9},
  {question: "How much refined sugar per week do you consume?", category_id: 1, influence_score: 8},
  {question: "What method do you use to commute?", category_id: 2, influence_score: 9},
  {question: "How many hours per night do you sleep?", category_id: 3, influence_score: 9},
  {question: "How many hours per day do you spend working on your day job?", category_id: 4, influence_score: 10},
  {question: "What activity do you engage in before going to sleep?", category_id: 3, influence_score: 9},
  {question: "Do you meditate? If yes, how often?", category_id: 4, influence_score: 10},
  {question: "How much time daily do you spend worrying about personal or professional matters?", category_id: 4, influence_score: 10}
])
Treatment.create!([
  {name: "Yoga", influence_score: "8.0", description: "Yoga works by putting the body in stressful positions physically, but keeping the mind calm. This improves anxiety and stress responses while also keeping the body fit. Yoga classes are widely available, but some people are self-taught. Benefits are observed within 2 months of regular practice."},
  {name: "Acupuncture", influence_score: "7.0", description: "By stimulating specific nerve endings, acupuncture can increase blood circulation. While this has many physical benefits it also relaxes the mind and is a long-term stress reducer with regular bi-weekly sessions. Only professionals can perform acupuncture. Benefits are usually observed after the first session."},
  {name: "Supplements", influence_score: "5.0", description: "It is usually highly recommended to consult a doctor before using supplements. Most people don't have a diet that meets all the vitamin and beneficial fat requirements. High-quality supplements are recommended."},
  {name: "Tai Chi/Martial Arts", influence_score: "7.0", description: "Taiji and Martial Arts have traditionally been used for increased body awareness and physical fitness. Long-term practice is known to greatly improve stress responses to the point of staying calm in the most stressful situations imaginable (after ~ 2 years of practice). Professional training is recommended."},
  {name: "Biofeedback", influence_score: "9.0", description: "Biofeedback is used to increase self awareness of how your body reacts in different situations. After just a few sessions, you will be better able to notice and even address physical and mental negative reactions to external stimulants. Professional sessions are recommended and becoming more widely available."},
  {name: "Massage Therapy", influence_score: "5.0", description: "Regular massage therapy sessions have shown increased athletic performance, better sleep patterns, and a noticeable reduction of stress after just one session. Repeat sessions (bi-weekly) are recommended for long-term physiological and stress-reduction benefits."},
  {name: "Running", influence_score: "9.0", description: "Running has been shown to be the most effective stress reducer of all of the aerobic exercises. Running outdoors can have a greater impact than on the treadmill. Running is more beneficial for stress than anaerobic exercise, bicycling and stretching. It also has better short term impact than yoga."},
  {name: "Nutrition Training", influence_score: "9.0", description: "Consulting a nutritionist is the safest way to improve your diet. A nutritionist will tailor the diet plan to the individual, accounting for any specific dietary needs or limitations for that individual. An improved diet has shown to benefit cognitive and physiological function."},
  {name: "Hypnotherapy", influence_score: "7.0", description: "Hypnotherapy can be used in many specific cases, but one of it's main applications is to reduce stressors, increase self-awareness, and heal the mind and body. Hypnotherapy can be learned quickly. After just a few sessions, most people gain a self-hypnosis ability."},
  {name: "Meditation", influence_score: "8.0", description: "Meditation is used to reduce stress responses and heal the mind. In long-term practice, it even has physiological benefits like lowered blood pressure and better mobile performance. Meditation can be self-taught. Benefits are usually monitored within two weeks of starting regular practice."},
  {name: "Audio Entrainment", influence_score: "5.0", description: "Audio entrainment is seen as a supplemental on-the-spot treatment that does not have lasting long-term effects, but can be used to manipulate the brain waves in specific situations. It is most widely used by people with irregular sleep patterns. Binaural Beats and Isochronic Tones are the most widely used entrainment methods."},
  {name: "Get a Pet", influence_score: "4.0", description: "Owning a pet has shown some improvements in stress reduction and anxiety. Taking care of a pet can be a beneficial cognitive stimulant as well. Remember to adopt."}
])
Treatment::HABTM_Answers.create!([
  {answer_id: 1, treatment_id: 2},
  {answer_id: 1, treatment_id: 3},
  {answer_id: 1, treatment_id: 8},
  {answer_id: 2, treatment_id: 3},
  {answer_id: 3, treatment_id: 6},
  {answer_id: 1, treatment_id: 5},
  {answer_id: 2, treatment_id: 5},
  {answer_id: 6, treatment_id: 4},
  {answer_id: 6, treatment_id: 9},
  {answer_id: 7, treatment_id: 9},
  {answer_id: 8, treatment_id: 4},
  {answer_id: 10, treatment_id: 8},
  {answer_id: 10, treatment_id: 2},
  {answer_id: 10, treatment_id: 3},
  {answer_id: 10, treatment_id: 5},
  {answer_id: 11, treatment_id: 8},
  {answer_id: 11, treatment_id: 3},
  {answer_id: 11, treatment_id: 5},
  {answer_id: 12, treatment_id: 8},
  {answer_id: 12, treatment_id: 6},
  {answer_id: 13, treatment_id: 3},
  {answer_id: 15, treatment_id: 4},
  {answer_id: 16, treatment_id: 9},
  {answer_id: 16, treatment_id: 4},
  {answer_id: 17, treatment_id: 9},
  {answer_id: 17, treatment_id: 4},
  {answer_id: 18, treatment_id: 8},
  {answer_id: 18, treatment_id: 2},
  {answer_id: 18, treatment_id: 3},
  {answer_id: 18, treatment_id: 5},
  {answer_id: 19, treatment_id: 8},
  {answer_id: 19, treatment_id: 7},
  {answer_id: 20, treatment_id: 6},
  {answer_id: 22, treatment_id: 10},
  {answer_id: 22, treatment_id: 12},
  {answer_id: 22, treatment_id: 7},
  {answer_id: 22, treatment_id: 3},
  {answer_id: 23, treatment_id: 10},
  {answer_id: 23, treatment_id: 12},
  {answer_id: 23, treatment_id: 7},
  {answer_id: 23, treatment_id: 3},
  {answer_id: 24, treatment_id: 10},
  {answer_id: 24, treatment_id: 7},
  {answer_id: 24, treatment_id: 3},
  {answer_id: 27, treatment_id: 13},
  {answer_id: 27, treatment_id: 7},
  {answer_id: 28, treatment_id: 6},
  {answer_id: 28, treatment_id: 3},
  {answer_id: 29, treatment_id: 6},
  {answer_id: 29, treatment_id: 11},
  {answer_id: 29, treatment_id: 2},
  {answer_id: 30, treatment_id: 12},
  {answer_id: 31, treatment_id: 10},
  {answer_id: 31, treatment_id: 12},
  {answer_id: 31, treatment_id: 7},
  {answer_id: 31, treatment_id: 3},
  {answer_id: 32, treatment_id: 10},
  {answer_id: 32, treatment_id: 12},
  {answer_id: 32, treatment_id: 7},
  {answer_id: 32, treatment_id: 3},
  {answer_id: 33, treatment_id: 10},
  {answer_id: 33, treatment_id: 12},
  {answer_id: 33, treatment_id: 7},
  {answer_id: 34, treatment_id: 10},
  {answer_id: 34, treatment_id: 3},
  {answer_id: 36, treatment_id: 6},
  {answer_id: 36, treatment_id: 11},
  {answer_id: 36, treatment_id: 7},
  {answer_id: 37, treatment_id: 11},
  {answer_id: 38, treatment_id: 10},
  {answer_id: 40, treatment_id: 10},
  {answer_id: 41, treatment_id: 6},
  {answer_id: 41, treatment_id: 10},
  {answer_id: 42, treatment_id: 6},
  {answer_id: 42, treatment_id: 11},
  {answer_id: 43, treatment_id: 6},
  {answer_id: 43, treatment_id: 11},
  {answer_id: 43, treatment_id: 2}
])
UserAnswer.create!([
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 15, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 11, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 13, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 17, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 6, user_survey_id: nil},
  {answer_id: 11, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 6, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 17, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 6, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 15, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: nil, user_survey_id: nil},
  {answer_id: 4, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 9, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 4, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 17, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 6, user_survey_id: nil},
  {answer_id: 11, user_survey_id: nil},
  {answer_id: 15, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 6, user_survey_id: nil},
  {answer_id: 11, user_survey_id: nil},
  {answer_id: 15, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 13, user_survey_id: nil},
  {answer_id: 14, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 14, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 11, user_survey_id: nil},
  {answer_id: 15, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 15, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 6, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 2, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 17, user_survey_id: nil},
  {answer_id: 4, user_survey_id: nil},
  {answer_id: 9, user_survey_id: nil},
  {answer_id: 13, user_survey_id: nil},
  {answer_id: 14, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 17, user_survey_id: nil},
  {answer_id: 4, user_survey_id: nil},
  {answer_id: 9, user_survey_id: nil},
  {answer_id: 13, user_survey_id: nil},
  {answer_id: 14, user_survey_id: nil},
  {answer_id: 1, user_survey_id: nil},
  {answer_id: 5, user_survey_id: nil},
  {answer_id: 10, user_survey_id: nil},
  {answer_id: 17, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 8, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 3, user_survey_id: nil},
  {answer_id: 7, user_survey_id: nil},
  {answer_id: 12, user_survey_id: nil},
  {answer_id: 16, user_survey_id: nil},
  {answer_id: 1, user_survey_id: 4},
  {answer_id: 3, user_survey_id: 6},
  {answer_id: 3, user_survey_id: 8},
  {answer_id: 5, user_survey_id: 8},
  {answer_id: 11, user_survey_id: 8},
  {answer_id: 17, user_survey_id: 8},
  {answer_id: 4, user_survey_id: 9},
  {answer_id: 6, user_survey_id: 9},
  {answer_id: 11, user_survey_id: 9},
  {answer_id: 16, user_survey_id: 9},
  {answer_id: 2, user_survey_id: 10},
  {answer_id: 8, user_survey_id: 10},
  {answer_id: 11, user_survey_id: 10},
  {answer_id: 16, user_survey_id: 10},
  {answer_id: 3, user_survey_id: 11},
  {answer_id: 7, user_survey_id: 11},
  {answer_id: 12, user_survey_id: 11},
  {answer_id: 15, user_survey_id: 11},
  {answer_id: 4, user_survey_id: 12},
  {answer_id: 9, user_survey_id: 12},
  {answer_id: 13, user_survey_id: 12},
  {answer_id: 14, user_survey_id: 12},
  {answer_id: 1, user_survey_id: 13},
  {answer_id: 5, user_survey_id: 13},
  {answer_id: 10, user_survey_id: 13},
  {answer_id: 17, user_survey_id: 13},
  {answer_id: 3, user_survey_id: 14},
  {answer_id: 7, user_survey_id: 14},
  {answer_id: 13, user_survey_id: 14},
  {answer_id: 14, user_survey_id: 14},
  {answer_id: 2, user_survey_id: 15},
  {answer_id: 7, user_survey_id: 15},
  {answer_id: 11, user_survey_id: 15},
  {answer_id: 16, user_survey_id: 15},
  {answer_id: 3, user_survey_id: 16},
  {answer_id: 6, user_survey_id: 16},
  {answer_id: 11, user_survey_id: 16},
  {answer_id: 16, user_survey_id: 16},
  {answer_id: 3, user_survey_id: 17},
  {answer_id: 6, user_survey_id: 17},
  {answer_id: 11, user_survey_id: 17},
  {answer_id: 16, user_survey_id: 17},
  {answer_id: 4, user_survey_id: 18},
  {answer_id: 7, user_survey_id: 18},
  {answer_id: 12, user_survey_id: 18},
  {answer_id: 15, user_survey_id: 18},
  {answer_id: 2, user_survey_id: 19},
  {answer_id: 5, user_survey_id: 19},
  {answer_id: 12, user_survey_id: 19},
  {answer_id: 15, user_survey_id: 19},
  {answer_id: 3, user_survey_id: 20},
  {answer_id: 6, user_survey_id: 20},
  {answer_id: 11, user_survey_id: 20},
  {answer_id: 16, user_survey_id: 20},
  {answer_id: 3, user_survey_id: 21},
  {answer_id: 5, user_survey_id: 21},
  {answer_id: 12, user_survey_id: 21},
  {answer_id: 16, user_survey_id: 21},
  {answer_id: 3, user_survey_id: 22},
  {answer_id: 6, user_survey_id: 22},
  {answer_id: 11, user_survey_id: 22},
  {answer_id: 17, user_survey_id: 22},
  {answer_id: 3, user_survey_id: 23},
  {answer_id: 7, user_survey_id: 23},
  {answer_id: 11, user_survey_id: 23},
  {answer_id: 14, user_survey_id: 23},
  {answer_id: 3, user_survey_id: 24},
  {answer_id: 6, user_survey_id: 24},
  {answer_id: 10, user_survey_id: 24},
  {answer_id: 16, user_survey_id: 24},
  {answer_id: 2, user_survey_id: 25},
  {answer_id: 5, user_survey_id: 25},
  {answer_id: 13, user_survey_id: 25},
  {answer_id: 17, user_survey_id: 25},
  {answer_id: 2, user_survey_id: 26},
  {answer_id: 7, user_survey_id: 26},
  {answer_id: 13, user_survey_id: 26},
  {answer_id: 16, user_survey_id: 26},
  {answer_id: 3, user_survey_id: 27},
  {answer_id: 6, user_survey_id: 27},
  {answer_id: 11, user_survey_id: 27},
  {answer_id: 16, user_survey_id: 27},
  {answer_id: 3, user_survey_id: 28},
  {answer_id: 7, user_survey_id: 28},
  {answer_id: 11, user_survey_id: 28},
  {answer_id: 16, user_survey_id: 28}
])
UserSurvey.create!([
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2},
  {user_id: 2}
])
