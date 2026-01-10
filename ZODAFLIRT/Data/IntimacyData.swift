//
//  IntimacyData.swift
//  ZODAFLIRT
//

import Foundation

struct IntimacyData {

    static func getProfile(for sign: ZodiacSign) -> IntimacyProfile {
        switch sign {
        case .aries: return ariesIntimacy
        case .taurus: return taurusIntimacy
        case .gemini: return geminiIntimacy
        case .cancer: return cancerIntimacy
        case .leo: return leoIntimacy
        case .virgo: return virgoIntimacy
        case .libra: return libraIntimacy
        case .scorpio: return scorpioIntimacy
        case .sagittarius: return sagittariusIntimacy
        case .capricorn: return capricornIntimacy
        case .aquarius: return aquariusIntimacy
        case .pisces: return piscesIntimacy
        }
    }

    // MARK: - Aries

    static let ariesIntimacy = IntimacyProfile(
        sign: .aries,
        teaser: "Aries brings fire and urgency to intimate moments—they want passion that matches their intensity.",
        bedroomEnergy: "Aries approaches intimacy with the same boldness they bring to everything else. They're direct, passionate, and unafraid to take the lead. Expect spontaneity and an energy that's hard to match. They thrive on chemistry and the thrill of the moment.",
        whatTheyWant: [
            "Confidence and someone who can match their energy",
            "Spontaneity—surprise them, initiate unexpectedly",
            "Physical expressiveness and enthusiasm",
            "A partner who isn't passive or hesitant",
            "Playful competition and a bit of tension"
        ],
        whatToAvoid: [
            "Being overly passive or waiting for them to do everything",
            "Too much routine—they get bored with predictability",
            "Hesitation or excessive asking for permission",
            "Emotional heaviness before the mood is right",
            "Criticism of their directness or intensity"
        ],
        afterward: "Aries may not linger as long as other signs. They appreciate a partner who doesn't need constant reassurance afterward. Keep it light, maybe playful. They're already thinking about what's next—don't take their quick energy shift personally."
    )

    // MARK: - Taurus

    static let taurusIntimacy = IntimacyProfile(
        sign: .taurus,
        teaser: "Taurus experiences intimacy through all five senses—slow, intentional, and deeply sensual.",
        bedroomEnergy: "Taurus is the most sensual sign of the zodiac. They approach intimacy slowly, savoring every moment. For them, physical connection is about presence, comfort, and indulgence. They want to feel, taste, touch, and experience everything fully.",
        whatTheyWant: [
            "A comfortable, beautiful environment—ambiance matters",
            "Slow buildup and unhurried connection",
            "Physical affection: touch, closeness, skin-to-skin",
            "Consistency and reliability in how you show up",
            "Genuine presence—no distractions, no rushing"
        ],
        whatToAvoid: [
            "Rushing or creating pressure to move faster",
            "Uncomfortable settings or lack of attention to atmosphere",
            "Being distracted or checking your phone",
            "Sudden changes or unpredictability mid-moment",
            "Skipping foreplay or emotional buildup"
        ],
        afterward: "Taurus wants to linger. Cuddling, soft conversation, maybe a snack or something to drink. They experience intimacy as a full-body, full-experience event, and that includes the time after. Don't rush to leave or shift gears too quickly."
    )

    // MARK: - Gemini

    static let geminiIntimacy = IntimacyProfile(
        sign: .gemini,
        teaser: "Gemini connects through the mind first—playfulness, variety, and verbal connection keep them engaged.",
        bedroomEnergy: "Gemini's mind is their most powerful erogenous zone. They need mental stimulation alongside physical connection. Expect playfulness, laughter, and conversation woven throughout. They're curious, experimental, and easily bored by routine.",
        whatTheyWant: [
            "Verbal engagement—talk to them, tease them, flirt",
            "Variety and willingness to try new things",
            "Lightness and humor—don't take it too seriously",
            "Mental connection that continues into physical moments",
            "Spontaneity and unpredictability"
        ],
        whatToAvoid: [
            "Silence or lack of verbal engagement",
            "Rigid routines or doing the same thing every time",
            "Heavy emotional intensity too early",
            "Being overly serious or mechanical",
            "Predictability—they need stimulation"
        ],
        afterward: "Gemini wants to talk afterward—about anything. The conversation might jump topics, get playful, or dive into something random. They don't necessarily need deep emotional processing, but they do need continued engagement. Silence feels disconnecting to them."
    )

    // MARK: - Cancer

