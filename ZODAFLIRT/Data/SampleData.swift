//
//  SampleData.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

struct SampleData {

    static func getProfile(for sign: ZodiacSign) -> ZodiacProfile {
        switch sign {
        case .aries: return ariesProfile
        case .taurus: return taurusProfile
        case .gemini: return geminiProfile
        case .cancer: return cancerProfile
        case .leo: return leoProfile
        case .virgo: return virgoProfile
        case .libra: return libraProfile
        case .scorpio: return scorpioProfile
        case .sagittarius: return sagittariusProfile
        case .capricorn: return capricornProfile
        case .aquarius: return aquariusProfile
        case .pisces: return piscesProfile
        }
    }

    // MARK: - Aries (March 21 – April 19)

    static let ariesProfile = ZodiacProfile(
        sign: .aries,
        tagline: "The Lure of an Aries",
        introduction: "Aries are magnetic because they radiate confidence and fearlessness. They're the ones who walk into a room and immediately command attention—not by trying, but by simply being themselves. Bold, direct, and refreshingly honest, they make you feel like anything is possible when you're with them.",
        howToAttract: ProfileSection(
            title: "How to Interest an Aries",
            content: "Be confident and direct—Aries can't stand games or passive behavior. Challenge them intellectually, tease them playfully, and don't be afraid to disagree. Show that you have your own life, ambitions, and opinions. They're attracted to people who match their energy and aren't intimidated by their intensity. Spontaneity is key—suggest an adventure, not a quiet dinner.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce an Aries",
            introduction: "Seducing an Aries is about matching their fire without getting burned. They want passion, excitement, and someone who can keep up.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Competitive Spark",
                    description: "Challenge them to something—a game, a bet, a race. Let the tension build through competition. Aries gets turned on by winning, but even more by someone who almost beats them."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Bold Move",
                    description: "Skip the small talk. Look them in the eyes and say exactly what you're thinking. Aries respects courage above almost everything else."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Spontaneous Escape",
                    description: "Text them at 10pm with a wild idea—a late-night drive, a rooftop, an impromptu trip. Aries falls for people who can match their impulsive energy."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Aries likes it passionate and intense. They're not into slow, tender moments early on—they want fire. Physical chemistry with Aries is competitive, playful, and urgent. They like to lead but respect someone who can push back. Don't be passive—match their energy and don't be afraid to initiate.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be direct and confident", isPositive: true),
            ChecklistItem("Keep things exciting and spontaneous", isPositive: true),
            ChecklistItem("Challenge them intellectually", isPositive: true),
            ChecklistItem("Have your own goals and ambitions", isPositive: true),
            ChecklistItem("Match their physical energy", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being passive or indecisive", isPositive: false),
            ChecklistItem("Playing hard to get for too long", isPositive: false),
            ChecklistItem("Trying to control or tame them", isPositive: false),
            ChecklistItem("Being overly emotional early on", isPositive: false),
            ChecklistItem("Routine and predictability", isPositive: false)
        ]
    )

    // MARK: - Taurus (April 20 – May 20)

    static let taurusProfile = ZodiacProfile(
        sign: .taurus,
        tagline: "The Lure of a Taurus",
        introduction: "Taurus is irresistible because they embody sensuality and stability. They move through life with a quiet confidence, appreciating beauty, comfort, and the finer things. Being with a Taurus feels grounding—like coming home to something solid and real. They're loyal, patient, and deeply romantic once they let you in.",
        howToAttract: ProfileSection(
            title: "How to Interest a Taurus",
            content: "Appeal to their senses. Take them somewhere beautiful—a restaurant with amazing food, a scenic spot, anywhere that engages taste, touch, or aesthetics. Be consistent and reliable; Taurus doesn't trust easily, and flakiness is an instant turn-off. Show that you value quality over quantity. Be patient—they move slowly but deliberately.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Taurus",
            introduction: "Seducing a Taurus is a slow burn. They're not interested in rushing—they want to savor every moment. Create an atmosphere of comfort and sensuality.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Sensory Experience",
                    description: "Cook for them—or better yet, cook with them. Good wine, soft music, candlelight. Taurus is seduced through atmosphere and the senses."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Slow Build",
                    description: "Don't rush physical contact. Let your hand linger. Build anticipation over multiple dates. Taurus finds restraint incredibly attractive."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Thoughtful Gesture",
                    description: "Remember something small they mentioned and surprise them with it weeks later. Taurus is deeply moved by attention to detail and consistency."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Taurus experiences intimacy through all five senses. They want soft sheets, good scents, and unhurried touch. Physical chemistry with Taurus is slow, intentional, and deeply sensual. They're not interested in quick encounters—they want to fully experience every moment. Patience and presence are everything.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be patient and consistent", isPositive: true),
            ChecklistItem("Appeal to their senses", isPositive: true),
            ChecklistItem("Show loyalty and reliability", isPositive: true),
            ChecklistItem("Appreciate quality and beauty", isPositive: true),
            ChecklistItem("Take things slow", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Rushing or pressuring them", isPositive: false),
            ChecklistItem("Being flaky or inconsistent", isPositive: false),
            ChecklistItem("Cheap or careless gestures", isPositive: false),
            ChecklistItem("Pushing them out of their comfort zone too fast", isPositive: false),
            ChecklistItem("Drama and unnecessary conflict", isPositive: false)
        ]
    )

    // MARK: - Gemini (May 21 – June 20)

    static let geminiProfile = ZodiacProfile(
        sign: .gemini,
        tagline: "The Lure of a Gemini",
        introduction: "Geminis are irresistible because they keep you guessing. Curious, quick-witted, and effortlessly charming, they thrive on mental stimulation and novelty. They fall in love with conversation before they ever fall in love with a body. With a Gemini, you'll never be bored—but you'll need to keep up.",
        howToAttract: ProfileSection(
            title: "How to Interest a Gemini",
            content: "Lead with your mind. Geminis are drawn to people who can match their intellectual energy and keep up with their rapid-fire thoughts. Share something unexpected—an obscure fact, a contrarian opinion, a playful challenge. Don't be predictable. Vary your texting rhythm. Suggest spontaneous plans. Show them you have layers they haven't uncovered yet.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Gemini",
            introduction: "Seducing a Gemini is a mental game first. Physical attraction follows intellectual connection. Here are scenarios that work:",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Mental Chase",
                    description: "Start with a playful debate on something unexpected. Let the tension build through wit, not touch. When you finally do get close, whisper something clever only they would appreciate."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Surprise Pivot",
                    description: "In the middle of a normal conversation, suddenly suggest something spontaneous—a rooftop, a late-night drive, a hidden bar. Geminis are seduced by unpredictability."
                ),
                SeductionScenario(
                    number: 3,
                    title: "Words as Foreplay",
                    description: "Send a message that's intriguing but incomplete. Make them ask questions. Build anticipation through language before you ever touch."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Geminis experience intimacy through communication. They want to talk during, before, and after. Silence can feel disconnecting. Keep the energy playful and varied—they bore easily with routine. Light touch, teasing, and laughter are more arousing than intensity. Their mind is their most erogenous zone.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Keep things playful and light", isPositive: true),
            ChecklistItem("Stay mentally engaged and curious", isPositive: true),
            ChecklistItem("Allow space and freedom", isPositive: true),
            ChecklistItem("Be spontaneous and unpredictable", isPositive: true),
            ChecklistItem("Communicate openly and often", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Clinginess or possessiveness", isPositive: false),
            ChecklistItem("Predictable routines", isPositive: false),
            ChecklistItem("Heavy emotional pressure early on", isPositive: false),
            ChecklistItem("Being boring or one-dimensional", isPositive: false),
            ChecklistItem("Trying to pin them down too fast", isPositive: false)
        ]
    )

    // MARK: - Cancer (June 21 – July 22)

    static let cancerProfile = ZodiacProfile(
        sign: .cancer,
        tagline: "The Lure of a Cancer",
        introduction: "Cancers are irresistible because they make you feel truly seen and cared for. They have an intuitive emotional depth that's rare—they remember the small things, sense your moods, and create a feeling of home wherever they are. Beneath their protective shell is a deeply romantic soul looking for real connection.",
        howToAttract: ProfileSection(
            title: "How to Interest a Cancer",
            content: "Show genuine emotional intelligence. Cancers are drawn to people who can talk about feelings without awkwardness and who value family and close relationships. Be warm, consistent, and trustworthy. Share something vulnerable about yourself—they open up when they feel safe. Avoid casual or detached energy; they can sense insincerity instantly.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Cancer",
            introduction: "Seducing a Cancer requires emotional safety first. They need to trust before they can fully let go. Create intimacy through care and attention.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Comfort Zone",
                    description: "Invite them into your space—cook dinner at home, create a cozy atmosphere. Cancers are seduced by domesticity and comfort more than fancy dates."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Emotional Bridge",
                    description: "Share something real about your past—a fear, a dream, a wound. When Cancer sees your vulnerability, they'll open their shell."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Protector Move",
                    description: "Show that you notice and care about their comfort. Bring them a blanket without being asked. Remember their coffee order. Cancers melt when someone takes care of them for once."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Cancer experiences intimacy as emotional bonding. Physical connection without emotional safety feels hollow to them. They want tenderness, eye contact, and verbal affirmation. Cuddling matters as much as passion. Make them feel cherished and secure, and they'll give themselves completely.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be emotionally present and genuine", isPositive: true),
            ChecklistItem("Show consistency and reliability", isPositive: true),
            ChecklistItem("Create comfort and safety", isPositive: true),
            ChecklistItem("Remember the small details", isPositive: true),
            ChecklistItem("Be patient with their protective shell", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being emotionally distant or cold", isPositive: false),
            ChecklistItem("Criticizing their sensitivity", isPositive: false),
            ChecklistItem("Inconsistent or flaky behavior", isPositive: false),
            ChecklistItem("Rushing emotional intimacy", isPositive: false),
            ChecklistItem("Making them feel insecure", isPositive: false)
        ]
    )

    // MARK: - Leo (July 23 – August 22)

    static let leoProfile = ZodiacProfile(
        sign: .leo,
        tagline: "The Lure of a Leo",
        introduction: "Leos are irresistible because they shine. They walk into a room with warmth, confidence, and an energy that makes everyone feel more alive. Generous with their attention and affection, they make you feel like the most important person in the world when they focus on you. Dating a Leo feels like an adventure with a very glamorous tour guide.",
        howToAttract: ProfileSection(
            title: "How to Interest a Leo",
            content: "Admire them—genuinely. Leos can spot fake flattery instantly, but authentic appreciation makes them glow. Be confident in yourself too; they're attracted to people who have their own light. Make them laugh, engage with their stories, and don't compete for the spotlight—share it. Show that you can keep up with their lifestyle and energy.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Leo",
            introduction: "Seducing a Leo is about making them feel special while also intriguing them. They want to be desired, but they also want to chase something worthy.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Spotlight Share",
                    description: "Compliment them publicly—in front of friends, not just privately. Leo lives for recognition. Then lean in close and tell them something just for them."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Grand Gesture",
                    description: "Plan something impressive—a surprise, an experience, something that shows effort. Leo is seduced by people who put in the work to win them."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Playful Challenge",
                    description: "Tease them lightly. Don't give them everything immediately. Leo wants to feel like they've earned your full attention."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Leo wants passion with performance. They want to feel desired, admired, and like the connection is special. Verbal affirmation during intimacy goes far—tell them how amazing they are. They're generous lovers but expect enthusiasm in return. Make it feel like an event, not a routine.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Give genuine compliments and admiration", isPositive: true),
            ChecklistItem("Be confident and have your own presence", isPositive: true),
            ChecklistItem("Make them feel special", isPositive: true),
            ChecklistItem("Be generous with affection", isPositive: true),
            ChecklistItem("Keep things fun and exciting", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Ignoring them or being dismissive", isPositive: false),
            ChecklistItem("Competing for attention", isPositive: false),
            ChecklistItem("Criticizing them publicly", isPositive: false),
            ChecklistItem("Being stingy with praise", isPositive: false),
            ChecklistItem("Making them feel ordinary", isPositive: false)
        ]
    )

    // MARK: - Virgo (August 23 – September 22)

    static let virgoProfile = ZodiacProfile(
        sign: .virgo,
        tagline: "The Lure of a Virgo",
        introduction: "Virgos are irresistible because they notice what no one else does. They show love through action—fixing things, helping, remembering details. Beneath their composed exterior is a deeply caring person who just wants to be useful to someone worthy. When a Virgo chooses you, they've thought about it carefully—and that's incredibly flattering.",
        howToAttract: ProfileSection(
            title: "How to Interest a Virgo",
            content: "Be put-together and thoughtful. Virgos notice details—your grammar, your punctuality, how you treat service workers. Show competence in something you care about. Don't be messy or chaotic in how you present yourself. Engage them in intelligent conversation and ask for their advice—they love to help. Reliability attracts them more than grand gestures.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Virgo",
            introduction: "Seducing a Virgo requires patience and attention to detail. They're not swept away by flash—they're won over by consistency and genuine care.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Detail Play",
                    description: "Remember something small they mentioned weeks ago and act on it. Virgos are seduced by proof that you actually listen."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Competence Display",
                    description: "Be really good at something and let them see it. Fix something, explain something complex, show mastery. Virgos find competence incredibly attractive."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Verbal Precision",
                    description: "Tell them specifically what you appreciate about them—not generic compliments, but precise observations. Virgos distrust vague flattery but melt for specific recognition."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Virgo needs mental comfort before physical connection. They're more sensual than they appear, but they need to feel safe and un-judged first. Cleanliness and attention to detail matter. They appreciate a partner who pays attention to what works and adjusts. Once comfortable, they're attentive and giving lovers.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Pay attention to details", isPositive: true),
            ChecklistItem("Be reliable and consistent", isPositive: true),
            ChecklistItem("Show competence and intelligence", isPositive: true),
            ChecklistItem("Appreciate their helpfulness", isPositive: true),
            ChecklistItem("Be genuine and specific with compliments", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being messy or disorganized", isPositive: false),
            ChecklistItem("Vague or insincere flattery", isPositive: false),
            ChecklistItem("Being unreliable or late", isPositive: false),
            ChecklistItem("Dismissing their advice", isPositive: false),
            ChecklistItem("Rushing physical intimacy", isPositive: false)
        ]
    )

    // MARK: - Libra (September 23 – October 22)

    static let libraProfile = ZodiacProfile(
        sign: .libra,
        tagline: "The Lure of a Libra",
        introduction: "Libras are irresistible because they make everything more beautiful. Charming, diplomatic, and socially graceful, they have an effortless way of making people feel at ease. They're drawn to romance, aesthetics, and connection. Being with a Libra feels like being in a movie—everything is more elegant, more meaningful.",
        howToAttract: ProfileSection(
            title: "How to Interest a Libra",
            content: "Be charming and well-presented. Libras appreciate aesthetics—how you dress, where you suggest going, the overall vibe you create. Engage them in real conversation; they love discussing ideas, art, relationships. Be balanced and fair in how you speak about others. Flirtation should feel light and elegant, not heavy or aggressive.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Libra",
            introduction: "Seducing a Libra is an art. They want romance that feels intentional and beautiful. Create moments that feel special.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Aesthetic Date",
                    description: "Take them somewhere beautiful—a gallery, a rooftop at sunset, a restaurant with ambiance. Libras are seduced by environment as much as by words."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Romantic Gesture",
                    description: "Write them something. A note, a message, a poem—Libras cherish romantic words. Make them feel like the subject of a love story."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Dance of Push-Pull",
                    description: "Flirt, then pull back slightly. Give attention, then create space. Libras are attracted to balance and the gentle tension of courtship."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Libra wants intimacy that feels romantic and balanced. They appreciate a partner who takes their time, creates atmosphere, and makes the experience feel mutual. Aesthetics matter—lighting, music, setting. They're giving lovers who want harmony and connection, not just physical release.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Create beautiful, romantic experiences", isPositive: true),
            ChecklistItem("Be charming and socially graceful", isPositive: true),
            ChecklistItem("Engage in meaningful conversation", isPositive: true),
            ChecklistItem("Show appreciation for aesthetics", isPositive: true),
            ChecklistItem("Be fair and balanced", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being crude or aggressive", isPositive: false),
            ChecklistItem("Creating conflict or drama", isPositive: false),
            ChecklistItem("Neglecting your appearance", isPositive: false),
            ChecklistItem("Being one-sided or selfish", isPositive: false),
            ChecklistItem("Rushing the romance", isPositive: false)
        ]
    )

    // MARK: - Scorpio (October 23 – November 21)

    static let scorpioProfile = ZodiacProfile(
        sign: .scorpio,
        tagline: "The Lure of a Scorpio",
        introduction: "Scorpios are irresistible because they see through everything. Intense, magnetic, and deeply passionate, they don't do anything halfway. When a Scorpio looks at you, you feel known in a way that's both thrilling and terrifying. They offer the kind of connection most people only read about—if you can handle the depth.",
        howToAttract: ProfileSection(
            title: "How to Interest a Scorpio",
            content: "Be real. Scorpios can detect inauthenticity instantly and find it repulsive. Show depth—share something true about yourself, your fears, your desires. Don't play games, but do maintain some mystery. They want to figure you out, so don't reveal everything immediately. Be confident and unbothered by their intensity.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Scorpio",
            introduction: "Seducing a Scorpio is about matching their intensity and proving you can handle depth. They want all of you—nothing held back.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Eye Contact Hold",
                    description: "Hold their gaze longer than comfortable. Don't look away first. Scorpios test people, and eye contact is the first test."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Secret Share",
                    description: "Tell them something you haven't told anyone else. Scorpios are seduced by trust and exclusive access to your inner world."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Intensity Match",
                    description: "Don't flinch when they go deep. When conversation turns intense or personal, lean in rather than deflecting. They want someone who can meet them there."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Scorpio experiences intimacy as transformation. Physical connection is emotional, intense, and profound for them. They want complete presence—no distractions, no holding back. Trust is essential; they need to know they can be vulnerable. Once trust exists, the intensity is unmatched.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be authentic and honest", isPositive: true),
            ChecklistItem("Show emotional depth", isPositive: true),
            ChecklistItem("Match their intensity", isPositive: true),
            ChecklistItem("Maintain some mystery", isPositive: true),
            ChecklistItem("Prove your loyalty", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being fake or superficial", isPositive: false),
            ChecklistItem("Playing mind games", isPositive: false),
            ChecklistItem("Betraying their trust", isPositive: false),
            ChecklistItem("Being emotionally unavailable", isPositive: false),
            ChecklistItem("Trying to control them", isPositive: false)
        ]
    )

    // MARK: - Sagittarius (November 22 – December 21)

    static let sagittariusProfile = ZodiacProfile(
        sign: .sagittarius,
        tagline: "The Lure of a Sagittarius",
        introduction: "Sagittarians are irresistible because they make life feel like an adventure. Optimistic, honest, and endlessly curious, they bring energy and expansion to everything they touch. Being with a Sagittarius feels like the world just got bigger and more exciting. They're the ones who make you believe anything is possible.",
        howToAttract: ProfileSection(
            title: "How to Interest a Sagittarius",
            content: "Be interesting and open-minded. Sagittarians are drawn to people with stories, opinions, and a sense of adventure. Talk about travel, philosophy, big ideas. Don't be clingy or restrictive—they need to feel free. Have your own life and interests. Be direct and honest; they appreciate bluntness over diplomacy.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Sagittarius",
            introduction: "Seducing a Sagittarius means being someone they want to explore life with. Keep things fun, free, and full of possibility.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Adventure Proposal",
                    description: "Suggest something they've never done. A trip, an experience, a spontaneous plan. Sagittarius is seduced by the promise of new horizons."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Honest Moment",
                    description: "Say something unexpectedly real and direct. Sagittarius loves people who skip the usual scripts and speak truth."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Freedom Play",
                    description: "Show that you have your own adventures. Don't wait for them or need them too much. Sagittarius is attracted to independence."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Sagittarius wants intimacy that feels fun and free. They like spontaneity, playfulness, and a sense of adventure even in physical connection. Don't take things too seriously—laugh together. They're not interested in routine; variety and enthusiasm keep them engaged.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be adventurous and open-minded", isPositive: true),
            ChecklistItem("Give them space and freedom", isPositive: true),
            ChecklistItem("Be honest and direct", isPositive: true),
            ChecklistItem("Have your own interesting life", isPositive: true),
            ChecklistItem("Keep things fun and light", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being clingy or possessive", isPositive: false),
            ChecklistItem("Trying to restrict their freedom", isPositive: false),
            ChecklistItem("Being dishonest or manipulative", isPositive: false),
            ChecklistItem("Taking everything too seriously", isPositive: false),
            ChecklistItem("Being boring or closed-minded", isPositive: false)
        ]
    )

    // MARK: - Capricorn (December 22 – January 19)

    static let capricornProfile = ZodiacProfile(
        sign: .capricorn,
        tagline: "The Lure of a Capricorn",
        introduction: "Capricorns are irresistible because they're the real deal. Ambitious, disciplined, and quietly powerful, they don't need to show off—their accomplishments speak for themselves. Beneath their serious exterior is a surprisingly dry wit and a deeply loyal heart. When a Capricorn commits, they build something meant to last.",
        howToAttract: ProfileSection(
            title: "How to Interest a Capricorn",
            content: "Show ambition and competence. Capricorns are attracted to people who have goals and are working toward them. Be reliable, punctual, and serious when appropriate. Respect their time and priorities. Show that you have your life together. Don't be frivolous or flaky—they value substance over style.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Capricorn",
            introduction: "Seducing a Capricorn requires patience and proof. They're not swayed by flash—they're won over by demonstrated value over time.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Long Game",
                    description: "Be consistent over weeks or months. Show up when you say you will. Capricorn is seduced by reliability more than grand gestures."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Achievement Share",
                    description: "Talk about your goals and progress without bragging. Capricorns are attracted to people who are building something."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Dry Humor Connect",
                    description: "Make them laugh with wit, not silliness. Capricorns have an underrated sense of humor and appreciate someone who matches it."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Capricorn may seem reserved, but they have deep sensual needs. They want intimacy that feels earned and meaningful. Physical connection improves with trust and time. They appreciate a partner who takes charge sometimes, and they're more passionate than their composed exterior suggests.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Show ambition and drive", isPositive: true),
            ChecklistItem("Be reliable and consistent", isPositive: true),
            ChecklistItem("Respect their time and priorities", isPositive: true),
            ChecklistItem("Have your life together", isPositive: true),
            ChecklistItem("Be patient and play the long game", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being flaky or unreliable", isPositive: false),
            ChecklistItem("Wasting their time", isPositive: false),
            ChecklistItem("Being frivolous or immature", isPositive: false),
            ChecklistItem("Expecting instant commitment", isPositive: false),
            ChecklistItem("Disrespecting their ambitions", isPositive: false)
        ]
    )

    // MARK: - Aquarius (January 20 – February 18)

    static let aquariusProfile = ZodiacProfile(
        sign: .aquarius,
        tagline: "The Lure of an Aquarius",
        introduction: "Aquarians are irresistible because they're unlike anyone you've met. Original, intellectual, and slightly detached, they see the world differently and make you question your assumptions. Being with an Aquarius feels like discovering a secret frequency—they offer perspective and connection that's genuinely unique.",
        howToAttract: ProfileSection(
            title: "How to Interest an Aquarius",
            content: "Be different. Aquarians are drawn to originality and independent thinking. Share unusual ideas, challenge conventions, have opinions that aren't mainstream. Don't be clingy or emotionally demanding—they need space to breathe. Be a friend first; Aquarius values mental connection before romance. Show that you can handle their unconventional nature.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce an Aquarius",
            introduction: "Seducing an Aquarius means appealing to their mind and respecting their need for independence. They want a partner, not a possession.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Idea Exchange",
                    description: "Send them an article, theory, or idea that made you think of them. Aquarius is seduced by intellectual stimulation and being understood."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Space Give",
                    description: "Don't text for a few days. Let them miss you. Aquarius is attracted to people who don't need constant contact."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Unconventional Date",
                    description: "Suggest something weird—a lecture, an obscure event, something no one else would think of. Aquarius wants experiences, not dinner and a movie."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Aquarius approaches intimacy with curiosity rather than intensity. They like experimentation and mental engagement even in physical connection. Don't expect traditional romance—they want something more interesting. Emotional pressure kills the mood; keep things light, curious, and exploratory.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be original and independent", isPositive: true),
            ChecklistItem("Give them plenty of space", isPositive: true),
            ChecklistItem("Engage their mind", isPositive: true),
            ChecklistItem("Be a friend first", isPositive: true),
            ChecklistItem("Accept their unconventional nature", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being clingy or possessive", isPositive: false),
            ChecklistItem("Demanding emotional intensity", isPositive: false),
            ChecklistItem("Being conventional or boring", isPositive: false),
            ChecklistItem("Trying to change them", isPositive: false),
            ChecklistItem("Needing constant reassurance", isPositive: false)
        ]
    )

    // MARK: - Pisces (February 19 – March 20)

    static let piscesProfile = ZodiacProfile(
        sign: .pisces,
        tagline: "The Lure of a Pisces",
        introduction: "Pisces are irresistible because they feel everything so deeply. Intuitive, romantic, and endlessly empathetic, they see the best in people and create a sense of magic wherever they go. Being with a Pisces feels like being truly seen and understood—they connect on a soul level that most people only dream about.",
        howToAttract: ProfileSection(
            title: "How to Interest a Pisces",
            content: "Be emotionally available and genuine. Pisces are drawn to people who aren't afraid of feelings and who see beneath the surface. Share your dreams, your creative side, your vulnerabilities. Be gentle and romantic—harsh or cynical energy repels them. Show compassion for others; they notice how you treat people.",
            isPremium: false
        ),
        howToSeduce: SeductionSection(
            title: "How to Seduce a Pisces",
            introduction: "Seducing a Pisces is about creating a world just for the two of you. They want escape, romance, and soul connection.",
            scenarios: [
                SeductionScenario(
                    number: 1,
                    title: "The Escape Plan",
                    description: "Take them somewhere that feels like another world—a beach at night, a hidden garden, somewhere that breaks from ordinary reality. Pisces is seduced by magic."
                ),
                SeductionScenario(
                    number: 2,
                    title: "The Soul Read",
                    description: "Tell them something about themselves they've never said out loud. Pisces is deeply moved when someone truly sees them."
                ),
                SeductionScenario(
                    number: 3,
                    title: "The Creative Gift",
                    description: "Make something for them—a playlist, a poem, art. Pisces values creative expression as the ultimate romantic gesture."
                )
            ],
            isPremiumContent: true
        ),
        physicalChemistry: ProfileSection(
            title: "Physical Chemistry",
            content: "Pisces experiences intimacy as merging. Physical connection is emotional, spiritual, almost transcendent for them. They want to feel completely connected—eye contact, presence, tenderness. Atmosphere matters enormously; create a dreamy, romantic setting. Roughness or detachment doesn't work with them.",
            isPremium: true
        ),
        mustDos: [
            ChecklistItem("Be emotionally open and genuine", isPositive: true),
            ChecklistItem("Create romantic, magical moments", isPositive: true),
            ChecklistItem("Show empathy and compassion", isPositive: true),
            ChecklistItem("Share your dreams and creativity", isPositive: true),
            ChecklistItem("Be gentle and tender", isPositive: true)
        ],
        avoids: [
            ChecklistItem("Being harsh or cynical", isPositive: false),
            ChecklistItem("Dismissing their feelings", isPositive: false),
            ChecklistItem("Being emotionally unavailable", isPositive: false),
            ChecklistItem("Crushing their dreams", isPositive: false),
            ChecklistItem("Being overly practical or cold", isPositive: false)
        ]
    )
}
