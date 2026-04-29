//
//  IntimacyDataWomen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Women-targeted intimacy content for all 12 signs.
//  Selects between hetero (Man → Woman) and lesbian (Woman → Woman) variants
//  based on GuidanceContext.

import Foundation

struct IntimacyDataWomen {

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

    // MARK: - Aries Woman

    static func ariesIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .aries,
            teaser: isHetero
                ? "Aries women bring unfiltered passion and demand a partner who can match their intensity."
                : "Aries women bring fire to intimacy and want a partner who can keep up.",
            bedroomEnergy: isHetero
                ? "Aries women approach intimacy with the same boldness they bring to everything else. She'll initiate when she wants you, no games. She's physically expressive, vocal, and unafraid to take charge. She wants a man who can match her energy without trying to slow her down. Passion over romance, intensity over sweetness — at least at first."
                : "Aries women bring intensity and confidence to same-sex intimacy. She's not shy about what she wants and expects you to bring the same fire. She's drawn to women who can match her boldness without competing for control. Physical chemistry has to be electric, or she loses interest.",
            whatTheyWant: isHetero
                ? [
                    "A partner who initiates as much as she does",
                    "Confidence — hesitation kills the mood instantly",
                    "Spontaneity and unpredictability",
                    "Someone who matches her energy and stamina",
                    "Direct communication about what feels good"
                ]
                : [
                    "A partner who can match her intensity",
                    "Confidence and clear desire",
                    "Spontaneous, electric chemistry",
                    "Someone who isn't afraid to take charge sometimes",
                    "Playful competition and physicality"
                ],
            whatToAvoid: isHetero
                ? [
                    "Being passive or asking permission for everything",
                    "Slow, predictable routines",
                    "Excessive talking instead of action",
                    "Trying to control the pace",
                    "Emotional heaviness immediately after"
                ]
                : [
                    "Being passive or hesitant",
                    "Slow, repetitive patterns",
                    "Trying to dominate her completely",
                    "Killing the energy with overthinking",
                    "Being clingy in the moments after"
                ],
            afterward: isHetero
                ? "Aries women don't typically want long cuddling sessions or deep emotional debriefs. She'll want water, maybe food, and to talk about something else entirely. Don't take it personally — she shifts gears fast. She'll come back to you when she wants more. Smothering her after will make her pull away."
                : "After intimacy, Aries women may want space to come back down on their own terms. She's not necessarily cold — she just processes physically and moves on quickly. Don't pressure her for emotional debrief. Let her come back to you, and she will."
        )
    }

    // MARK: - Taurus Woman

    static func taurusIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .taurus,
            teaser: isHetero
                ? "Taurus women experience intimacy through every sense — slow, deliberate, and deeply pleasurable."
                : "Taurus women bring earthy sensuality and unhurried devotion to intimate moments.",
            bedroomEnergy: isHetero
                ? "Taurus is the most sensual sign of the zodiac, and Taurus women bring that fully into intimacy. She wants a slow build — kissing for an hour before anything else, hands wandering, time slowing down. She experiences intimacy through all five senses: touch, taste, smell, sight, sound. The setting matters. The smell of the sheets matters. Rushing her is the fastest way to break the spell."
                : "Taurus women approach intimacy as a full sensory experience. She wants to take her time, savor every moment. She's deeply tactile and responsive to touch that's slow and intentional. Atmosphere matters — beautiful setting, soft lighting, no rush. She'll lose herself completely when she feels safe and unhurried.",
            whatTheyWant: isHetero
                ? [
                    "Slow, sensual buildup — no rushing",
                    "Beautiful setting with attention to ambiance",
                    "A partner who pays attention to her body's responses",
                    "Long, lingering physical attention",
                    "Romance woven into the physical"
                ]
                : [
                    "Slow, intentional touch",
                    "A beautiful, comfortable environment",
                    "Patient, sensual exploration",
                    "Romance and beauty in the moment",
                    "A partner who takes her time"
                ],
            whatToAvoid: isHetero
                ? [
                    "Rushing or showing impatience",
                    "Ugly or chaotic environments",
                    "Skipping foreplay",
                    "Being rough when she wants tender",
                    "Treating it like a quick encounter"
                ]
                : [
                    "Rushing or pressuring her",
                    "Bringing chaotic or harsh energy",
                    "Skipping the slow buildup",
                    "Being too rough too fast",
                    "Making her feel unappreciated"
                ],
            afterward: isHetero
                ? "Taurus women love the afterglow. She'll want to stay close, maybe order food, definitely cuddle. This isn't the time to leap up and check your phone. Stay present, stroke her hair, talk softly. The afterward is part of the experience for her — and how you handle it determines if she'll want a next time."
                : "After intimacy, Taurus women want to linger. Stay close, talk softly, share food or wine. The afterward matters as much as the act itself. She wants to feel like the moment didn't end abruptly. Be present and unhurried."
        )
    }

    // MARK: - Gemini Woman

    static func geminiIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .gemini,
            teaser: isHetero
                ? "Gemini women connect physically through mental stimulation — words and wit are her erogenous zones."
                : "Gemini women bring playful, exploratory energy to intimacy — variety keeps her engaged.",
            bedroomEnergy: isHetero
                ? "Gemini women are mental creatures, and that includes intimacy. She wants verbal play, banter, dirty talk. She gets bored with predictable physical routines. Variety is essential — different times, different places, different approaches. She's playful and exploratory rather than deeply emotional. Her brain has to be engaged for her body to follow."
                : "Gemini women approach intimacy with curiosity and playfulness. She wants mental and physical stimulation simultaneously — talking, teasing, exploring. Routine bores her quickly. She's drawn to partners who keep things fresh, surprising, and verbally engaging. Predictability is the enemy.",
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
                    "Unexpected moments and surprises",
                    "A partner who keeps things fresh"
                ],
            whatToAvoid: isHetero
                ? [
                    "Silent, mechanical encounters",
                    "Same routine every time",
                    "Excessive emotional intensity",
                    "Treating it like a serious ritual",
                    "Making her feel pinned down"
                ]
                : [
                    "Predictable patterns",
                    "Heavy emotional energy too soon",
                    "Silence — she wants engagement",
                    "Repetition without surprise",
                    "Making her feel trapped"
                ],
            afterward: isHetero
                ? "Gemini women want to talk afterward — about anything. The conversation might jump topics rapidly, get playful, or spiral into something philosophical. She doesn't want heavy emotional processing. She wants engagement. If you go silent or check your phone, she'll feel disconnected fast."
                : "After intimacy, Gemini women want continued mental connection. She'll want to talk, joke, share random thoughts. Don't expect a long emotional debrief — she processes through conversation, not through silence."
        )
    }

    // MARK: - Cancer Woman

    static func cancerIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .cancer,
            teaser: isHetero
                ? "Cancer women open up physically through emotional safety — tenderness unlocks everything."
                : "Cancer women experience intimacy as deep emotional bonding — safety is essential.",
            bedroomEnergy: isHetero
                ? "Cancer women need to feel completely safe to open up physically. When she does, she's deeply giving, nurturing, and emotionally connected during intimacy. She experiences sex as an extension of love — separating them is foreign to her. She's tender, intuitive, and reads your body's responses carefully. Eye contact during intimacy isn't optional — it's essential."
                : "Cancer women bring emotional depth and tenderness to intimacy. She needs to feel emotionally safe before her body fully opens. Once she trusts you, she's deeply loving and present. Eye contact, gentle touch, and verbal affirmation are core to her experience. She wants to feel cherished, not used.",
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
                    "Making her feel like an object"
                ],
            afterward: isHetero
                ? "This is when Cancer women feel most vulnerable. She needs you to stay close, hold her, talk softly. Leaving quickly or shifting attention to your phone will feel like a profound rejection. Stay present, kiss her forehead, tell her how you feel. This is where deep bonds form for her."
                : "After intimacy, Cancer women need closeness and reassurance. Hold her, whisper to her, stay present. This is when she feels most connected — and most vulnerable. Leaving abruptly will wound her in ways she won't easily forget."
        )
    }

    // MARK: - Leo Woman

    static func leoIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .leo,
            teaser: isHetero
                ? "Leo women bring drama and generosity to intimacy — they want to be worshipped and to worship in return."
                : "Leo women bring confident sensuality and dramatic intensity to intimate moments.",
            bedroomEnergy: isHetero
                ? "Leo women bring confidence, warmth, and drama to intimacy. She wants to feel like the most desirable woman in the world — and she'll return that energy tenfold. She loves being admired, complimented during intimacy, and made to feel like a goddess. She's generous, expressive, and unafraid to be theatrical. Bringing tepid energy will deflate her completely."
                : "Leo women approach intimacy with confident generosity. She wants to be adored and to adore in return. She's expressive, warm, and theatrical when she feels celebrated. Quiet, hesitant energy doesn't work for her — she wants enthusiasm, presence, and admiration.",
            whatTheyWant: isHetero
                ? [
                    "To be verbally admired throughout",
                    "Enthusiasm and full engagement",
                    "A partner who shows desire openly",
                    "Romantic atmosphere — candles, music, beauty",
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
                    "Making her feel ordinary",
                    "Cold or impersonal settings"
                ]
                : [
                    "Lack of enthusiasm",
                    "Cold or perfunctory energy",
                    "Failing to compliment her",
                    "Making her feel unappreciated",
                    "Drab or unromantic settings"
                ],
            afterward: isHetero
                ? "Leo wants to bask in afterglow. She wants you to stay present, tell her how amazing she was, lavish her with continued affection. Don't roll over and check your phone — that's a fast way to make her question everything. Make her feel like she's still the center of your world."
                : "After intimacy, Leo women want continued admiration and warmth. Tell her how stunning she was. Stay close. Make her feel celebrated. Going cold or distracted afterward will damage her trust in the experience."
        )
    }

    // MARK: - Virgo Woman

    static func virgoIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .virgo,
            teaser: isHetero
                ? "Virgo women appear reserved but reveal surprising sensuality once they trust you completely."
                : "Virgo women bring careful attentiveness and hidden depth to intimate moments.",
            bedroomEnergy: isHetero
                ? "Virgo women may seem reserved, but once she trusts you, she reveals surprising sensuality and attentiveness. She's deeply observant during intimacy — she notices what works for you and adjusts. She takes pride in being a thoughtful, skilled partner. The environment must feel clean and comfortable. She doesn't perform; she's fully present and intentional."
                : "Virgo women approach intimacy with careful observation and quiet sensuality. She watches your responses and adjusts. She's attentive, thoughtful, and deeply present — not performative. Cleanliness and comfort matter to her. Once she's settled in and trusts you, she opens completely.",
            whatTheyWant: isHetero
                ? [
                    "A clean, comfortable environment",
                    "Patience and unhurried pace",
                    "A partner who notices her responses",
                    "Genuine appreciation, not performance",
                    "Mental comfort before physical surrender"
                ]
                : [
                    "Comfort and cleanliness in the setting",
                    "Patient, attentive presence",
                    "A partner who reads her body",
                    "Quiet intensity over loud drama",
                    "Trust built before vulnerability"
                ],
            whatToAvoid: isHetero
                ? [
                    "Messy or uncomfortable settings",
                    "Pressure to perform or move faster",
                    "Loud or theatrical energy",
                    "Making her feel self-conscious",
                    "Unpredictability she didn't agree to"
                ]
                : [
                    "Chaotic environments",
                    "Pressure to move at your pace",
                    "Performative energy",
                    "Making her feel judged",
                    "Sudden changes she didn't expect"
                ],
            afterward: isHetero
                ? "Virgo women appreciate practical care afterward. She might quietly tidy up, get water, adjust the temperature. Don't take this as cold — it's how she shows care. A simple, sincere 'that was incredible' lands more than flowery words. She'll come back into your arms once she's settled."
                : "After intimacy, Virgo women may want to take a moment to settle physically — tidying, water, comfort. This is how she processes and cares. Stay close, but don't smother her. Sincere appreciation in simple words means more than elaborate declarations."
        )
    }

    // MARK: - Libra Woman

    static func libraIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .libra,
            teaser: isHetero
                ? "Libra women experience intimacy as art — beauty, balance, and romance unlock everything."
                : "Libra women bring romance and aesthetic intention to every intimate moment.",
            bedroomEnergy: isHetero
                ? "Libra women approach intimacy as an art form. She wants beauty, balance, and romance throughout. Ambiance matters — lighting, music, sheets, scent. She's a giving partner who wants mutual pleasure to feel like a duet. She doesn't respond to crude or rushed energy. She wants to feel like the moment is poetic, not just physical."
                : "Libra women bring grace, romance, and balance to intimacy. She wants the experience to feel beautiful — soft lighting, music, romantic atmosphere. She's deeply giving and seeks mutual pleasure as a kind of harmony. Crude or rushed energy breaks her connection completely.",
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
                ? "Libra women want the romance to continue afterward. Soft conversation, continued physical closeness, music still playing, candles burning low. Don't break the spell with crudeness or distraction. Let the experience fade out beautifully — that's part of what made it special for her."
                : "After intimacy, Libra women want the romantic energy to continue. Soft talk, lingering touch, beautiful atmosphere maintained. Breaking the mood by checking your phone or shifting energy abruptly takes away from everything that came before."
        )
    }

    // MARK: - Scorpio Woman

    static func scorpioIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .scorpio,
            teaser: isHetero
                ? "Scorpio women experience intimacy as fusion — they want depth, presence, and total surrender."
                : "Scorpio women bring soul-level intensity and demand complete presence in intimate moments.",
            bedroomEnergy: isHetero
                ? "Scorpio women approach intimacy with consuming intensity. For her, sex is emotional, psychological, and almost spiritual. She wants total presence — phone away, distractions gone, eye contact unbroken. She's powerfully sensual but it's never just physical. She wants to dissolve into you and have you dissolve into her. Half-presence breaks the entire experience."
                : "Scorpio women bring transformative intensity to intimacy. She wants depth, presence, and emotional fusion. She's powerfully sensual, but the physical is always coupled with the emotional and psychological. She's reading you the entire time. Surface-level encounters don't satisfy her — she wants to merge.",
            whatTheyWant: isHetero
                ? [
                    "Complete, undistracted presence",
                    "Deep eye contact throughout",
                    "Emotional and physical fusion",
                    "Intensity, not performance",
                    "A partner who can match her depth"
                ]
                : [
                    "Total presence — no distractions",
                    "Deep eye contact",
                    "Emotional and physical fusion",
                    "Intensity over technique",
                    "A partner who isn't intimidated by her depth"
                ],
            whatToAvoid: isHetero
                ? [
                    "Distraction or divided attention",
                    "Surface-level energy",
                    "Holding back emotionally",
                    "Treating it as casual",
                    "Betraying her trust afterward"
                ]
                : [
                    "Holding back emotionally",
                    "Distraction during intimacy",
                    "Treating it as light or casual",
                    "Surface-level engagement",
                    "Any breach of trust"
                ],
            afterward: isHetero
                ? "Scorpio needs closeness afterward, but it might not look like soft cuddling. She might be quiet, processing the depth of what just happened. Stay present. Don't fill the silence with chatter. She might initiate conversation that goes to unexpected emotional places. This is bonding for her — engage fully or you'll feel her withdraw."
                : "After intimacy, Scorpio women may go quiet — she's processing depth, not retreating. Stay close, present, available. The conversation that comes after may go to surprisingly deep places. Be ready to meet her there."
        )
    }

    // MARK: - Sagittarius Woman

    static func sagittariusIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .sagittarius,
            teaser: isHetero
                ? "Sagittarius women bring playfulness and adventure to intimacy — they want fun, not heaviness."
                : "Sagittarius women approach intimacy with playful, adventurous energy and zero pretension.",
            bedroomEnergy: isHetero
                ? "Sagittarius women bring fun, energy, and a sense of adventure to intimacy. She doesn't take it too seriously — laughter mid-encounter is welcome. She's curious and willing to try new things. She wants spontaneity over ritual, lightness over heaviness. She's not interested in a partner who needs the experience to be a sacred ceremony every time."
                : "Sagittarius women approach intimacy with adventurous, playful energy. She's curious, exploratory, and unafraid to try new things. Laughter and play are welcome — heaviness is not. She wants partners who keep the energy alive and aren't afraid of unconventional moments.",
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
                ? "Sagittarius women don't need long, deep emotional processing afterward. She might want to talk about something completely random, joke around, suggest food, or fall asleep quickly. Don't try to define what just happened. Don't get clingy. She'll come back if you let her be free."
                : "After intimacy, Sagittarius women want lightness. She might joke, talk about something random, or just enjoy the silence. She doesn't need debrief. Give her room to be herself, and she'll come back wanting more."
        )
    }

    // MARK: - Capricorn Woman

    static func capricornIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .capricorn,
            teaser: isHetero
                ? "Capricorn women have surprising sensual depth beneath their composed exterior — trust unlocks everything."
                : "Capricorn women bring quiet intensity and unexpected passion once trust is built.",
            bedroomEnergy: isHetero
                ? "Capricorn women appear composed and reserved, but underneath is surprising sensual depth. She doesn't open up easily, but when she does, she's powerfully passionate. She takes intimacy seriously and wants it to feel earned, meaningful. She's not interested in casual encounters. Once she trusts you, she's a deeply skilled, attentive lover."
                : "Capricorn women bring composed sensuality and depth to intimacy. She's reserved at first, opening up gradually as trust builds. Once she's there, she's surprisingly passionate. She takes intimacy seriously and wants it to feel meaningful, not casual.",
            whatTheyWant: isHetero
                ? [
                    "Trust built over time",
                    "A partner who takes it seriously",
                    "Quality over quantity",
                    "Mutual respect and admiration",
                    "Recognition of her hidden passionate side"
                ]
                : [
                    "Slow trust-building first",
                    "A partner who values depth",
                    "Quality, not just quantity",
                    "Mutual respect and care",
                    "Patience with her process"
                ],
            whatToAvoid: isHetero
                ? [
                    "Treating it as meaningless",
                    "Pressuring her to open up faster",
                    "Excessive emotional demands",
                    "Making it feel cheap or rushed",
                    "Public displays that embarrass her"
                ]
                : [
                    "Treating intimacy as casual",
                    "Pressuring her timeline",
                    "Emotional theatrics",
                    "Cheap or rushed energy",
                    "Public embarrassment"
                ],
            afterward: isHetero
                ? "Capricorn women appreciate a partner who can shift back to normal life smoothly. She may not be the most verbally affectionate immediately after, but a sincere acknowledgment that you valued the experience matters. Give her space to recalibrate. She's not detaching — she's processing."
                : "After intimacy, Capricorn women may need a moment to recalibrate. She's not pulling away — she's settling. A sincere word of appreciation matters more than elaborate affection. Respect her process and she'll open more next time."
        )
    }

    // MARK: - Aquarius Woman

    static func aquariusIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .aquarius,
            teaser: isHetero
                ? "Aquarius women approach intimacy with curiosity and openness — mind first, body second."
                : "Aquarius women bring intellectual openness and unconventional energy to intimate moments.",
            bedroomEnergy: isHetero
                ? "Aquarius women bring curiosity and unconventional energy to intimacy. She's experimental, open-minded, and not bound by traditional scripts. She wants mental engagement alongside physical — talking, ideas, even philosophical observations mid-encounter aren't strange to her. She's not deeply emotional in bed; she's exploratory. Don't expect traditional romance."
                : "Aquarius women approach intimacy with curiosity and openness. She's experimental and not interested in conventional patterns. Mental engagement is essential — talking, exploring ideas, surprising each other. She's not emotionally heavy in intimacy; she's curious and present.",
            whatTheyWant: isHetero
                ? [
                    "Mental stimulation alongside physical",
                    "Openness to experimentation",
                    "Freedom from traditional expectations",
                    "Respect for her individuality",
                    "A partner who isn't emotionally pressuring"
                ]
                : [
                    "Mental and physical curiosity together",
                    "Experimental openness",
                    "Freedom from scripts",
                    "Respect for her independence",
                    "A partner who's intellectually engaged"
                ],
            whatToAvoid: isHetero
                ? [
                    "Heavy emotional energy too soon",
                    "Possessive or clingy behavior",
                    "Conventional expectations",
                    "Demanding emotional processing",
                    "Judgment about her preferences"
                ]
                : [
                    "Emotional pressure",
                    "Possessiveness in the moment",
                    "Rigid expectations",
                    "Judgment about her openness",
                    "Trying to make it conventional"
                ],
            afterward: isHetero
                ? "Aquarius needs space afterward — not necessarily physical, but mental. She might want to talk about something completely unrelated. She might fall silent. She might leave for water and come back. Don't pressure her to define the experience or process emotions immediately. She'll come back to you in her own way."
                : "After intimacy, Aquarius women need mental space. She might want to talk about something random or just enjoy quiet. Don't pressure her to define the experience. Let her process her own way and she'll come back to you."
        )
    }

    // MARK: - Pisces Woman

    static func piscesIntimacy(context: GuidanceContext) -> IntimacyProfile {
        let isHetero = context == .heteroManToWoman
        return IntimacyProfile(
            sign: .pisces,
            teaser: isHetero
                ? "Pisces women experience intimacy as soul-merging — emotional connection unlocks transcendent physical depth."
                : "Pisces women bring romantic, soul-deep energy to intimate moments — they want to merge completely.",
            bedroomEnergy: isHetero
                ? "Pisces women approach intimacy as a deeply emotional, almost spiritual experience. She wants to merge completely with you — emotionally, physically, energetically. Without emotional connection, sex feels hollow to her. She's tender, romantic, and deeply intuitive. She gives herself fully when she trusts you. Setting matters: candles, music, soft lighting, beauty everywhere."
                : "Pisces women experience intimacy as emotional and spiritual fusion. She wants to dissolve into the connection. Without emotional depth, the physical means little to her. She's deeply tender, romantic, and intuitive. The atmosphere needs to feel sacred — beautiful and intentional.",
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
                    "Making her feel like just a body"
                ]
                : [
                    "Emotional disconnection",
                    "Rough or aggressive energy",
                    "Distraction during intimacy",
                    "Cold or harsh atmosphere",
                    "Making her feel objectified"
                ],
            afterward: isHetero
                ? "Pisces needs closeness and tenderness afterward more than almost any other sign. Hold her, speak softly, stay deeply present. Tell her how you feel. This is when she feels most bonded to you. Leaving abruptly or shifting to something mundane will feel jarring and painful."
                : "After intimacy, Pisces women need to be held, whispered to, kept close. This is when she feels most bonded. Disconnection in this moment hurts her deeply. Stay present, soft, and emotionally available."
        )
    }
}
