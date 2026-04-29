//
//  SampleDataMen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Men-targeted profile content for all 12 signs.
//  Selects between hetero (Woman → Man) and gay (Man → Man) variants
//  based on GuidanceContext. Wired into ZodiacProfileView in Session 3C.

import Foundation

struct SampleDataMen {

    static func getProfile(for sign: ZodiacSign, context: GuidanceContext) -> ZodiacProfile {
        switch sign {
        case .aries: return ariesProfile(context: context)
        case .taurus: return taurusProfile(context: context)
        case .gemini: return geminiProfile(context: context)
        case .cancer: return cancerProfile(context: context)
        case .leo: return leoProfile(context: context)
        case .virgo: return virgoProfile(context: context)
        case .libra: return libraProfile(context: context)
        case .scorpio: return scorpioProfile(context: context)
        case .sagittarius: return sagittariusProfile(context: context)
        case .capricorn: return capricornProfile(context: context)
        case .aquarius: return aquariusProfile(context: context)
        case .pisces: return piscesProfile(context: context)
        }
    }

    // MARK: - Aries Man

    static func ariesProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .aries,
            tagline: isHetero
                ? "Aries men are bold, direct, and chase what they want unapologetically."
                : "Aries men bring fierce energy and primal pursuit to every connection.",
            introduction: isHetero
                ? "An Aries man is the definition of a hunter. He goes after what he wants without hesitation, and if he wants you, you'll know it. He's confident, sometimes to the point of arrogance, and he respects partners who hold their ground. He hates passivity and games. Be direct, be fierce, and don't shrink for him."
                : "An Aries man in same-sex dating is intense, fast-moving, and often dominant in pursuit. He goes hard or not at all. He wants a partner with his own fire — someone who can match his energy without being submissive about it. He's drawn to confidence and physical presence. Don't be soft for him; be real.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Aries men are drawn to confident, independent women who don't fawn over them. Make eye contact across the room, then look away first. Don't approach him — let him come to you. When he does, hold your own. Tease him, push back on his opinions. He's repelled by women who agree with everything he says. Show him you have your own life and won't be his second priority."
                    : "Aries men go for guys who carry themselves with confidence and physical presence. Make strong eye contact. Don't text him first if he's pursuing you — let him chase. When he approaches, push back, banter, hold your ground. Submissive energy bores him. He wants a partner he has to work for.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "An Aries man wants a partner who matches his fire. Build chemistry through challenge, physical confidence, and zero hesitation."
                    : "An Aries man is drawn to equal heat. Build chemistry by holding your ground, returning his intensity, and refusing to shrink.",
                scenarios: ariesScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Aries men bring intensity and dominance to physical connection — match his fire or step aside."
                    : "Aries men bring primal, dominant energy and want partners who can take it without breaking eye contact.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be direct — Aries hates guessing games", isPositive: true),
                    ChecklistItem("Maintain your independence; don't make him your everything", isPositive: true),
                    ChecklistItem("Match his energy and don't shrink", isPositive: true),
                    ChecklistItem("Push back when you disagree — he respects strength", isPositive: true),
                    ChecklistItem("Stay confident in physical presence and intimacy", isPositive: true)
                ]
                : [
                    ChecklistItem("Be direct and confident in your interest", isPositive: true),
                    ChecklistItem("Have your own life — independence is hot to him", isPositive: true),
                    ChecklistItem("Match his physical and verbal energy", isPositive: true),
                    ChecklistItem("Don't be submissive; push back playfully", isPositive: true),
                    ChecklistItem("Show competitive edge — he loves the chase", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be clingy or text constantly", isPositive: false),
                    ChecklistItem("Avoid being passive or letting him decide everything", isPositive: false),
                    ChecklistItem("Don't agree with everything he says", isPositive: false),
                    ChecklistItem("Skip the hard-to-get games — he hates manipulation", isPositive: false),
                    ChecklistItem("Don't try to slow him down once he's committed to pursuit", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't smother him or chase too hard", isPositive: false),
                    ChecklistItem("Avoid being submissive or agreeable to a fault", isPositive: false),
                    ChecklistItem("Don't try to control his pace", isPositive: false),
                    ChecklistItem("Skip emotional drama; he wants action", isPositive: false),
                    ChecklistItem("Don't be needy after intimacy", isPositive: false)
                ]
        )
    }

    static func ariesScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "He'll spot you across the room and either come over fast or not at all. When he approaches, don't be flustered. Hold his eye contact. Ask him a sharp question that makes him think. He'll test you with bold statements — push back. Show him you're not impressed, just intrigued. He'll commit to pursuit when he sees you won't be easy."
                    : "Aries men move fast — if he's interested, he's coming over within minutes. Don't seem too eager when he approaches. Match his energy with your own. Banter, challenge his statements, hold strong eye contact. He's reading whether you're worth his pursuit. Show him you're not desperate — you're discerning."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Aries tension builds through challenge and physicality. Don't text him constantly between dates — let him come to you. When you're together, be physically present: hold his arm during conversation, sit close enough that the air feels charged. Tease him about his ego. Disagree with him intelligently. He wants a partner who excites him through resistance, not compliance."
                    : "Build tension through physical proximity and verbal sparring. Don't be available 24/7 — make him work for your time. When you're together, get close. Tease him about his cockiness. Push back hard on his opinions. Aries men get more turned on by resistance than agreement. Make him want to win you over."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Aries moves fast when he's decided. He'll make his intentions clear — don't pretend not to notice. Match his confidence. In intimacy, he's intense, direct, and often dominant. He wants you to be present, vocal, and matching his fire. Don't fake demure. Let him see your real desire. After, don't get clingy — he respects partners who don't need constant reassurance."
                    : "Aries men close fast and physically. When he's making moves, match him without hesitation or play hard-to-get unnecessarily. He wants real, mutual desire. In bed, expect intensity, dominance, and high physical energy. Match it without losing yourself. After, give him space. He'll come back to you on his own terms."
            )
        ]
    }

    // MARK: - Taurus Man

    static func taurusProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .taurus,
            tagline: isHetero
                ? "Taurus men are steady, sensual, and worth the patience required to win them over."
                : "Taurus men bring grounded loyalty and slow-built passion to every relationship.",
            introduction: isHetero
                ? "A Taurus man takes his time with everything — including dating. He's not rushing into anything, and trying to push him will make him dig his heels in. He values consistency, comfort, and quality. He's deeply sensual but won't show that side until he trusts you. He's looking for a real partner, not a fling. Be patient — the payoff is profound loyalty."
                : "A Taurus man in same-sex dating values stability, sensuality, and slow-built trust. He's not interested in hookup culture or rapid-fire dating. He wants a partner who appreciates the finer things and isn't in a rush. Once he chooses you, he's all in for the long haul.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Taurus men are attracted to feminine, sensual, well-presented women. Pay attention to how you look, smell, and dress. He notices everything. Choose dates with great food and atmosphere; show you appreciate quality. Don't push for quick emotional intimacy — let him warm to you. He values consistency and traditional courtship more than wild surprises."
                    : "Taurus men are drawn to confident, well-presented partners who appreciate quality. Show up looking good — he notices presentation and aesthetics. Skip flashy or chaotic energy. Suggest dates at great restaurants, wine bars, or quiet places where you can really talk. Be patient; he opens up slowly.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Taurus man is a sensual creature who responds to slow build and earned trust. Build chemistry through atmosphere, patience, and consistent presence."
                    : "A Taurus man opens up to partners who slow down and stay grounded. Build chemistry through quality, patience, and unhurried sensuality.",
                scenarios: taurusScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Taurus men experience intimacy as a sensual feast — slow, deliberate, and deeply pleasurable."
                    : "Taurus men bring earthy sensuality and unhurried devotion to physical connection.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be patient — Taurus moves at his own pace", isPositive: true),
                    ChecklistItem("Show you appreciate quality (food, wine, experiences)", isPositive: true),
                    ChecklistItem("Be consistent in your communication", isPositive: true),
                    ChecklistItem("Compliment his stability and reliability", isPositive: true),
                    ChecklistItem("Show your sensual side gradually", isPositive: true)
                ]
                : [
                    ChecklistItem("Be patient with his timeline", isPositive: true),
                    ChecklistItem("Show appreciation for quality and aesthetics", isPositive: true),
                    ChecklistItem("Be consistent — flakiness kills attraction for him", isPositive: true),
                    ChecklistItem("Take it slow physically; he savors buildup", isPositive: true),
                    ChecklistItem("Compliment his groundedness and presence", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't rush him into anything — he'll resist", isPositive: false),
                    ChecklistItem("Avoid being flaky or canceling plans last minute", isPositive: false),
                    ChecklistItem("Don't bring drama or chaos into his life", isPositive: false),
                    ChecklistItem("Skip the cheap dates — he values quality", isPositive: false),
                    ChecklistItem("Don't pressure him for commitment too early", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't push him to move faster than he wants", isPositive: false),
                    ChecklistItem("Avoid emotional volatility", isPositive: false),
                    ChecklistItem("Don't be flaky — reliability is everything", isPositive: false),
                    ChecklistItem("Skip the chaotic lifestyle vibes", isPositive: false),
                    ChecklistItem("Don't pressure him into commitment", isPositive: false)
                ]
        )
    }

    static func taurusScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Meet him somewhere quality: a great restaurant, a wine bar, an upscale event. Dress beautifully — he's a visual creature. Order well, savor your food, take your time. Don't rush conversation. Show him you're a woman who appreciates the good things in life. He's evaluating whether you'd be a worthy long-term match, not just a fun night."
                    : "Choose somewhere with great food, ambiance, and energy. Dress sharp; he notices everything. Engage in unhurried conversation. Show him you appreciate quality and don't rush experiences. Taurus is looking for partner material — let him see your stability and sensual nature."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Taurus builds slowly through proximity and physicality. Sit close to him during dinner. Touch his hand when laughing. Wear something that smells incredible. He's deeply sensory — every touch, every scent registers. Don't text him constantly; when you do, make it warm and grounded. The slower you build, the more deeply he'll invest."
                    : "Build tension through slow physicality and shared experiences. Sit close. Touch his arm during conversation. Cook for him or take him to a place with great food. Smell good. Taurus's desire builds through accumulated sensual moments. Don't rush him into intimacy — make him crave it."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Taurus moves to intimacy on his timeline. When he's ready, he'll make it clear with extended kissing, deeper conversation, suggestions to extend the night. Don't pressure him before he's there. Once he is, take your time with him. He's incredibly sensual — slow kisses, lingering touch, full presence. He gives himself completely when he trusts you."
                    : "Don't rush the close. Taurus opens up when he's ready. When he does, expect deep sensuality and complete physical presence. He's the opposite of rushed. Match his pace. Be tactile, present, and patient. Once he's in, he's fully in — and he won't want to leave the bed for a long time."
            )
        ]
    }

    // MARK: - Gemini Man

    static func geminiProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .gemini,
            tagline: isHetero
                ? "Gemini men are charming, witty, and impossible to pin down."
                : "Gemini men bring intellectual energy and unpredictable spark to every connection.",
            introduction: isHetero
                ? "A Gemini man is mentally electric and socially fluent. He'll talk to you for hours about anything, but pinning him down emotionally takes time. He's drawn to women who can keep up intellectually and don't try to control him. He gets bored easily — predictability is the kiss of death. Be witty, surprising, and slightly mysterious."
                : "A Gemini man in same-sex dating is mentally agile, social, and constantly evolving. He's drawn to partners who can match his quick mind. He may seem flighty or hard to read — that's because he's processing five conversations at once. Don't try to lock him down too fast.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Gemini men are attracted to women with quick wit and intellectual range. Don't try to impress him with looks alone — engage his mind. Tease him, debate him, surprise him with random observations. Send him interesting articles, weird memes, unexpected texts. He's bored by predictable women. The more multifaceted you are, the more obsessed he'll get."
                    : "Gemini men are drawn to mentally engaging, socially confident partners. Be quick-witted and unpredictable. Show range — bring up something obscure, share an unexpected take. He'll text you constantly if you keep his brain engaged. Boring conversation kills his interest fast.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Gemini man is seduced through the mind first. Build chemistry with wit, surprise, and conversations he didn't see coming."
                    : "A Gemini man wants mental sparring and unpredictable energy. Build chemistry through ideas, banter, and never letting him get bored.",
                scenarios: geminiScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Gemini men experience intimacy through mental connection — words and play are his real turn-on."
                    : "Gemini men bring playful, exploratory, mentally-engaged energy to physical connection.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Engage his mind first — wit is foreplay for Gemini", isPositive: true),
                    ChecklistItem("Stay unpredictable; surprise him with plans and texts", isPositive: true),
                    ChecklistItem("Tease him verbally — he loves a sparring partner", isPositive: true),
                    ChecklistItem("Have your own social life and interests", isPositive: true),
                    ChecklistItem("Send him weird articles, memes, random thoughts", isPositive: true)
                ]
                : [
                    ChecklistItem("Stimulate him intellectually before anything else", isPositive: true),
                    ChecklistItem("Be socially adaptable — he loves bringing partners to events", isPositive: true),
                    ChecklistItem("Send unpredictable, witty texts", isPositive: true),
                    ChecklistItem("Suggest variety in dates", isPositive: true),
                    ChecklistItem("Be quick on your feet verbally", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be predictable or one-note", isPositive: false),
                    ChecklistItem("Avoid possessiveness — he needs social freedom", isPositive: false),
                    ChecklistItem("Don't pressure him for commitment too fast", isPositive: false),
                    ChecklistItem("Skip emotional heaviness early on", isPositive: false),
                    ChecklistItem("Don't take his sometimes-distracted moods personally", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't get clingy or possessive", isPositive: false),
                    ChecklistItem("Avoid heavy emotional conversations early", isPositive: false),
                    ChecklistItem("Don't expect him to share feelings on demand", isPositive: false),
                    ChecklistItem("Skip routine dates", isPositive: false),
                    ChecklistItem("Don't take his variability personally", isPositive: false)
                ]
        )
    }

    static func geminiScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Meet him somewhere social and stimulating: a trivia night, a bookstore reading, a quirky bar. Engage him immediately with a sharp opening — not a generic line, something that makes him look at you twice. Tease him within the first five minutes. Don't try to impress him with seriousness; show your wit. He's deciding fast whether you're going to be interesting."
                    : "Find him at events with intellectual or social energy: a panel, a poetry slam, a book launch. Engage with curiosity, not flirtation. Ask thought-provoking questions. Make him laugh and think simultaneously. Gemini is most attracted when his mind is fully activated."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Gemini builds through banter, surprise, and mental play. Text him at unexpected times with surprising content — a strange thought, a question, a meme. Plan multi-stop dates. Touch his shoulder when you tease him. Lean in close to share something private. Don't be too available — when you're with him, be fully there. When you're not, be unreachable."
                    : "Build tension through unpredictability and playful escalation. Send him wild texts. Show up to dates with surprises. Be physical in fun, spontaneous ways — pull him into a kiss mid-laugh, dance with him in public. Keep the energy crackling. Gemini wants the relationship to feel alive."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Gemini moves to intimacy when he's mentally captivated. When he's there, he'll make it clear — extended eye contact, suggestive banter, leaning in close. Don't make him work too hard once he's signaling. In bed, mix physicality with verbal play. Whisper, tease, surprise him. He stays interested through unpredictability."
                    : "Gemini will close when he's intellectually hooked and physically intrigued. When the moment is right, move with him — don't make him chase forever once it's mutual. In intimacy, mix conversation with action. Be playful, verbal, surprising. Keep the energy electric."
            )
        ]
    }

    // MARK: - Cancer Man

    static func cancerProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .cancer,
            tagline: isHetero
                ? "Cancer men are deeply emotional, family-oriented, and looking for real connection."
                : "Cancer men bring tender devotion and emotional depth to every relationship.",
            introduction: isHetero
                ? "A Cancer man feels everything more deeply than he lets on. He's protective, family-oriented, and looking for a partner who'll be his soft place to land. He moves slowly because he's been hurt before. Show him you're emotionally available and not playing games. He'll love you with everything he has when he trusts you."
                : "A Cancer man in same-sex dating values emotional safety, depth, and a sense of home. He's selective about who he opens up to, but once he does, his loyalty is unmatched. He wants a partner who can match his emotional intelligence and create a real life together.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Cancer men are drawn to feminine, nurturing women who feel emotionally available. Be warm, ask about his family, listen deeply when he shares. Don't be cold or overly cynical — he'll feel unsafe and pull back. Show your softer side. Cooking for him is a powerful move; food is love language for Cancer."
                    : "Cancer men want partners who feel emotionally available and warm. Be soft in your approach. Listen more than you speak in early conversations. Ask about his people — family, close friends, what makes him feel at home. Show him you can be tender, not just exciting.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Cancer man opens through emotional safety. Build chemistry slowly, gently, and with consistent presence."
                    : "A Cancer man wants to feel held before he's held. Build chemistry through tenderness, attention, and quiet steadiness.",
                scenarios: cancerScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Cancer men experience intimacy through emotional bonding — tenderness unlocks his full passion."
                    : "Cancer men bring soulful tenderness and emotional fusion to physical connection.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be emotionally present and available", isPositive: true),
                    ChecklistItem("Show interest in his family and inner world", isPositive: true),
                    ChecklistItem("Cook for him or invite him into homey settings", isPositive: true),
                    ChecklistItem("Be consistent — stability is everything to him", isPositive: true),
                    ChecklistItem("Show your softer, nurturing side", isPositive: true)
                ]
                : [
                    ChecklistItem("Create emotional safety in every interaction", isPositive: true),
                    ChecklistItem("Plan cozy, intimate dates", isPositive: true),
                    ChecklistItem("Listen deeply when he opens up", isPositive: true),
                    ChecklistItem("Show emotional vulnerability — he'll match it", isPositive: true),
                    ChecklistItem("Be patient; he opens slowly but completely", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be emotionally cold or dismissive", isPositive: false),
                    ChecklistItem("Avoid loud, chaotic environments early on", isPositive: false),
                    ChecklistItem("Don't push him to share before he's ready", isPositive: false),
                    ChecklistItem("Skip cynical humor — he takes things to heart", isPositive: false),
                    ChecklistItem("Don't disappear without explanation", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't dismiss his emotions or call him 'too sensitive'", isPositive: false),
                    ChecklistItem("Avoid environments that feel impersonal", isPositive: false),
                    ChecklistItem("Don't rush emotional intimacy", isPositive: false),
                    ChecklistItem("Skip emotional volatility", isPositive: false),
                    ChecklistItem("Don't ghost or go cold suddenly", isPositive: false)
                ]
        )
    }

    static func cancerScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Choose somewhere intimate and warm: a quiet wine bar, a cozy restaurant, a walk by water. Skip loud venues. Ask about his family, his closest friends, what he's been working through. Listen genuinely. Don't dominate the conversation. Make him feel like the most important person in the room."
                    : "Pick warm, intimate venues — a candlelit dinner, a cozy bookstore, a waterfront walk. Open up about something personal yourself. Cancer responds to vulnerability. Ask about his family and inner circle. Let conversation breathe. Don't force chemistry; let it grow."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Cancer builds through emotional intimacy. Send him thoughtful messages — caring, not just flirty. Remember small details and reference them later. Cook for him. Hold his hand during long conversations. The closer he feels emotionally, the more his physical desire grows."
                    : "Build tension through small, meaningful gestures. Drop off his favorite food. Save a song that reminded you of him. Show up in small consistent ways. Physical desire follows emotional safety with Cancer — let him see you care, and the chemistry builds organically."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Cancer needs emotional connection before physical intimacy. When you've built that, invite him somewhere private and warm — your home with a meal cooked, his place after a long talk. Move slowly. Eye contact, gentle touch. Tell him how you feel. He gives himself fully when he feels safe."
                    : "Move with tenderness when he's ready. Create intimacy in private, comfortable spaces — candles, music he loves. Take it slow. Words matter as much as touch with Cancer. Tell him what you're feeling. He'll give everything when he feels held."
            )
        ]
    }

    // MARK: - Leo Man

    static func leoProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .leo,
            tagline: isHetero
                ? "Leo men are confident, generous, and want to be admired and adored."
                : "Leo men bring magnetic warmth and dramatic devotion to relationships.",
            introduction: isHetero
                ? "A Leo man wants to be the king of his world, and he wants you to be his queen — proudly. He's generous, romantic, and loves making grand gestures. But he needs admiration. Compliment him sincerely. He'll lavish you with attention and affection in return. He's loyal when he feels valued. He's not interested in women who play it cool — he wants warmth."
                : "A Leo man in same-sex dating brings dramatic presence, generosity, and deep loyalty. He wants a partner who's proud to be with him, not threatened by his shine. He needs admiration and gives it generously. He's looking for someone who matches his confidence without competing for the spotlight.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Leo men want women who exude confidence and warmth. Compliment him on something specific — his style, his accomplishment, his energy. Don't be afraid to be feminine and admiring. He loves being adored. Take pride in your appearance — he wants a partner who looks like a power move on his arm. Don't play it cool; show him you're impressed."
                    : "Leo men are drawn to partners with presence, style, and warmth. Approach with confidence and genuine admiration. Compliment him specifically — Leo can spot generic flattery. Match his glamour without trying to outshine him. Be proud to be on his arm.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Leo man wants to feel chosen, adored, and celebrated. Build chemistry through generous attention and confident warmth."
                    : "A Leo man wants admiration and a partner who isn't afraid to claim him. Build chemistry through pride, glamour, and shared spotlight.",
                scenarios: leoScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Leo men bring dramatic, generous passion — they want to worship and be worshipped."
                    : "Leo men approach intimacy with confident generosity and dramatic intensity.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Compliment him sincerely and often", isPositive: true),
                    ChecklistItem("Show pride in being with him", isPositive: true),
                    ChecklistItem("Be warm and feminine — he loves traditional energy", isPositive: true),
                    ChecklistItem("Take care of your appearance", isPositive: true),
                    ChecklistItem("Show him off to your friends and family", isPositive: true)
                ]
                : [
                    ChecklistItem("Adore him openly — Leo loves being celebrated", isPositive: true),
                    ChecklistItem("Plan glamorous, public-facing dates", isPositive: true),
                    ChecklistItem("Compliment him specifically", isPositive: true),
                    ChecklistItem("Be confident; he's repelled by self-doubt", isPositive: true),
                    ChecklistItem("Show your loyalty publicly", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't ignore him or take him for granted", isPositive: false),
                    ChecklistItem("Avoid criticizing him in public", isPositive: false),
                    ChecklistItem("Don't be cold or play hard to get", isPositive: false),
                    ChecklistItem("Skip cheap or thoughtless dates", isPositive: false),
                    ChecklistItem("Don't compete for attention; complement him", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to compete with him", isPositive: false),
                    ChecklistItem("Avoid criticizing his appearance or style", isPositive: false),
                    ChecklistItem("Don't take him for granted", isPositive: false),
                    ChecklistItem("Skip drab or uninspired plans", isPositive: false),
                    ChecklistItem("Don't keep him hidden", isPositive: false)
                ]
        )
    }

    static func leoScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Let him take you somewhere he can shine — a nice restaurant, a high-energy event, somewhere he'll be seen. Dress beautifully. When you arrive, give him your full attention. Compliment him within the first 10 minutes. Be charming with the staff. Make him feel like he scored. He's deciding right now if you're worth his energy."
                    : "Pick venues with energy and beauty. Dress to match his style. Compliment him the moment you see him. Be present and engaged. Don't check your phone. Make him feel like he's the only person in the room. Leo responds to attention like fuel."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Leo builds through admiration mixed with playful challenge. Praise him constantly, but throw in a tease that shows you're not totally captured. Make him work for moments of your full attention. Touch him with confidence. Be physically warm but not always available. He wants to feel desired and chosen."
                    : "Build tension through generous attention and confident playfulness. Tell him he's stunning, then tease him about something silly. Be physically present — touch his arm, lean close. Show him you're crazy about him without losing your composure. Make him feel pursued, not pestered."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Leo will make his intentions clear when he's ready. Match his confidence. In intimacy, he's expressive, generous, and dramatic. He wants you to be vocal and present. Compliment him during. Show him your desire. He gives passionately when he feels worshipped. After, stay close — he wants the afterglow."
                    : "Move with confidence when the energy is right. Make extending the night feel like an event. In private, be generous with affection, words, and touch. Make him feel celebrated. Leo gives back tenfold when he feels adored. Stay close after — he wants continued admiration."
            )
        ]
    }

    // MARK: - Virgo Man

    static func virgoProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .virgo,
            tagline: isHetero
                ? "Virgo men are sharp, observant, and have impossibly high standards."
                : "Virgo men bring careful intention, sharp wit, and quiet devotion to relationships.",
            introduction: isHetero
                ? "A Virgo man is watching everything — how you treat the waiter, whether your texts have typos, if you show up on time. He's not judgmental for sport; he's discerning because he takes connection seriously. Be your best self. He values intelligence, cleanliness, and emotional consistency above almost everything."
                : "A Virgo man in same-sex dating values precision, consistency, and quiet depth. He's drawn to partners who are competent, thoughtful, and emotionally mature. He'll seem reserved at first — that's him assessing whether you're worth his time and energy.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Virgo men notice details. Show up on time, well-dressed, prepared. Be intelligent in conversation. Ask about his work and projects. Skip empty flattery — he sees right through it. Show competence in your own life. He's drawn to women who have their lives together and care about doing things well."
                    : "Virgo men are drawn to partners who are thoughtful, well-presented, and not full of themselves. Be on time. Be prepared. Show genuine interest in his work and ideas. Avoid hyperbole or empty compliments. He wants substance.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Virgo man warms to quiet competence and earned trust. Build chemistry through small, perfect details and patient consistency."
                    : "A Virgo man opens up to partners who show substance over flash. Build chemistry through reliability, intelligence, and careful attention.",
                scenarios: virgoScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Virgo men appear reserved but reveal surprising sensuality once they fully trust you."
                    : "Virgo men bring quiet intensity and careful attention to physical connection.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be punctual and prepared", isPositive: true),
                    ChecklistItem("Engage him with thoughtful questions", isPositive: true),
                    ChecklistItem("Pay attention to small details", isPositive: true),
                    ChecklistItem("Be clean and well-groomed", isPositive: true),
                    ChecklistItem("Compliment his competence and intelligence", isPositive: true)
                ]
                : [
                    ChecklistItem("Show up well-groomed and on time", isPositive: true),
                    ChecklistItem("Engage him with substantive conversation", isPositive: true),
                    ChecklistItem("Compliment his mind and work", isPositive: true),
                    ChecklistItem("Be reliable", isPositive: true),
                    ChecklistItem("Notice details about him", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be late, sloppy, or unprepared", isPositive: false),
                    ChecklistItem("Avoid empty flattery", isPositive: false),
                    ChecklistItem("Don't be loud or careless with words", isPositive: false),
                    ChecklistItem("Skip dirty or chaotic environments", isPositive: false),
                    ChecklistItem("Don't make promises you can't keep", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't be careless about hygiene or time", isPositive: false),
                    ChecklistItem("Avoid hyperbole or fake enthusiasm", isPositive: false),
                    ChecklistItem("Don't be emotionally chaotic", isPositive: false),
                    ChecklistItem("Skip loud, messy venues", isPositive: false),
                    ChecklistItem("Don't push him to be more open than he's ready", isPositive: false)
                ]
        )
    }

    static func virgoScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Plan around his standards: be punctual, dressed thoughtfully, prepared. Choose a quality restaurant — clean, well-reviewed. Engage him in real conversation about his work, his interests. Be a good listener. He's evaluating your character, your intelligence, your reliability."
                    : "Choose a venue that demonstrates thoughtfulness — a quiet, well-rated restaurant, a curated bookstore café. Be punctual and put-together. Engage him in real conversation about his work and ideas. Show that you've been paying attention to his life."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Virgo builds through quiet competence and consistency. Be reliable. Send texts that show you've been paying attention. Touch his hand briefly during a meaningful moment. The accumulation of small, perfect details creates more attraction than grand gestures."
                    : "Build tension through consistent, thoughtful attention. Notice his preferences. Send small, specific texts that show you're paying attention. Touch him with intention. Virgo's desire builds in increments."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't push for the close — make it natural. Suggest something low-key. Once alone, be patient. Let him relax. Touch him with intention. Virgo men are far more sensual than they appear, but only when they feel completely safe."
                    : "Move when the moment is clearly there. In private, be patient. Take time. Notice his body's response. Speak softly. Virgo's sensuality unlocks in safety. The slower you go, the more he gives."
            )
        ]
    }

    // MARK: - Libra Man

    static func libraProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .libra,
            tagline: isHetero
                ? "Libra men are charming, romantic, and crave partnership and beauty."
                : "Libra men bring grace, romance, and partnership energy to relationships.",
            introduction: isHetero
                ? "A Libra man is a romantic at heart. He loves love. He's social, charming, and looking for partnership — he doesn't do well alone. He's drawn to feminine, well-presented women who appreciate beauty as much as he does. He hates conflict, so don't bring drama. Be elegant, be diplomatic, be the kind of woman he'd want to introduce to everyone."
                : "A Libra man in same-sex dating craves romance, beauty, and partnership. He's drawn to partners who are emotionally balanced and aesthetically attuned. He wants to feel courted and adored. Conflict makes him recoil — keep things harmonious.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Libra men love beauty. Take care of your appearance, dress with style. Be socially graceful — he watches how you carry yourself in public. Engage him in great conversation; he loves intellectual partners. Don't be aggressive or confrontational. Be the woman he sees as his future."
                    : "Libra men love beauty, romance, and balance. Approach with charm and grace. Plan dates with great aesthetics. Bring him something thoughtful. Be socially smooth; he values how you carry yourself.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Libra man wants romance that feels cinematic. Build chemistry through beauty, courtship, and elegant pursuit."
                    : "A Libra man opens up to partners who match his aesthetic and emotional balance. Build chemistry through romance, harmony, and grace.",
                scenarios: libraScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Libra men experience intimacy as art — beauty, balance, and romance unlock everything."
                    : "Libra men bring romantic, aesthetic intention to every intimate moment.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be elegant and aesthetic in presentation", isPositive: true),
                    ChecklistItem("Engage him in great conversation", isPositive: true),
                    ChecklistItem("Be diplomatic and avoid conflict", isPositive: true),
                    ChecklistItem("Compliment his style and charm", isPositive: true),
                    ChecklistItem("Show partnership energy — he wants a teammate", isPositive: true)
                ]
                : [
                    ChecklistItem("Choose aesthetically beautiful date locations", isPositive: true),
                    ChecklistItem("Bring thoughtful gifts", isPositive: true),
                    ChecklistItem("Compliment his grace and style", isPositive: true),
                    ChecklistItem("Be diplomatic", isPositive: true),
                    ChecklistItem("Show partnership energy", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be aggressive or confrontational", isPositive: false),
                    ChecklistItem("Avoid bringing drama or conflict", isPositive: false),
                    ChecklistItem("Don't take him to chaotic or ugly venues", isPositive: false),
                    ChecklistItem("Skip the rough-around-the-edges energy", isPositive: false),
                    ChecklistItem("Don't be possessive — he needs social freedom", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't bring conflict or drama", isPositive: false),
                    ChecklistItem("Avoid harsh tones or critical language", isPositive: false),
                    ChecklistItem("Don't choose unaesthetic venues", isPositive: false),
                    ChecklistItem("Skip rough energy", isPositive: false),
                    ChecklistItem("Don't be controlling", isPositive: false)
                ]
        )
    }

    static func libraScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Meet him somewhere romantic and beautiful: a stunning restaurant, an art opening, a sunset spot. Dress elegantly. Be charming and engaged. Compliment his style. Make the night feel like a movie. Libra wants romance from minute one."
                    : "Pick venues with romance and beauty. Bring him something small and thoughtful. Be effortlessly charming. Compliment his elegance. Make the date feel like a love story."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Libra builds through romance and elegance. Send him beautiful texts — sweet, refined. Hold his hand while you walk. Slow dance with him in a quiet moment. Make every interaction feel like a scene. He wants intimacy that feels poetic."
                    : "Build tension through romantic gestures and aesthetic moments. Send him flowers for no reason. Pick songs you both love. Slow dance in his kitchen. Touch him with reverence. Libra wants intimacy that feels like art."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Suggest extending the night with elegance. A glass of wine on a balcony, a slow walk somewhere beautiful. When alone, be romantic. Kiss him slowly. Compliment him in whispered words. Libra wants intimacy to feel cinematic."
                    : "Move with romance when the moment is right. Make the closing of the night feel as beautiful as the beginning. Soft music, low lighting. Kiss him with intention. Libra opens up fully when intimacy feels like art."
            )
        ]
    }

    // MARK: - Scorpio Man

    static func scorpioProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .scorpio,
            tagline: isHetero
                ? "Scorpio men are intense, magnetic, and demand emotional depth."
                : "Scorpio men bring fierce passion, deep loyalty, and unmatched intensity.",
            introduction: isHetero
                ? "A Scorpio man doesn't do shallow. He's reading you the entire time — your eye contact, your honesty, your subtle energy. He's drawn to women with emotional depth and self-possession. He'll test you with silence and watchfulness. Once you earn his trust, his loyalty is unbreakable. But betray him and you're gone forever."
                : "A Scorpio man in same-sex dating brings unmatched emotional and physical intensity. He's drawn to partners who can hold their own with his depth. He tests partners with silence and watchfulness. Once he chooses you, he's all in — but only if you can match his fire.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Scorpio men are repelled by superficial women. Don't try too hard. Hold his gaze when you speak. Ask him real questions, not small talk. Show emotional courage. Be honest about your dark corners; he respects truth. Mystery is fine — dishonesty is fatal."
                    : "Scorpio men see through everything. Don't pretend to be more than you are. Hold his eye contact like you mean it. Speak about real things. Share something true about yourself early — he's drawn to emotional courage. He'll trust slowly, but completely.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Scorpio man wants total honesty and depth. Build chemistry through eye contact, emotional courage, and unflinching presence."
                    : "A Scorpio man tests for authenticity. Build chemistry by matching his intensity, his stillness, and his unblinking gaze.",
                scenarios: scorpioScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Scorpio men experience intimacy as soul-fusion — they want depth, presence, and total surrender."
                    : "Scorpio men bring soul-level intensity and demand complete presence in intimate moments.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be brutally honest — he can sense lies instantly", isPositive: true),
                    ChecklistItem("Hold deep eye contact", isPositive: true),
                    ChecklistItem("Share real, vulnerable parts of yourself", isPositive: true),
                    ChecklistItem("Be emotionally and physically present", isPositive: true),
                    ChecklistItem("Show loyalty in small, consistent ways", isPositive: true)
                ]
                : [
                    ChecklistItem("Be authentically yourself", isPositive: true),
                    ChecklistItem("Match his intensity", isPositive: true),
                    ChecklistItem("Hold deep eye contact", isPositive: true),
                    ChecklistItem("Share emotional truths early", isPositive: true),
                    ChecklistItem("Be loyal in actions", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't lie about anything", isPositive: false),
                    ChecklistItem("Avoid small talk for too long", isPositive: false),
                    ChecklistItem("Don't flirt with others when with him", isPositive: false),
                    ChecklistItem("Skip the fake act — he'll see through it", isPositive: false),
                    ChecklistItem("Don't betray his trust — there's no return", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't lie or manipulate", isPositive: false),
                    ChecklistItem("Avoid jealousy games", isPositive: false),
                    ChecklistItem("Don't keep him at surface level", isPositive: false),
                    ChecklistItem("Skip emotional cowardice", isPositive: false),
                    ChecklistItem("Don't betray his trust", isPositive: false)
                ]
        )
    }

    static func scorpioScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Choose somewhere intimate with low lighting: a dim wine bar, a private restaurant booth. Don't fill silences with chatter. Hold his gaze. Ask him what he's working through. Share something real. The energy should feel charged, even quiet."
                    : "Pick venues that allow for real conversation: a candlelit cocktail bar, a private booth, a quiet rooftop. Skip small talk. Ask him something that matters. Share something true about yourself. Hold his gaze when he speaks."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Scorpio is electric and almost unbearable. Hold eye contact too long. Speak just below normal volume. Touch his wrist briefly during a story. Don't text constantly — when you do, make it count. He wants the slow burn of restrained intensity."
                    : "Scorpio tension is intense, charged, almost meditative. Hold eye contact past comfort. Touch his wrist, the side of his neck, with intention. Speak softly. Don't text constantly — when you do, make it pierce."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't ask, don't perform. Scorpio's signal is unmistakable: he'll hold your gaze a beat too long, lean in. Move with confidence. In private, be intensely present. Eye contact during everything. He wants total fusion, not just sex."
                    : "Read his energy and move when he's signaling. Scorpio doesn't do hesitation. In private, be completely present. Hold his gaze. Move with intent. He wants to feel completely fused with you."
            )
        ]
    }

    // MARK: - Sagittarius Man

    static func sagittariusProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .sagittarius,
            tagline: isHetero
                ? "Sagittarius men are adventurous, optimistic, and refuse to be tied down."
                : "Sagittarius men bring wildness, optimism, and freedom-loving energy.",
            introduction: isHetero
                ? "A Sagittarius man lives for adventure, growth, and freedom. He's not interested in women who try to cage him. He wants a partner who has her own life and adventures. Be fun, independent, and ready to go places. Don't make him your entire world; he'll run."
                : "A Sagittarius man in same-sex dating values freedom, exploration, and intellectual chemistry. He's drawn to partners who have their own full lives. He wants travel buddies, idea partners, and lovers — but never a cage.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Sagittarius men are drawn to independent women with their own adventures. Talk about your travels, your goals, your sense of humor. Don't try to lock him down. Make him want to come with you. Show you have a full life beyond him."
                    : "Sagittarius men want to be inspired, not contained. Show him your own adventures and ideas. Be confident, funny, unfiltered. Don't try to slow him down or pin him into definition early. He's drawn to partners who can keep up with his wild energy.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Sagittarius man wants adventure and lightness. Build chemistry through humor, surprise, and the freedom to roam."
                    : "A Sagittarius man is seduced by partners who fuel his fire, not contain it. Build chemistry through play, honesty, and shared horizons.",
                scenarios: sagittariusScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Sagittarius men bring playfulness and adventure to intimacy — fun over heaviness."
                    : "Sagittarius men approach intimacy with playful, adventurous energy.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Plan adventurous, unexpected dates", isPositive: true),
                    ChecklistItem("Have your own life and ambitions", isPositive: true),
                    ChecklistItem("Make him laugh — humor is non-negotiable", isPositive: true),
                    ChecklistItem("Be honest and direct", isPositive: true),
                    ChecklistItem("Travel with him or talk about places to go", isPositive: true)
                ]
                : [
                    ChecklistItem("Suggest adventurous plans", isPositive: true),
                    ChecklistItem("Be honest and direct", isPositive: true),
                    ChecklistItem("Show your sense of humor", isPositive: true),
                    ChecklistItem("Have your own ambitions", isPositive: true),
                    ChecklistItem("Travel together", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be clingy or smother him", isPositive: false),
                    ChecklistItem("Avoid jealousy and possessiveness", isPositive: false),
                    ChecklistItem("Don't pressure him for commitment early", isPositive: false),
                    ChecklistItem("Skip boring, predictable dates", isPositive: false),
                    ChecklistItem("Don't be overly serious", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to control his schedule", isPositive: false),
                    ChecklistItem("Avoid heavy emotional drama", isPositive: false),
                    ChecklistItem("Don't pressure him to define the relationship", isPositive: false),
                    ChecklistItem("Skip routine", isPositive: false),
                    ChecklistItem("Don't take his independence personally", isPositive: false)
                ]
        )
    }

    static func sagittariusScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Skip the standard dinner. Suggest somewhere unusual: a hidden bar, an outdoor concert, a food truck adventure. Make him laugh in the first five minutes. Tell him about a recent trip or wild story. Don't try to lock him in."
                    : "Pick something unconventional: a comedy show, a rooftop concert, a spontaneous museum night. Be the one with the wild story. Make him laugh hard, early. Don't try to define what this is."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Sag builds through play and unpredictability. Suggest something spontaneous. Tease him, banter, push his buttons playfully. Don't text constantly. The freer he feels, the more he wants to be with you."
                    : "Build tension through unpredictability and play. Send him wild plans on short notice. Tease him about his opinions. Be physical in a fun, spontaneous way. Sag wants the energy to feel alive."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Sag moves fast when he's into you. When the night peaks, suggest extending it with adventure. In bed, he's playful and exploratory. Match his energy. Don't get serious. After, give him space."
                    : "Sag will signal clearly when he's ready. Move with him. Make the closing feel like an adventure too. In intimacy, be playful and adventurous. After, don't cling."
            )
        ]
    }

    // MARK: - Capricorn Man

    static func capricornProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .capricorn,
            tagline: isHetero
                ? "Capricorn men are ambitious, classy, and want a partner who can keep up."
                : "Capricorn men bring discipline, depth, and quiet ambition to relationships.",
            introduction: isHetero
                ? "A Capricorn man has goals, standards, and zero patience for chaos. He's drawn to ambitious women who have their lives together. He's reserved at first — that's him assessing whether you're a serious option. He's not opposed to romance, but he wants substance underneath. Show him you're worth his time."
                : "A Capricorn man in same-sex dating values stability, intelligence, and quiet ambition. He's drawn to partners building real lives. He's not opposed to romance, but wants foundation. Don't expect quick emotional opening — he warms slowly but completely.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Capricorn men want serious women. Show ambition. Be well-dressed and emotionally mature. Engage him about his work and goals. Skip childish humor. He values gravitas. Patience is essential — he's testing whether you'll stick around for the long climb."
                    : "Capricorn men are drawn to partners with substance — ambition, intelligence, financial stability. Skip flashy approaches. Be on time. Be prepared. Engage him with real conversation about his work and goals.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Capricorn man warms slowly to partners with substance. Build chemistry through ambition, reliability, and the long view."
                    : "A Capricorn man invests deeply when partners prove the long game. Build chemistry through quiet competence, consistency, and shared seriousness.",
                scenarios: capricornScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Capricorn men have surprising sensual depth beneath their composure — trust unlocks it."
                    : "Capricorn men bring quiet intensity and unexpected passion once trust is built.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Show ambition and have your life together", isPositive: true),
                    ChecklistItem("Be punctual, well-dressed, mature", isPositive: true),
                    ChecklistItem("Engage him about his goals and career", isPositive: true),
                    ChecklistItem("Be patient; he opens slowly", isPositive: true),
                    ChecklistItem("Show consistency", isPositive: true)
                ]
                : [
                    ChecklistItem("Show your own ambition and stability", isPositive: true),
                    ChecklistItem("Be on time and prepared", isPositive: true),
                    ChecklistItem("Engage him about his work and dreams", isPositive: true),
                    ChecklistItem("Be patient", isPositive: true),
                    ChecklistItem("Show emotional and financial maturity", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be flaky, lazy, or aimless", isPositive: false),
                    ChecklistItem("Avoid being overly emotional too early", isPositive: false),
                    ChecklistItem("Don't be cheap", isPositive: false),
                    ChecklistItem("Skip immature humor or party energy", isPositive: false),
                    ChecklistItem("Don't push him to commit fast", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't be unreliable or vague about goals", isPositive: false),
                    ChecklistItem("Avoid emotional theatrics", isPositive: false),
                    ChecklistItem("Don't push for emotional intimacy before trust", isPositive: false),
                    ChecklistItem("Skip chaotic lifestyle vibes", isPositive: false),
                    ChecklistItem("Don't try to dominate him", isPositive: false)
                ]
        )
    }

    static func capricornScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Plan something classy and well-executed: a quiet upscale restaurant, a wine bar. Show up sharp, on time, substantial. Engage him with real conversation about his work, his goals. Don't try to be funny for funny's sake. Be the woman who could be his partner in life."
                    : "Choose elegant, understated venues. Be on time and impeccably dressed. Engage him in real conversation. Show him you take him seriously. Don't perform; be substantial."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Capricorn builds slowly through respect and quiet pursuit. Show consistency. Compliment his achievements and presence. Touch him with intention but not aggression. The longer you build, the more deeply he invests."
                    : "Capricorn tension is slow and deep. Show consistency. Send messages that show you're thinking of him in real ways. Compliment his work, intelligence, drive. Physical tension grows from earned respect."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't rush. Capricorn moves toward intimacy on his timeline. When he's ready, take it. Beneath his composed exterior is surprising sensual depth. Take your time. He gives fully when he trusts completely."
                    : "Don't push the timeline. Capricorn opens up when he's ready. When he does, be present and patient. In private, you'll find him surprisingly sensual. Match his depth with your own presence."
            )
        ]
    }

    // MARK: - Aquarius Man

    static func aquariusProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .aquarius,
            tagline: isHetero
                ? "Aquarius men are unconventional, brilliant, and impossible to box in."
                : "Aquarius men bring originality, intellectual depth, and quiet rebellion to relationships.",
            introduction: isHetero
                ? "An Aquarius man is unique and proud of it. He's intellectual, original, and emotionally cool until he trusts you. He's drawn to women who think for themselves and don't try to mold him. He'll seem detached at times — that's just how he processes. Don't take it personally."
                : "An Aquarius man in same-sex dating values originality, intellectual chemistry, and freedom. He's drawn to partners who don't follow scripts. He'll seem aloof until you earn deeper access — and even then, he values his independence above almost anything.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Aquarius men love smart, original women. Don't try to be cool — be authentically yourself. Talk to him about ideas, big and small. Skip the typical romance script. He wants intellectual chemistry first, emotional second, physical third."
                    : "Aquarius men want partners with brains, originality, and edge. Approach with intellectual curiosity, not romantic scripting. Talk about ideas, art, social issues. Show him you don't follow the herd.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "An Aquarius man is seduced by ideas before bodies. Build chemistry through unconventional plans, intellectual chemistry, and respectful distance."
                    : "An Aquarius man opens up to partners who match his originality and respect his independence. Build chemistry through ideas, novelty, and space.",
                scenarios: aquariusScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Aquarius men approach intimacy with curiosity and openness — mind first, body second."
                    : "Aquarius men bring intellectual openness and unconventional energy to physical connection.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Engage his mind first", isPositive: true),
                    ChecklistItem("Be original; conventional bores him", isPositive: true),
                    ChecklistItem("Respect his independence and pace", isPositive: true),
                    ChecklistItem("Talk about real ideas", isPositive: true),
                    ChecklistItem("Be your weirdest, truest self", isPositive: true)
                ]
                : [
                    ChecklistItem("Engage him intellectually before anything else", isPositive: true),
                    ChecklistItem("Show your originality", isPositive: true),
                    ChecklistItem("Respect his need for space", isPositive: true),
                    ChecklistItem("Discuss real ideas", isPositive: true),
                    ChecklistItem("Don't follow scripts", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be possessive — he'll vanish", isPositive: false),
                    ChecklistItem("Avoid traditional gender expectations", isPositive: false),
                    ChecklistItem("Don't pressure him emotionally", isPositive: false),
                    ChecklistItem("Skip cliché romantic gestures", isPositive: false),
                    ChecklistItem("Don't be intellectually lazy", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to define the relationship early", isPositive: false),
                    ChecklistItem("Avoid emotional pressure", isPositive: false),
                    ChecklistItem("Don't be conventional", isPositive: false),
                    ChecklistItem("Skip clinginess", isPositive: false),
                    ChecklistItem("Don't take his aloofness personally", isPositive: false)
                ]
        )
    }

    static func aquariusScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Skip typical dates. Suggest a lecture, an experimental art show, a quirky restaurant. Engage him with weird and wonderful conversation. Ask what he's reading, what theories he's into. Don't try to flirt traditionally — let intellectual chemistry do the work."
                    : "Choose unconventional venues: a poetry slam, an experimental gallery, a documentary screening. Engage him with ideas. Ask his opinion on something he'd actually have a hot take on. Skip flirtation; let mental chemistry build."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Aquarius tension builds through long, mind-bending conversations. Send him articles, theories, observations. Plan dates that feel like adventures of the mind. Don't text constantly — quality over quantity. When you touch him, make it meaningful."
                    : "Build tension through intellectual depth and unexpected gestures. Send him things that show you've thought about him. Be physically present but not pushy. Aquarius warms in increments."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Aquarius moves on his own timeline and signals subtly. Read him — late-night invitation, prolonged eye contact, a touch that lingers. Move when it's clear. In private, he's curious and open but not necessarily romantic. Don't get clingy after."
                    : "When the moment is right, move without overthinking. Aquarius signals through proximity and quiet intensity. In intimacy, he's exploratory and open. Don't smother him after."
            )
        ]
    }

    // MARK: - Pisces Man

    static func piscesProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroWomanToMan

        return ZodiacProfile(
            sign: .pisces,
            tagline: isHetero
                ? "Pisces men are romantic, deeply feeling, and want soul-deep connection."
                : "Pisces men bring romance, intuition, and emotional depth to every connection.",
            introduction: isHetero
                ? "A Pisces man feels everything. He's romantic, intuitive, and craves deep connection. He's looking for soul-deep love, not casual. He's empathetic but also vulnerable to being hurt. Be tender, be honest, be present. He'll give you everything — but only if he feels safe."
                : "A Pisces man in same-sex dating seeks soul connection above almost everything. He's deeply romantic, emotional, and intuitive. He wants a partner who can meet him in the realm of feeling.",
            howToAttract: ProfileSection(
                title: "Getting His Attention",
                content: isHetero
                    ? "Pisces men are drawn to feminine, emotionally available women. Be tender. Listen deeply. Share your dreams, your art, your spiritual side. He's looking for a soulmate. Be patient and present. Cynical or cold women lose him instantly."
                    : "Pisces men want romance, depth, and tenderness. Approach softly. Share your dreams, your art, your inner world. Listen with full presence. He's drawn to partners who can meet him in the realm of emotion.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Pisces man wants soul-deep romance. Build chemistry through tenderness, creativity, and emotional fluency."
                    : "A Pisces man opens up to partners who meet him in the realm of feeling. Build chemistry through softness, art, and reverence.",
                scenarios: piscesScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: isHetero
                    ? "Pisces men experience intimacy as soul-merging — emotional connection unlocks transcendent physical depth."
                    : "Pisces men bring romantic, soul-deep energy to intimate moments.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be tender, romantic, emotionally present", isPositive: true),
                    ChecklistItem("Listen deeply when he shares feelings", isPositive: true),
                    ChecklistItem("Plan dreamy dates: water, music, candles", isPositive: true),
                    ChecklistItem("Share your emotional and creative side", isPositive: true),
                    ChecklistItem("Be patient and gentle", isPositive: true)
                ]
                : [
                    ChecklistItem("Approach with romance and tenderness", isPositive: true),
                    ChecklistItem("Share your inner world", isPositive: true),
                    ChecklistItem("Plan imaginative, soulful dates", isPositive: true),
                    ChecklistItem("Listen deeply", isPositive: true),
                    ChecklistItem("Be gentle", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be cold or emotionally unavailable", isPositive: false),
                    ChecklistItem("Avoid harsh criticism", isPositive: false),
                    ChecklistItem("Don't be inconsistent", isPositive: false),
                    ChecklistItem("Skip rough or overly logical energy", isPositive: false),
                    ChecklistItem("Don't dismiss his intuition", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't be emotionally cold or sarcastic", isPositive: false),
                    ChecklistItem("Avoid harsh language", isPositive: false),
                    ChecklistItem("Don't dismiss his feelings", isPositive: false),
                    ChecklistItem("Skip chaotic energy", isPositive: false),
                    ChecklistItem("Don't disappear emotionally", isPositive: false)
                ]
        )
    }

    static func piscesScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Pick somewhere dreamy: candlelit restaurant, moonlit beach, quiet bar with live acoustic music. Slow down. Ask about his dreams, his favorite poetry, what music moves him. Be tender and emotionally present."
                    : "Choose romantic, atmospheric venues. Be soft. Ask him about his inner world, his dreams, his art. Listen with full attention. Make him feel like he's in a moment that matters."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Pisces builds through emotional and creative intimacy. Send him songs that remind you of him. Touch his hand softly. Look at him like you really see him. Pisces falls deep when he feels emotionally seen."
                    : "Build tension through emotional and artistic resonance. Share music, poetry, dreams. Touch him gently. Tell him how he makes you feel. Romance is the foreplay."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Pisces wants intimacy that feels transcendent. Suggest extending the night gently — a walk under stars, music at his place, candles. Be slow, present, tender. Whisper how you feel. Pisces gives himself fully to a partner who meets him in the soul."
                    : "Move toward intimacy with reverence. Pisces doesn't want rushed energy. Create a beautiful, soft moment. Look at him like he matters. Tell him how you feel. He'll give everything when he feels held."
            )
        ]
    }
}