    static let cancerIntimacy = IntimacyProfile(
        sign: .cancer,
        teaser: "Cancer experiences intimacy as emotional bonding—trust and tenderness unlock everything.",
        bedroomEnergy: "For Cancer, physical intimacy is inseparable from emotional safety. They need to trust you before they can fully let go. Once that trust exists, they're deeply giving and nurturing. Intimacy is how they express love and feel loved in return.",
        whatTheyWant: [
            "Emotional safety and trust above all",
            "Tenderness, eye contact, verbal affirmation",
            "Feeling cherished and protected",
            "Cuddling and physical closeness throughout",
            "A sense of home and comfort in the environment"
        ],
        whatToAvoid: [
            "Emotional coldness or detachment",
            "Rushing through without connection",
            "Making them feel used or unimportant",
            "Harsh words or criticism, even playfully",
            "Leaving abruptly afterward"
        ],
        afterward: "Cancer needs closeness after intimacy more than most signs. Hold them, talk softly, stay present. This is when they feel most vulnerable and most connected. Leaving too quickly or shifting to something else can feel like rejection."
    )

    // MARK: - Leo

    static let leoIntimacy = IntimacyProfile(
        sign: .leo,
        teaser: "Leo wants passion with admiration—they need to feel desired and celebrated.",
        bedroomEnergy: "Leo brings drama, warmth, and generosity to intimate moments. They want to feel like the most desirable person in the room—and they'll return that energy tenfold. Expect confidence, expressiveness, and a flair for making moments feel special.",
        whatTheyWant: [
            "Verbal admiration—tell them how amazing they are",
            "Enthusiasm and genuine desire",
            "A partner who's fully present and engaged",
            "Romance and a sense of occasion",
            "To feel like they're your priority"
        ],
        whatToAvoid: [
            "Lack of enthusiasm or going through the motions",
            "Criticism or making them feel inadequate",
            "Distraction or divided attention",
            "Being stingy with compliments",
            "Making them feel ordinary"
        ],
        afterward: "Leo wants to bask in the afterglow together. They appreciate continued affection, compliments, and a sense that what you shared was special. Make them feel like a star, and they'll want to create more of those moments with you."
    )

    // MARK: - Virgo

    static let virgoIntimacy = IntimacyProfile(
        sign: .virgo,
        teaser: "Virgo needs mental comfort first—once safe, they reveal surprising sensuality and attentiveness.",
        bedroomEnergy: "Virgo may seem reserved, but they're deeply sensual once they feel comfortable. They pay attention to details—what works, what you respond to—and they adjust. They want to please and take pride in being a thoughtful, attentive partner.",
        whatTheyWant: [
            "Cleanliness and a comfortable environment",
            "A partner who pays attention to their responses",
            "Patience and no pressure to perform",
            "Genuine appreciation for their attentiveness",
            "Mental comfort before physical vulnerability"
        ],
        whatToAvoid: [
            "Messy or uncomfortable environments",
            "Pressure or rushing them",
            "Ignoring their efforts or taking them for granted",
            "Making them feel judged or self-conscious",
            "Chaos or unpredictability they haven't agreed to"
        ],
        afterward: "Virgo appreciates practical care afterward—getting water, adjusting the temperature, making sure you're both comfortable. They may not be the most verbally expressive, but their actions show care. A simple 'that was wonderful' goes a long way."
    )

    // MARK: - Libra

    static let libraIntimacy = IntimacyProfile(
        sign: .libra,
        teaser: "Libra wants intimacy that feels romantic and mutual—beauty and balance are everything.",
        bedroomEnergy: "Libra approaches intimacy as an art form. They want beauty, romance, and balance. The environment matters—lighting, music, ambiance. They're giving partners who seek harmony and mutual pleasure above all else.",
        whatTheyWant: [
            "A beautiful, romantic setting",
            "Mutual pleasure and balanced give-and-take",
            "Romance woven throughout—words, gestures, atmosphere",
            "A partner who takes their time",
            "Feeling truly desired and appreciated"
        ],
        whatToAvoid: [
            "Crude or unromantic approaches",
            "One-sided experiences that feel selfish",
            "Harsh lighting or unpleasant environments",
            "Rushing through without savoring",
            "Conflict or tension beforehand"
        ],
        afterward: "Libra wants the romance to continue. Soft conversation, continued physical closeness, maybe music playing quietly. They want the whole experience to feel like a scene from a beautiful film—including the gentle fade-out at the end."
    )

    // MARK: - Scorpio

    static let scorpioIntimacy = IntimacyProfile(
        sign: .scorpio,
        teaser: "Scorpio experiences intimacy as transformation—complete presence and trust unlock profound connection.",
        bedroomEnergy: "Scorpio is the most intense sign when it comes to intimacy. For them, physical connection is emotional, psychological, and almost spiritual. They want depth, presence, and complete surrender—from both partners. Nothing surface-level will satisfy them.",
        whatTheyWant: [
            "Complete presence—no distractions, no holding back",
            "Deep trust and emotional vulnerability",
            "Intensity and genuine passion",
            "Eye contact and soul-level connection",
            "A partner who can handle depth"
        ],
        whatToAvoid: [
            "Superficiality or going through the motions",
            "Distractions or divided attention",
            "Emotional unavailability or guardedness",
            "Betrayal of trust—even small breaches",
            "Treating intimacy as casual when they're invested"
        ],
        afterward: "Scorpio needs closeness afterward, but they may not always show it obviously. They're processing the experience deeply. Stay present, don't rush away, and be prepared for conversation that might go to unexpected depths. This is bonding time for them."
    )

