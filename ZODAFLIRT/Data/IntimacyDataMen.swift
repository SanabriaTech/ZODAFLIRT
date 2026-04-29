//
//  IntimacyDataMen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Men-targeted intimacy content for all 12 signs.
//  Selects between hetero (Woman → Man) and gay (Man → Man) variants
//  based on GuidanceContext.

import Foundation

struct IntimacyDataMen {

    static func getProfile(for sign: ZodiacSign, context: GuidanceContext) -> IntimacyProfile {
        switch sign {
        case .aries: return ariesIntimacy(context: context)
        case .taurus: return taurusIntimacy(context: context)
        case .gemini: return geminiIntimacy(context: context)
        case .cancer: return cancerIntimacy(context: context)
        case .leo: return leoIntimacy(context: context)
        case .virgo: return virgoIntimacy(context: context)
        case .libra: return libraIntimacy(context: context)
        case .scorpio: return scorpioIntimacy(context: context)
        case .sagittarius: return sagittariusIntimacy(context: context)
        case .capricorn: return capricornIntimacy(context: context)
        case .aquarius: return aquariusIntimacy(context: context)
        case .pisces: return piscesIntimacy(context: context)
        }
    }

    // MARK: - Aries Man

    static func ariesIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .aries,
            teaser: isHetero
                ? "Aries men bring intensity and dominance to physical connection — match his fire or step aside."
                : "Aries men bring primal, dominant energy and want partners who can take it without breaking eye contact.",
            bedroomEnergy: isHetero
                ? "Aries men bring fire, intensity, and often dominance to intimacy. He's direct about what he wants and expects you to be too. He's physical, vocal, and unafraid to take charge. He wants a woman who matches his energy without losing herself in submission. He gets bored fast with passivity. The chemistry has to be electric and immediate."
                : "Aries men in same-sex intimacy bring intense, often dominant energy. He's direct, physical, and unafraid. He wants a partner who can take what he gives and give it back. Submissive energy without confidence reads as boring to him. He wants a real partner, not a passive one.",
            whatTheyWant: isHetero
                ? [
                    "A partner who matches his energy",
                    "Confidence and clear desire",
                    "Physical presence and stamina",
                    "Spontaneity over routine",
                    "Vocal partners who say what they want"
                ]
                : [
                    "A partner who matches his physical intensity",
                    "Confidence and presence",
                    "Stamina and physical engagement",
                    "Spontaneity",
                    "Someone who isn't afraid to push back"
                ],
            whatToAvoid: isHetero
                ? [
                    "Being passive or waiting for him to do everything",
                    "Slow, predictable routines",
                    "Hesitation or self-consciousness",
                    "Trying to slow him down constantly",
                    "Excessive emotional intensity right after"
                ]
                : [
                    "Submissive without confidence",
                    "Slow predictable patterns",
                    "Trying to dominate him completely",
                    "Killing the energy with overthinking",
                    "Clinginess after"
                ],
            afterward: isHetero
                ? "Aries men don't typically want long emotional debriefs after intimacy. He'll want water, maybe food, and to talk about something else. Don't take it personally — he shifts gears fast. He'll come back to you when he wants more. Smothering him after will make him pull away."
                : "After intimacy, Aries men may want space to come back down on their own terms. He's not necessarily cold — he just processes physically and moves on quickly. Don't pressure him for emotional debrief. Let him come back, and he will."
        )
    }

    // MARK: - Taurus Man

    static func taurusIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .taurus,
            teaser: isHetero
                ? "Taurus men experience intimacy as a sensual feast — slow, deliberate, and deeply pleasurable."
                : "Taurus men bring earthy sensuality and unhurried devotion to physical connection.",
            bedroomEnergy: isHetero
                ? "Taurus men are deeply sensual and savor every moment. He wants slow, unhurried intimacy where he can experience everything fully. He's tactile, attentive, and incredibly patient. He'll spend an hour kissing before anything else. Setting matters: clean sheets, good scents, comfortable space. Rushing him is the fastest way to break the connection."
                : "Taurus men approach intimacy as a full sensory experience. He wants to take his time, savor every moment. He's deeply tactile and present. He's not interested in quick or chaotic encounters. Atmosphere and patience unlock his full passion.",
            whatTheyWant: isHetero
                ? [
                    "Slow, sensual buildup",
                    "Beautiful, comfortable setting",
                    "A partner who's tactile and present",
                    "Long, lingering attention",
                    "Romance woven throughout"
                ]
                : [
                    "Slow, intentional touch",
                    "Comfortable, sensual environment",
                    "Patience and presence",
                    "Romantic, deliberate energy",
                    "A partner who takes time"
                ],
            whatToAvoid: isHetero
                ? [
                    "Rushing or showing impatience",
                    "Chaotic or uncomfortable settings",
                    "Skipping foreplay",
                    "Being too rough when he wants slow",
                    "Treating it like a quick encounter"
                ]
                : [
                    "Rushing him",
                    "Chaotic environments",
                    "Skipping the slow buildup",
                    "Being mechanical or impatient",
                    "Making him feel unappreciated"
                ],
            afterward: isHetero
                ? "Taurus loves the afterglow. He'll want to stay close, maybe order food, definitely cuddle. Stay present, talk softly, share food or wine. Don't rush off or check your phone. The afterward is part of the experience for him."
                : "After intimacy, Taurus men want to linger. Stay close, talk softly, share food or wine. The afterward matters as much as the act itself. Be present and unhurried."
        )
    }

    // MARK: - Gemini Man

    static func geminiIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .gemini,
            teaser: isHetero
                ? "Gemini men experience intimacy through mental connection — words and play are his real turn-on."
                : "Gemini men bring playful, exploratory, mentally-engaged energy to physical connection.",
            bedroomEnergy: isHetero
                ? "Gemini men are mental creatures, even in intimacy. He wants verbal play, banter, dirty talk. He gets bored with predictable physical routines. Variety is essential — different times, different places, different approaches. He's playful and exploratory rather than deeply emotional. His brain has to be engaged for his body to follow."
                : "Gemini men approach intimacy with curiosity and playfulness. He wants mental and physical stimulation simultaneously. Routine bores him quickly. He's drawn to partners who keep things fresh, surprising, and verbally engaging.",
            whatTheyWant: isHetero
                ? [
                    "Verbal play and dirty talk",
                    "Variety and unpredictability",
                    "A partner who's mentally engaged",
                    "Playful, experimental energy",
                    "Light moments mixed with intensity"
                ]
                : [
                    "Mental and physical stimulation together",
                    "Variety and creativity",
                    "Playful banter throughout",
                    "Unexpected moments",
                    "A partner who keeps things fresh"
                ],
            whatToAvoid: isHetero
                ? [
                    "Silent, mechanical encounters",
                    "Same routine every time",
                    "Excessive emotional intensity",
                    "Treating it like a serious ritual",
                    "Making him feel pinned down"
                ]
                : [
                    "Predictable patterns",
                    "Heavy emotional energy too soon",
                    "Silence — he wants engagement",
                    "Repetition without surprise",
                    "Making him feel trapped"
                ],
            afterward: isHetero
                ? "Gemini men want to talk afterward — about anything. He doesn't want heavy emotional processing. He wants engagement. If you go silent or check your phone, he'll feel disconnected fast."
                : "After intimacy, Gemini men want continued mental connection. He'll want to talk, joke, share random thoughts. Don't expect a long emotional debrief — he processes through conversation."
        )
    }

    // MARK: - Cancer Man

    static func cancerIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .cancer,
            teaser: isHetero
                ? "Cancer men experience intimacy through emotional bonding — tenderness unlocks his full passion."
                : "Cancer men bring soulful tenderness and emotional fusion to physical connection.",
            bedroomEnergy: isHetero
                ? "Cancer men need emotional safety to fully open up physically. When they have it, they're deeply giving, nurturing, and emotionally connected during intimacy. He experiences sex as an extension of love — separating them is foreign to him. He's tender, intuitive, and reads your responses carefully. Eye contact is essential."
                : "Cancer men bring emotional depth and tenderness to intimacy. He needs to feel emotionally safe before his body fully opens. Once he trusts you, he's deeply loving and present. Eye contact, gentle touch, and verbal affirmation are core to his experience.",
            whatTheyWant: isHetero
                ? [
                    "Emotional safety and trust",
                    "Tenderness and gentle touch",
                    "Eye contact and verbal affirmation",
                    "Feeling cherished, not just desired",
                    "A partner who's fully emotionally present"
                ]
                : [
                    "Emotional safety above all",
                    "Tender, gentle physicality",
                    "Eye contact and presence",
                    "Words of affection during intimacy",
                    "Feeling deeply seen and loved"
                ],
            whatToAvoid: isHetero
                ? [
                    "Emotional coldness or detachment",
                    "Treating it as purely physical",
                    "Rushing through without connection",
                    "Harsh language or rough handling",
                    "Leaving abruptly afterward"
                ]
                : [
                    "Emotional disconnection",
                    "Rushing or being mechanical",
                    "Cold or dismissive energy",
                    "Skipping affection and tenderness",
                    "Making him feel like an object"
                ],
            afterward: isHetero
                ? "This is when Cancer men feel most vulnerable. He needs you to stay close, hold him, talk softly. Leaving quickly will feel like a profound rejection. Stay present, kiss him, tell him how you feel."
                : "After intimacy, Cancer men need closeness and reassurance. Hold him, whisper to him, stay present. This is when he feels most connected and vulnerable. Leaving abruptly will wound him."
        )
    }

    // MARK: - Leo Man

    static func leoIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .leo,
            teaser: isHetero
                ? "Leo men bring dramatic, generous passion — they want to worship and be worshipped."
                : "Leo men approach intimacy with confident generosity and dramatic intensity.",
            bedroomEnergy: isHetero
                ? "Leo men bring confidence, warmth, and drama to intimacy. He wants to feel like a king — adored, admired, and complimented. He's expressive, theatrical, and unafraid to be physical. He returns the energy tenfold. Bringing tepid energy will deflate him completely. He wants to feel like he's giving you the best night of your life."
                : "Leo men approach intimacy with confident generosity. He wants to be adored and to adore. He's expressive, warm, and theatrical when he feels celebrated. Quiet, hesitant energy doesn't work for him — he wants enthusiasm, presence, and admiration.",
            whatTheyWant: isHetero
                ? [
                    "To be verbally admired throughout",
                    "Enthusiasm and full engagement",
                    "A partner who shows desire openly",
                    "Romantic atmosphere",
                    "Generosity in pleasure and attention"
                ]
                : [
                    "Open admiration and enthusiasm",
                    "Romantic, beautiful settings",
                    "A partner who's fully present",
                    "Generous physical attention",
                    "Words of desire spoken aloud"
                ],
            whatToAvoid: isHetero
                ? [
                    "Tepid or distracted energy",
                    "Going through the motions",
                    "Stinginess with compliments",
                    "Making him feel ordinary",
                    "Cold or impersonal settings"
                ]
                : [
                    "Lack of enthusiasm",
                    "Cold or perfunctory energy",
                    "Failing to compliment him",
                    "Making him feel unappreciated",
                    "Drab or unromantic settings"
                ],
            afterward: isHetero
                ? "Leo wants to bask in afterglow. Tell him how amazing he was. Stay close. Don't roll over and check your phone. Make him feel like he's still the center of your world."
                : "After intimacy, Leo men want continued admiration and warmth. Tell him how stunning he was. Stay close. Make him feel celebrated. Going cold afterward damages the experience."
        )
    }

    // MARK: - Virgo Man

    static func virgoIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .virgo,
            teaser: isHetero
                ? "Virgo men appear reserved but reveal surprising sensuality once they fully trust you."
                : "Virgo men bring quiet intensity and careful attention to physical connection.",
            bedroomEnergy: isHetero
                ? "Virgo men may seem reserved, but once he trusts you, he reveals surprising sensuality and attentiveness. He's deeply observant during intimacy — he notices what works for you and adjusts. He takes pride in being a thoughtful, skilled partner. Cleanliness matters. He doesn't perform; he's fully present and intentional."
                : "Virgo men approach intimacy with careful observation and quiet sensuality. He watches your responses and adjusts. He's attentive, thoughtful, and deeply present. Cleanliness and comfort matter. Once he's settled and trusts you, he opens completely.",
            whatTheyWant: isHetero
                ? [
                    "A clean, comfortable environment",
                    "Patience and unhurried pace",
                    "A partner who notices his responses",
                    "Genuine appreciation",
                    "Mental comfort before physical surrender"
                ]
                : [
                    "Comfort and cleanliness in setting",
                    "Patient, attentive presence",
                    "A partner who reads his body",
                    "Quiet intensity over loud drama",
                    "Trust built before vulnerability"
                ],
            whatToAvoid: isHetero
                ? [
                    "Messy or uncomfortable settings",
                    "Pressure to perform or move faster",
                    "Loud or theatrical energy",
                    "Making him feel self-conscious",
                    "Unpredictability he didn't agree to"
                ]
                : [
                    "Chaotic environments",
                    "Pressure to move at your pace",
                    "Performative energy",
                    "Making him feel judged",
                    "Sudden changes he didn't expect"
                ],
            afterward: isHetero
                ? "Virgo men appreciate practical care afterward. Don't take quietness as cold. A simple, sincere acknowledgment that you valued the experience matters more than flowery words."
                : "After intimacy, Virgo men may want a moment to settle physically. This is how he processes. Stay close, but don't smother him. Sincere appreciation in simple words means more than elaborate declarations."
        )
    }

    // MARK: - Libra Man

    static func libraIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .libra,
            teaser: isHetero
                ? "Libra men experience intimacy as art — beauty, balance, and romance unlock everything."
                : "Libra men bring romantic, aesthetic intention to every intimate moment.",
            bedroomEnergy: isHetero
                ? "Libra men approach intimacy as an art form. He wants beauty, balance, and romance throughout. Ambiance matters — lighting, music, sheets. He's a giving partner who wants mutual pleasure to feel like a duet. He doesn't respond to crude or rushed energy. He wants the moment to feel poetic."
                : "Libra men bring grace, romance, and balance to intimacy. He wants the experience to feel beautiful — soft lighting, music, romantic atmosphere. He's deeply giving and seeks mutual pleasure as harmony. Crude or rushed energy breaks his connection.",
            whatTheyWant: isHetero
                ? [
                    "Beautiful, romantic atmosphere",
                    "Mutual pleasure and balance",
                    "Romantic words throughout",
                    "Slow, savored moments",
                    "Feeling truly desired in an elegant way"
                ]
                : [
                    "Aesthetic beauty in the setting",
                    "Balance — give and receive",
                    "Romance woven throughout",
                    "Slow, intentional pacing",
                    "Feeling adored as a partner"
                ],
            whatToAvoid: isHetero
                ? [
                    "Crude or rough approaches",
                    "Selfish, one-sided experiences",
                    "Harsh lighting or unpleasant settings",
                    "Rushing through without savoring",
                    "Tension or conflict beforehand"
                ]
                : [
                    "Crude or aggressive energy",
                    "One-sided experiences",
                    "Unaesthetic settings",
                    "Rushing without romance",
                    "Conflict or harshness"
                ],
            afterward: isHetero
                ? "Libra men want the romance to continue afterward. Soft conversation, continued physical closeness, music still playing. Don't break the spell with crudeness or distraction."
                : "After intimacy, Libra men want the romantic energy to continue. Soft talk, lingering touch, beautiful atmosphere maintained. Breaking the mood by checking your phone takes away from everything."
        )
    }

    // MARK: - Scorpio Man

    static func scorpioIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .scorpio,
            teaser: isHetero
                ? "Scorpio men experience intimacy as soul-fusion — they want depth, presence, and total surrender."
                : "Scorpio men bring soul-level intensity and demand complete presence in intimate moments.",
            bedroomEnergy: isHetero
                ? "Scorpio men approach intimacy with consuming intensity. For him, sex is emotional, psychological, almost spiritual. He wants total presence — phone away, distractions gone, eye contact unbroken. He's powerfully sensual but it's never just physical. He wants to dissolve into you. Half-presence breaks the entire experience."
                : "Scorpio men bring transformative intensity to intimacy. He wants depth, presence, and emotional fusion. He's powerfully sensual, but the physical is always coupled with emotional and psychological depth. Surface-level encounters don't satisfy him.",
            whatTheyWant: isHetero
                ? [
                    "Complete, undistracted presence",
                    "Deep eye contact throughout",
                    "Emotional and physical fusion",
                    "Intensity, not performance",
                    "A partner who can match his depth"
                ]
                : [
                    "Total presence — no distractions",
                    "Deep eye contact",
                    "Emotional and physical fusion",
                    "Intensity over technique",
                    "A partner who isn't intimidated by his depth"
                ],
            whatToAvoid: isHetero
                ? [
                    "Distraction or divided attention",
                    "Surface-level energy",
                    "Holding back emotionally",
                    "Treating it as casual",
                    "Betraying his trust afterward"
                ]
                : [
                    "Holding back emotionally",
                    "Distraction during intimacy",
                    "Treating it as light or casual",
                    "Surface-level engagement",
                    "Any breach of trust"
                ],
            afterward: isHetero
                ? "Scorpio needs closeness afterward, but it might not look like soft cuddling. He might be quiet, processing depth. Stay present. Don't fill silence with chatter. He might initiate conversation that goes deep. This is bonding for him."
                : "After intimacy, Scorpio men may go quiet — he's processing depth, not retreating. Stay close, present, available. The conversation that comes after may go to surprisingly deep places. Be ready to meet him there."
        )
    }

    // MARK: - Sagittarius Man

    static func sagittariusIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .sagittarius,
            teaser: isHetero
                ? "Sagittarius men bring playfulness and adventure to intimacy — fun over heaviness."
                : "Sagittarius men approach intimacy with playful, adventurous energy.",
            bedroomEnergy: isHetero
                ? "Sagittarius men bring fun, energy, and adventure to intimacy. He doesn't take it too seriously — laughter mid-encounter is welcome. He's curious and willing to try new things. He wants spontaneity over ritual. He's not interested in partners who need every encounter to be a sacred ceremony."
                : "Sagittarius men approach intimacy with adventurous, playful energy. He's curious, exploratory, and unafraid to try new things. Laughter and play are welcome — heaviness is not. He wants partners who keep the energy alive.",
            whatTheyWant: isHetero
                ? [
                    "Fun, playful, exploratory energy",
                    "Spontaneity over ritual",
                    "A partner willing to try new things",
                    "Lightness alongside passion",
                    "Freedom from heavy expectations"
                ]
                : [
                    "Adventurous, playful spirit",
                    "Spontaneous moments",
                    "Willingness to explore",
                    "Light energy mixed with passion",
                    "Freedom from emotional weight"
                ],
            whatToAvoid: isHetero
                ? [
                    "Excessive seriousness",
                    "Heavy emotional intensity",
                    "Predictable routines",
                    "Pressure or expectation",
                    "Clinginess afterward"
                ]
                : [
                    "Heaviness or too much intensity",
                    "Predictable patterns",
                    "Emotional pressure",
                    "Possessiveness in the moment",
                    "Trying to define what it means"
                ],
            afterward: isHetero
                ? "Sagittarius doesn't need long, deep emotional processing afterward. He might want to talk about something completely random, joke around, or fall asleep quickly. Don't try to define what just happened. Don't get clingy."
                : "After intimacy, Sagittarius men want lightness. He might joke, talk about something random, or just enjoy the silence. He doesn't need debrief. Give him room and he'll come back wanting more."
        )
    }

    // MARK: - Capricorn Man

    static func capricornIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .capricorn,
            teaser: isHetero
                ? "Capricorn men have surprising sensual depth beneath their composure — trust unlocks it."
                : "Capricorn men bring quiet intensity and unexpected passion once trust is built.",
            bedroomEnergy: isHetero
                ? "Capricorn men appear composed and reserved, but underneath is surprising sensual depth. He doesn't open up easily, but when he does, he's powerfully passionate. He takes intimacy seriously and wants it to feel earned. He's not interested in casual encounters. Once he trusts you, he's a deeply skilled, attentive lover."
                : "Capricorn men bring composed sensuality and depth to intimacy. He's reserved at first, opening up gradually. Once he's there, he's surprisingly passionate. He takes intimacy seriously and wants it meaningful, not casual.",
            whatTheyWant: isHetero
                ? [
                    "Trust built over time",
                    "A partner who takes it seriously",
                    "Quality over quantity",
                    "Mutual respect and admiration",
                    "Recognition of his hidden passionate side"
                ]
                : [
                    "Slow trust-building first",
                    "A partner who values depth",
                    "Quality, not quantity",
                    "Mutual respect and care",
                    "Patience with his process"
                ],
            whatToAvoid: isHetero
                ? [
                    "Treating it as meaningless",
                    "Pressuring him to open up faster",
                    "Excessive emotional demands",
                    "Making it feel cheap",
                    "Public displays that embarrass him"
                ]
                : [
                    "Treating intimacy as casual",
                    "Pressuring his timeline",
                    "Emotional theatrics",
                    "Cheap or rushed energy",
                    "Public embarrassment"
                ],
            afterward: isHetero
                ? "Capricorn appreciates a partner who can shift back to normal life smoothly. He may not be the most verbally affectionate immediately after, but a sincere acknowledgment that you valued the experience matters."
                : "After intimacy, Capricorn men may need a moment to recalibrate. He's not pulling away — he's settling. A sincere word of appreciation matters more than elaborate affection."
        )
    }

    // MARK: - Aquarius Man

    static func aquariusIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .aquarius,
            teaser: isHetero
                ? "Aquarius men approach intimacy with curiosity and openness — mind first, body second."
                : "Aquarius men bring intellectual openness and unconventional energy to physical connection.",
            bedroomEnergy: isHetero
                ? "Aquarius men bring curiosity and unconventional energy to intimacy. He's experimental, open-minded, and not bound by traditional scripts. He wants mental engagement alongside physical. He's not deeply emotional in bed; he's exploratory. Don't expect traditional romance."
                : "Aquarius men approach intimacy with curiosity and openness. He's experimental and not interested in conventional patterns. Mental engagement is essential. He's not emotionally heavy in intimacy; he's curious and present.",
            whatTheyWant: isHetero
                ? [
                    "Mental stimulation alongside physical",
                    "Openness to experimentation",
                    "Freedom from traditional expectations",
                    "Respect for his individuality",
                    "A partner who isn't emotionally pressuring"
                ]
                : [
                    "Mental and physical curiosity together",
                    "Experimental openness",
                    "Freedom from scripts",
                    "Respect for his independence",
                    "A partner who's intellectually engaged"
                ],
            whatToAvoid: isHetero
                ? [
                    "Heavy emotional energy too soon",
                    "Possessive or clingy behavior",
                    "Conventional expectations",
                    "Demanding emotional processing",
                    "Judgment about his preferences"
                ]
                : [
                    "Emotional pressure",
                    "Possessiveness in the moment",
                    "Rigid expectations",
                    "Judgment about his openness",
                    "Trying to make it conventional"
                ],
            afterward: isHetero
                ? "Aquarius needs space afterward — not necessarily physical, but mental. Don't pressure him to define the experience or process emotions immediately. He'll come back to you in his own way."
                : "After intimacy, Aquarius men need mental space. He might want to talk about something random or just enjoy quiet. Don't pressure him to define the experience."
        )
    }

    // MARK: - Pisces Man

    static func piscesIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroWomanToMan
        return IntimacyProfile(
            sign: .pisces,
            teaser: isHetero
                ? "Pisces men experience intimacy as soul-merging — emotional connection unlocks transcendent physical depth."
                : "Pisces men bring romantic, soul-deep energy to intimate moments.",
            bedroomEnergy: isHetero
                ? "Pisces men approach intimacy as a deeply emotional, almost spiritual experience. He wants to merge completely with you — emotionally, physically, energetically. Without emotional connection, sex feels hollow to him. He's tender, romantic, and deeply intuitive. Setting matters: candles, music, soft lighting."
                : "Pisces men experience intimacy as emotional and spiritual fusion. He wants to dissolve into the connection. Without emotional depth, the physical means little to him. He's deeply tender, romantic, and intuitive.",
            whatTheyWant: isHetero
                ? [
                    "Deep emotional connection first",
                    "Romance, tenderness, presence",
                    "Eye contact and verbal affection",
                    "Beautiful, dreamy atmosphere",
                    "A partner who's emotionally available"
                ]
                : [
                    "Emotional and spiritual connection",
                    "Tenderness and romance",
                    "Eye contact and soft words",
                    "Beautiful, intentional atmosphere",
                    "A partner who's fully present"
                ],
            whatToAvoid: isHetero
                ? [
                    "Emotional coldness",
                    "Rough or impersonal energy",
                    "Distraction or absence",
                    "Harsh lighting or unromantic settings",
                    "Making him feel like just a body"
                ]
                : [
                    "Emotional disconnection",
                    "Rough or aggressive energy",
                    "Distraction during intimacy",
                    "Cold or harsh atmosphere",
                    "Making him feel objectified"
                ],
            afterward: isHetero
                ? "Pisces needs closeness and tenderness afterward more than almost any other sign. Hold him, speak softly, stay deeply present. This is when he feels most bonded to you."
                : "After intimacy, Pisces men need to be held, whispered to, kept close. This is when he feels most bonded. Disconnection in this moment hurts him deeply."
        )
    }
}