    // MARK: - Sagittarius

    static let sagittariusIntimacy = IntimacyProfile(
        sign: .sagittarius,
        teaser: "Sagittarius wants intimacy that feels fun and free—spontaneity and laughter keep them engaged.",
        bedroomEnergy: "Sagittarius brings adventure and playfulness to intimacy. They don't take it too seriously—laughter, spontaneity, and a sense of fun are part of the experience. They want a partner who can match their energy and go with the flow.",
        whatTheyWant: [
            "Fun, playfulness, and laughter",
            "Spontaneity and willingness to be adventurous",
            "Freedom from heavy expectations",
            "A partner who doesn't take things too seriously",
            "Variety and openness to new experiences"
        ],
        whatToAvoid: [
            "Heaviness or emotional intensity too soon",
            "Rigid expectations or pressure to perform",
            "Clinginess or possessiveness afterward",
            "Routine and predictability",
            "Making it feel like an obligation"
        ],
        afterward: "Sagittarius doesn't need long, emotional debriefs. Keep it light—maybe joke around, talk about something fun, or just enjoy comfortable silence. They appreciate a partner who doesn't need constant reassurance or immediately want to define what just happened."
    )

    // MARK: - Capricorn

    static let capricornIntimacy = IntimacyProfile(
        sign: .capricorn,
        teaser: "Capricorn has deep sensual needs beneath their reserve—trust and time unlock surprising passion.",
        bedroomEnergy: "Capricorn may seem reserved, but they have deep, powerful sensual needs. They take intimacy seriously and want it to feel earned and meaningful. Once comfortable, they're surprisingly passionate and take pride in being a skilled, attentive partner.",
        whatTheyWant: [
            "Trust built over time—they don't rush vulnerability",
            "A partner who takes intimacy seriously",
            "Quality over quantity",
            "Respect and mutual admiration",
            "Someone who appreciates their hidden passionate side"
        ],
        whatToAvoid: [
            "Frivolity or treating intimacy as meaningless",
            "Pressure to open up before they're ready",
            "Excessive neediness or emotional demands",
            "Public displays that embarrass them",
            "Treating physical connection as casual when they're invested"
        ],
        afterward: "Capricorn appreciates a partner who can shift back to normal life smoothly. They may not be the most verbally affectionate afterward, but a simple acknowledgment that you enjoyed being with them matters. Respect their need for a bit of space to recalibrate."
    )

    // MARK: - Aquarius

    static let aquariusIntimacy = IntimacyProfile(
        sign: .aquarius,
        teaser: "Aquarius approaches intimacy with curiosity—mental engagement and experimentation over intensity.",
        bedroomEnergy: "Aquarius brings curiosity and open-mindedness to intimacy. They're less about traditional romance and more about connection, experimentation, and mental engagement. They want a partner who can surprise them and isn't bound by convention.",
        whatTheyWant: [
            "Mental stimulation alongside physical connection",
            "Openness to experimentation and new ideas",
            "Freedom from traditional expectations",
            "A partner who respects their individuality",
            "Space to be themselves without judgment"
        ],
        whatToAvoid: [
            "Emotional pressure or intensity too soon",
            "Possessiveness or clinginess",
            "Rigid expectations about how things 'should' go",
            "Judgment about their unconventional nature",
            "Demanding emotional processing they're not ready for"
        ],
        afterward: "Aquarius needs space afterward—not necessarily physical space, but mental freedom. They might want to talk about something completely unrelated, or just enjoy comfortable silence. Don't pressure them to process emotions or define the experience immediately."
    )

    // MARK: - Pisces

    static let piscesIntimacy = IntimacyProfile(
        sign: .pisces,
        teaser: "Pisces experiences intimacy as merging—emotional, spiritual, and transcendent when the connection is real.",
        bedroomEnergy: "Pisces approaches intimacy as a deeply emotional, almost spiritual experience. They want to merge completely—emotionally and physically. For them, physical connection without emotional depth feels hollow. When they trust you, they give themselves completely.",
        whatTheyWant: [
            "Emotional connection and soul-level bonding",
            "Romance, tenderness, and presence",
            "Eye contact and verbal affirmation",
            "A dreamy, comfortable atmosphere",
            "A partner who is fully present and emotionally available"
        ],
        whatToAvoid: [
            "Emotional coldness or detachment",
            "Rough or impersonal energy",
            "Distractions or lack of presence",
            "Harsh lighting or unromantic settings",
            "Making them feel like just a physical experience"
        ],
        afterward: "Pisces needs closeness and tenderness afterward more than almost any other sign. Hold them, speak softly, stay connected. This is when they feel most bonded to you. Leaving abruptly or shifting to something mundane too quickly can feel jarring and hurtful."
    )
}
