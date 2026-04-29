//
//  DatingPlaybookDataMen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Men-targeted Dating Playbook content for all 12 signs.
//  Selects between hetero (Woman → Man) and gay (Man → Man) variants
//  based on GuidanceContext.

import Foundation

struct DatingPlaybookDataMen {

    static func getPlaybook(for sign: ZodiacSign, context: GuidanceContext) -> DatingPlaybook {
        switch sign {
        case .aries: return ariesPlaybook(context: context)
        case .taurus: return taurusPlaybook(context: context)
        case .gemini: return geminiPlaybook(context: context)
        case .cancer: return cancerPlaybook(context: context)
        case .leo: return leoPlaybook(context: context)
        case .virgo: return virgoPlaybook(context: context)
        case .libra: return libraPlaybook(context: context)
        case .scorpio: return scorpioPlaybook(context: context)
        case .sagittarius: return sagittariusPlaybook(context: context)
        case .capricorn: return capricornPlaybook(context: context)
        case .aquarius: return aquariusPlaybook(context: context)
        case .pisces: return piscesPlaybook(context: context)
        }
    }

    // MARK: - Aries Man

    static func ariesPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .aries,
            firstDate: PlaybookCard(
                title: "First Date With an Aries Man",
                content: isHetero
                    ? [
                        "Be ready for action — he hates passive, slow dates.",
                        "Don't try to control the plan; let him lead but push back when it matters.",
                        "Match his energy. Bring confidence, not nervousness.",
                        "Don't fawn over him; show him you have your own life.",
                        "Be physically present — eye contact, light touches, warmth."
                    ]
                    : [
                        "Be ready for action — passive vibes turn him off.",
                        "Let him drive the plan but push back where it matters.",
                        "Match his energy — confidence over nerves.",
                        "Don't fawn — show him you've got your own thing going.",
                        "Be physical: eye contact, light touch, magnetic warmth."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"You don't seem like someone who plays it safe.\"",
                        "\"I had different plans tonight, but I like yours better.\"",
                        "\"I'm not impressed easily, but I'm interested.\"",
                        "\"Bet I can [game/activity] better than you.\"",
                        "Avoid: agreeing with everything, hesitant openers, playing too cool."
                    ]
                    : [
                        "\"You don't strike me as the safe-bet type.\"",
                        "\"My plans changed — yours sound better.\"",
                        "\"I'm not impressed easily, but I'm interested.\"",
                        "\"Bet I can beat you at [game].\"",
                        "Avoid: agreeing with everything, soft openers, playing too cool."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Active spots — sports bars, rooftop lounges, pool halls.",
                        "Outdoor adventures: hiking, kayaking, biking trails.",
                        "Competitive activities: arcade bars, axe throwing, mini-golf.",
                        "Skip: long tasting menus, slow dinners, museum tours.",
                        "Bonus: anywhere you can show off a skill."
                    ]
                    : [
                        "Active spots — sports bars, rooftops, gaming venues.",
                        "Outdoor: hiking, climbing, biking, kayaking.",
                        "Competitive activities: arcade bars, axe throwing, pool.",
                        "Skip: long tasting menus, slow museum dates.",
                        "Bonus: anywhere you can show a skill or compete."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Experience gifts: tickets to a game, an adventure, a class.",
                        "Sport or fitness gear he's mentioned wanting.",
                        "Bold statement items — never anything safe or generic.",
                        "Spontaneous surprises beat planned gifts.",
                        "Avoid: overly sentimental items early on."
                    ]
                    : [
                        "Experiences over things — game tickets, adventure passes.",
                        "Sport or fitness gear he's been eyeing.",
                        "Bold, masculine statement pieces.",
                        "Spontaneous surprises beat scheduled gifts.",
                        "Avoid: sentimental gestures too early."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting an Aries Man",
                content: isHetero
                    ? [
                        "Keep it short and direct. He hates long, drawn-out texts.",
                        "Be confident in your messaging — no second-guessing.",
                        "Challenge him: \"Bet you can't guess where I am.\"",
                        "Don't double-text. Let him chase a little.",
                        "Use texts to set plans, not to have full conversations."
                    ]
                    : [
                        "Short, direct, punchy. No long texts.",
                        "Be confident — no second-guessing your messages.",
                        "Challenge him with playful banter.",
                        "Don't double-text or chase too hard.",
                        "Texts are for plans; save real talks for in-person."
                    ]
            )
        )
    }

    // MARK: - Taurus Man

    static func taurusPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .taurus,
            firstDate: PlaybookCard(
                title: "First Date With a Taurus Man",
                content: isHetero
                    ? [
                        "Choose somewhere with great food — Taurus eats well.",
                        "Dress beautifully. He's a visual creature and notices effort.",
                        "Don't rush him. He moves at his own pace.",
                        "Be sensual in presence — slow gestures, warm eye contact.",
                        "Show appreciation for quality and good experiences."
                    ]
                    : [
                        "Pick a place with great food and atmosphere.",
                        "Dress sharp — he notices presentation and quality.",
                        "Don't rush him; he moves at his own pace.",
                        "Be sensual in presence — slow, warm, present.",
                        "Show appreciation for quality and craftsmanship."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"This place is gorgeous — great pick.\"",
                        "\"I love that you appreciate good [food/wine/whatever].\"",
                        "\"Take me through your favorite [hobby/passion].\"",
                        "\"You make me feel really comfortable.\"",
                        "Avoid: rushing the night, flakiness, drama, oversharing too fast."
                    ]
                    : [
                        "\"This spot is incredible — great choice.\"",
                        "\"I love that you appreciate quality.\"",
                        "\"Walk me through your favorite [hobby/passion].\"",
                        "\"You make me feel really at ease.\"",
                        "Avoid: rushing, flakiness, drama, oversharing."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "High-quality restaurants, steakhouses, wine bars.",
                        "Live jazz, intimate music venues with great acoustics.",
                        "Scenic outdoor spots: vineyards, gardens, beautiful parks.",
                        "Cooking classes or whiskey tastings.",
                        "Skip: loud clubs, fast-casual chains, chaotic spots."
                    ]
                    : [
                        "Premium restaurants, steakhouses, wine bars.",
                        "Live jazz, intimate music venues.",
                        "Outdoor beauty: vineyards, scenic walks, gardens.",
                        "Cooking classes, spirits tastings, food experiences.",
                        "Skip: loud clubs, fast-casual chains, chaotic venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Quality items that last: leather goods, fine watches, premium pens.",
                        "Premium food and drink: aged whiskey, fine cigars, gourmet treats.",
                        "Luxurious comfort items: cashmere, quality cologne, soft bedding.",
                        "Beautiful accessories — quality over quantity.",
                        "Avoid: cheap or impersonal gifts."
                    ]
                    : [
                        "Quality items built to last: leather, fine watches, premium goods.",
                        "Premium food and drink: aged whiskey, fine cigars, gourmet items.",
                        "Luxurious comfort: cashmere, cologne, premium grooming.",
                        "Beautiful, well-made accessories.",
                        "Avoid: cheap or impersonal gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Taurus Man",
                content: isHetero
                    ? [
                        "Be consistent — text at similar times, build rhythm.",
                        "Send food pics or restaurant ideas you'd want to try together.",
                        "Don't rush replies. He takes his time.",
                        "Use warm, genuine language. No mind games.",
                        "Plan dates via text — he likes knowing what's coming."
                    ]
                    : [
                        "Consistent timing — he values rhythm.",
                        "Send food pics or places to try together.",
                        "Don't rush replies; respond thoughtfully.",
                        "Warm and genuine — no hot-cold games.",
                        "Use texts to plan dates; he likes preparation."
                    ]
            )
        )
    }

    // MARK: - Gemini Man

    static func geminiPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .gemini,
            firstDate: PlaybookCard(
                title: "First Date With a Gemini Man",
                content: isHetero
                    ? [
                        "Plan a multi-stop date — drinks, then walk, then somewhere new.",
                        "Choose interesting venues that spark conversation.",
                        "Be flexible — he'll suggest changing the plan.",
                        "Bring stories, opinions, curiosity.",
                        "Keep things light and witty — heavy talk too soon turns him off."
                    ]
                    : [
                        "Multi-spot date — drinks, walk, then somewhere unexpected.",
                        "Choose conversation-sparking venues.",
                        "Be flexible — he'll suggest plan changes mid-date.",
                        "Bring stories, takes, curiosity.",
                        "Keep it light; heavy emotional talk loses him."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I read something today that made me think of you.\"",
                        "\"What's the most random thing you're obsessed with right now?\"",
                        "\"This is fun, but I bet I know somewhere better nearby.\"",
                        "\"You're hard to read. I like that.\"",
                        "Avoid: monologues, heavy emotional topics, predictable questions."
                    ]
                    : [
                        "\"I read something today that made me think of you.\"",
                        "\"What's the most random thing you're into right now?\"",
                        "\"This is fun — but I know somewhere even better.\"",
                        "\"You're hard to read. I love that.\"",
                        "Avoid: long monologues, heavy emotional weight, basic questions."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Multi-stop dates: cocktails, then walk, then dessert spot.",
                        "Trivia nights, comedy shows, interactive events.",
                        "Quirky venues: themed bars, weird museums, indie spots.",
                        "Bookstores, record shops, anywhere with things to discover.",
                        "Skip: anywhere that requires sitting still for hours."
                    ]
                    : [
                        "Multi-stop nights: drinks, walk, dessert.",
                        "Trivia, comedy shows, interactive events.",
                        "Quirky venues — themed bars, indie spots.",
                        "Bookstores, record shops, places to browse.",
                        "Skip: long stationary dinners."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Books on topics he's currently obsessed with.",
                        "Experiences that involve learning something new.",
                        "Gadgets, puzzles, anything that engages his mind.",
                        "Tickets to surprising events — talks, shows, oddities.",
                        "Avoid: overly romantic gifts too early."
                    ]
                    : [
                        "Books on his current obsessions.",
                        "Experiences that engage his curiosity.",
                        "Gadgets, puzzles, mind-engaging items.",
                        "Tickets to weird, surprising events.",
                        "Avoid: cliche romantic gifts too early."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Gemini Man",
                content: isHetero
                    ? [
                        "Witty and playful — banter is key.",
                        "Send memes, articles, random thoughts.",
                        "Don't over-explain. Leave some mystery.",
                        "Vary timing — don't always reply instantly.",
                        "Ask questions that spark real conversations."
                    ]
                    : [
                        "Witty and playful — banter is the love language.",
                        "Memes, articles, random observations all work.",
                        "Don't over-explain — leave mystery.",
                        "Vary your reply timing.",
                        "Ask questions that spark real conversations."
                    ]
            )
        )
    }

    // MARK: - Cancer Man

    static func cancerPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .cancer,
            firstDate: PlaybookCard(
                title: "First Date With a Cancer Man",
                content: isHetero
                    ? [
                        "Choose somewhere cozy and intimate — he hates loud, chaotic places.",
                        "A quieter restaurant or meaningful walk works perfectly.",
                        "Show genuine interest in his life, family, and inner world.",
                        "Be warm and emotionally present.",
                        "Follow up the next day — consistency means everything to him."
                    ]
                    : [
                        "Cozy and intimate over loud and chaotic.",
                        "Quiet restaurant or meaningful walk.",
                        "Show real interest in his family and inner world.",
                        "Be warm, emotionally present, phone away.",
                        "Follow up next day — consistency matters most."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"What makes you feel most at home?\"",
                        "\"Tell me about the people closest to you.\"",
                        "\"I really enjoyed tonight — let's do this again.\"",
                        "\"You have such a calming energy.\"",
                        "Avoid: surface chat, dismissing emotions, sarcasm about family."
                    ]
                    : [
                        "\"What makes you feel most at home?\"",
                        "\"Tell me about the people closest to you.\"",
                        "\"I really enjoyed this — I want to see you again.\"",
                        "\"You have a calming energy I really appreciate.\"",
                        "Avoid: surface chat, dismissing emotions, sarcasm about family."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Cozy restaurants with warm lighting and comfort food.",
                        "Waterfront spots — Cancer is drawn to water.",
                        "Home-cooked dinner when the time is right.",
                        "Quiet cafes, farmers markets, scenic walks.",
                        "Skip: loud bars, large groups, hyper-trendy spots."
                    ]
                    : [
                        "Warm, cozy restaurants with comfort food.",
                        "Anywhere near water: beaches, lakes, riverside.",
                        "Home-cooked dinner when timing is right.",
                        "Quiet cafes, farmers markets, peaceful walks.",
                        "Skip: loud clubs, big groups, hyper-trendy spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Thoughtful and personal beats expensive.",
                        "Photo gifts: a framed picture, a photo book.",
                        "Homemade anything — cookies, a playlist, a handwritten note.",
                        "Comfort items: a soft blanket, scented candle.",
                        "Avoid: generic gifts that show no thought."
                    ]
                    : [
                        "Thoughtful trumps expensive every time.",
                        "Photo gifts: framed pics, photo books.",
                        "Homemade: cookies, playlists, handwritten notes.",
                        "Comfort items: blankets, candles, cozy things.",
                        "Avoid: generic, impersonal gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Cancer Man",
                content: isHetero
                    ? [
                        "Good morning and goodnight texts mean a lot.",
                        "Share emotional things — he loves connection via text.",
                        "Remember details from past conversations and reference them.",
                        "Be responsive. Long silences feel like rejection.",
                        "Voice notes occasionally — he loves hearing your voice."
                    ]
                    : [
                        "Morning and goodnight texts mean a lot.",
                        "Share emotional things — he connects via text.",
                        "Remember small details and reference them.",
                        "Be responsive — silences feel like rejection.",
                        "Voice notes occasionally are powerful."
                    ]
            )
        )
    }

    // MARK: - Leo Man

    static func leoPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .leo,
            firstDate: PlaybookCard(
                title: "First Date With a Leo Man",
                content: isHetero
                    ? [
                        "Make it an event — somewhere impressive, not casual.",
                        "Dress beautifully. He notices effort.",
                        "Compliment him sincerely throughout the night.",
                        "Show pride in being on the date with him.",
                        "End with a memorable moment — a great view, a special toast."
                    ]
                    : [
                        "Make the night feel like an event.",
                        "Dress to impress — he notices effort.",
                        "Compliment him sincerely throughout.",
                        "Show pride in being there with him.",
                        "End with a memorable moment — view, toast, photo op."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I've been looking forward to this all week.\"",
                        "\"You have an energy that's impossible to ignore.\"",
                        "\"Tell me about something you're proud of.\"",
                        "\"Your confidence is magnetic.\"",
                        "Avoid: backhanded compliments, competing for attention, dismissiveness."
                    ]
                    : [
                        "\"I've been looking forward to this all week.\"",
                        "\"Your energy is magnetic.\"",
                        "\"Tell me what you're most proud of right now.\"",
                        "\"Your confidence is incredibly attractive.\"",
                        "Avoid: backhanded compliments, competing, dismissiveness."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Atmosphere venues: rooftops, upscale lounges, scene restaurants.",
                        "Places where you can see and be seen.",
                        "Live entertainment: concerts, shows, theater.",
                        "Anywhere with reservations and great service.",
                        "Skip: dive bars, fast-casual chains, low-energy spots."
                    ]
                    : [
                        "Atmosphere spots: rooftops, upscale lounges, popular venues.",
                        "Places to see and be seen.",
                        "Live entertainment: concerts, theater, shows.",
                        "Anywhere with reservations and great service.",
                        "Skip: dive bars, casual chains, low-energy spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Luxurious and visible: quality watches, designer items, statement pieces.",
                        "Experiences that pamper him: fine dining, spa day, premium events.",
                        "Personalized items with monogram or initials.",
                        "Bold, sophisticated aesthetics — gold tones, leather, statement design.",
                        "Avoid: practical gifts or anything ordinary."
                    ]
                    : [
                        "Luxurious and visible: watches, designer items, statement pieces.",
                        "Experiences that pamper: fine dining, spa days, premium events.",
                        "Personalized items — monograms, custom pieces.",
                        "Bold, sophisticated style — gold, leather, statement.",
                        "Avoid: practical or ordinary gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Leo Man",
                content: isHetero
                    ? [
                        "Compliment him — Leo loves praise via text.",
                        "Hype him up about his wins and ambitions.",
                        "Send pics of things that reminded you of him.",
                        "Bring energy — don't text dryly.",
                        "Let him know when he's on your mind."
                    ]
                    : [
                        "Compliment him — he loves praise.",
                        "Hype up his wins and ambitions.",
                        "Send pics of things that reminded you of him.",
                        "Bring energy — don't text dryly.",
                        "Let him know when he's on your mind."
                    ]
            )
        )
    }

    // MARK: - Virgo Man

    static func virgoPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .virgo,
            firstDate: PlaybookCard(
                title: "First Date With a Virgo Man",
                content: isHetero
                    ? [
                        "Plan ahead — he notices when you don't.",
                        "Quality over flashy — choose a well-reviewed spot.",
                        "Be on time. Five minutes early is ideal.",
                        "Show attention to detail in the date.",
                        "Be polite to staff — he's noticing."
                    ]
                    : [
                        "Plan ahead — he notices when you don't.",
                        "Quality over flashy — well-reviewed spots only.",
                        "Be punctual; five minutes early is ideal.",
                        "Show attention to detail.",
                        "Be polite to staff — he's watching."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I picked this place because [specific detail].\"",
                        "\"What are you working on right now?\"",
                        "\"I'd love your perspective on something.\"",
                        "\"You catch things other people miss.\"",
                        "Avoid: vague answers, rambling stories, bragging."
                    ]
                    : [
                        "\"I picked this place because [specific detail].\"",
                        "\"What are you working on right now?\"",
                        "\"I'd love your take on something.\"",
                        "\"You notice things other people miss.\"",
                        "Avoid: vague answers, rambling stories, bragging."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Clean, well-reviewed restaurants.",
                        "Bookstores, museums, cultural exhibits.",
                        "Well-maintained nature walks.",
                        "Classes — learn something together.",
                        "Skip: chaotic, dirty, or overly loud venues."
                    ]
                    : [
                        "Clean, well-reviewed restaurants.",
                        "Bookstores, museums, cultural exhibits.",
                        "Well-maintained nature walks.",
                        "Classes — learn something together.",
                        "Skip: chaotic, dirty, or loud venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Practical but high-quality: a beautiful notebook, quality tools.",
                        "Organizational items he'll actually use.",
                        "Books on topics he cares about.",
                        "Wellness items: quality grooming products, fine teas.",
                        "Avoid: clutter, sentimental items, anything cheap."
                    ]
                    : [
                        "Practical but high-quality items he'll use.",
                        "Beautiful organizational tools.",
                        "Books on topics he actually cares about.",
                        "Quality wellness gifts: grooming, teas.",
                        "Avoid: clutter, sentimental fluff, cheap items."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Virgo Man",
                content: isHetero
                    ? [
                        "Use proper grammar and spelling — he notices everything.",
                        "Clear and organized messages. No rambling.",
                        "Ask thoughtful questions about his work.",
                        "Quality over quantity — don't over-text.",
                        "Follow through on anything you mention."
                    ]
                    : [
                        "Proper grammar and spelling — he notices.",
                        "Clear, organized messages. No rambling.",
                        "Ask thoughtful questions about his work.",
                        "Quality over quantity.",
                        "Follow through on what you mention."
                    ]
            )
        )
    }

    // MARK: - Libra Man

    static func libraPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .libra,
            firstDate: PlaybookCard(
                title: "First Date With a Libra Man",
                content: isHetero
                    ? [
                        "Choose somewhere visually beautiful — aesthetics matter to him.",
                        "Plan something romantic from minute one.",
                        "Dress thoughtfully — he notices every detail.",
                        "Be charming, attentive, balanced in conversation.",
                        "Don't rush the goodbye — let the moment linger."
                    ]
                    : [
                        "Choose somewhere visually stunning.",
                        "Plan something romantic from the start.",
                        "Dress thoughtfully — he notices every detail.",
                        "Be charming, balanced in conversation.",
                        "Don't rush the goodbye — linger in the moment."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I thought of you when I found this place.\"",
                        "\"You have incredible taste.\"",
                        "\"What do you think? I trust your opinion.\"",
                        "\"This feels like a scene from a movie.\"",
                        "Avoid: crude humor, hot takes, conflict-creating energy."
                    ]
                    : [
                        "\"I thought of you when I found this place.\"",
                        "\"You have incredible taste.\"",
                        "\"What do you think? I trust your judgment.\"",
                        "\"This feels like a scene from a movie.\"",
                        "Avoid: crude humor, hot takes, conflict-creating energy."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Art galleries, design museums, beautiful spaces.",
                        "Romantic, upscale restaurants.",
                        "Rooftop bars with stunning views.",
                        "Gardens, scenic walks, photogenic spots.",
                        "Skip: dives, harsh lighting, ugly venues."
                    ]
                    : [
                        "Art galleries, design museums, beautiful venues.",
                        "Romantic, upscale restaurants.",
                        "Rooftop bars with stunning views.",
                        "Gardens, scenic walks, photogenic spots.",
                        "Skip: dives, harsh lighting, ugly venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Beautiful things: quality cologne, art prints, designer accessories.",
                        "Style items: scarves, watches, refined accessories.",
                        "Experiences for two: wine tasting, gallery opening, couples spa.",
                        "Anything aesthetically pleasing and well-presented.",
                        "Avoid: practical-only gifts or anything ugly."
                    ]
                    : [
                        "Beautiful things: cologne, art, designer accessories.",
                        "Style items: scarves, watches, refined pieces.",
                        "Experiences for two: tastings, galleries, spas.",
                        "Aesthetically pleasing, beautifully wrapped.",
                        "Avoid: purely practical or unattractive items."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Libra Man",
                content: isHetero
                    ? [
                        "Flirty and romantic — he loves sweet messages.",
                        "Ask his opinion on things — he loves being consulted.",
                        "Send beautiful photos: sunsets, art, things he'd love.",
                        "Keep tone light and positive — no text fights.",
                        "Balance — don't dominate, don't go silent."
                    ]
                    : [
                        "Flirty and romantic — he loves sweet messages.",
                        "Ask his opinion — he loves being consulted.",
                        "Send beautiful photos: art, sunsets, things he'd love.",
                        "Keep tone light and positive — no text conflicts.",
                        "Balance the conversation — engaged but not dominating."
                    ]
            )
        )
    }

    // MARK: - Scorpio Man

    static func scorpioPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .scorpio,
            firstDate: PlaybookCard(
                title: "First Date With a Scorpio Man",
                content: isHetero
                    ? [
                        "Pick somewhere intimate where real conversation can happen.",
                        "Don't fill silence with small talk — let intensity build.",
                        "Be honest. He'll catch any pretense.",
                        "Show depth — share something real about yourself.",
                        "Don't try to impress. Authenticity is everything."
                    ]
                    : [
                        "Choose somewhere intimate for real conversation.",
                        "Don't fill silence — let the tension build.",
                        "Be honest. He'll catch any fakeness.",
                        "Show depth — share something real about yourself.",
                        "Don't try to impress — authenticity is everything."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"Tell me something most people don't know about you.\"",
                        "\"I don't usually share this, but...\"",
                        "\"You see through people, don't you?\"",
                        "\"I have no interest in small talk.\"",
                        "Avoid: small talk, dodging questions, fake answers."
                    ]
                    : [
                        "\"Tell me something most people don't know about you.\"",
                        "\"I don't usually share this, but...\"",
                        "\"You see through people, don't you?\"",
                        "\"Small talk bores me. Let's go deeper.\"",
                        "Avoid: small talk, evasive answers, anything fake."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Intimate, dimly lit spots: speakeasies, candlelit dinners.",
                        "Privacy and atmosphere matter most.",
                        "Late-night walks through interesting neighborhoods.",
                        "Anywhere with a sense of being hidden or special.",
                        "Skip: bright, crowded, or superficial places."
                    ]
                    : [
                        "Intimate, dim spots: speakeasies, candlelit dinners.",
                        "Privacy and atmosphere matter most.",
                        "Late-night walks through interesting parts of town.",
                        "Anywhere that feels hidden or special.",
                        "Skip: bright, crowded, superficial venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Meaningful over expensive — show you understand him.",
                        "Books on psychology, philosophy, or transformation.",
                        "Dark, sophisticated aesthetics: black, deep red, leather.",
                        "Rare or hard-to-find items.",
                        "Avoid: generic gifts or anything too public."
                    ]
                    : [
                        "Meaningful over expensive — show you get him.",
                        "Books on psychology, philosophy, transformation.",
                        "Dark, sophisticated style: black, deep red, leather.",
                        "Rare or hard-to-find items.",
                        "Avoid: generic gifts or public gestures."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Scorpio Man",
                content: isHetero
                    ? [
                        "Be real — he senses fakeness even through text.",
                        "Don't overshare too fast — let mystery build.",
                        "Respond thoughtfully, not reflexively.",
                        "Skip surface chat — ask questions that matter.",
                        "Late-night texts work — he comes alive at night."
                    ]
                    : [
                        "Be real — he senses fakeness through text.",
                        "Don't overshare — let mystery build.",
                        "Respond thoughtfully, not instantly.",
                        "Skip surface chat — go deeper.",
                        "Late-night texts hit different with him."
                    ]
            )
        )
    }

    // MARK: - Sagittarius Man

    static func sagittariusPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .sagittarius,
            firstDate: PlaybookCard(
                title: "First Date With a Sagittarius Man",
                content: isHetero
                    ? [
                        "Make it an adventure with story potential.",
                        "Don't overplan — leave room for spontaneity.",
                        "Bring high energy and humor.",
                        "Stay open to where the night goes.",
                        "End with \"next time we should...\" — he loves future plans."
                    ]
                    : [
                        "Make it an adventure with story potential.",
                        "Don't overplan — leave room for spontaneity.",
                        "Bring high energy and humor.",
                        "Stay open to where the night goes.",
                        "End with \"next time we should...\" — he loves future plans."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I have an idea — want to just go?\"",
                        "\"What's the wildest trip you've taken?\"",
                        "\"Life's too short for boring dates.\"",
                        "\"I love that you're up for anything.\"",
                        "Avoid: complaining, negativity, needing rigid structure."
                    ]
                    : [
                        "\"I have an idea — want to just go?\"",
                        "\"What's the craziest place you've traveled?\"",
                        "\"Life's too short for boring dates.\"",
                        "\"I love that you're up for anything.\"",
                        "Avoid: complaining, negativity, rigid structure."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Adventure spots: food markets, outdoor concerts, new neighborhoods.",
                        "Road trips or spontaneous day adventures.",
                        "Ethnic food — somewhere he's never tried.",
                        "Comedy shows, live music, high-energy venues.",
                        "Skip: formal dinners, quiet spots, rigid reservation venues."
                    ]
                    : [
                        "Adventure spots: markets, outdoor concerts, new districts.",
                        "Road trips or spontaneous day adventures.",
                        "Ethnic food — somewhere he hasn't tried.",
                        "Comedy shows, live music, high-energy spots.",
                        "Skip: formal dinners, quiet places, rigid plans."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Travel gear: backpacks, tags, journals, experience vouchers.",
                        "Tickets to anything — trip, festival, event.",
                        "Books on philosophy, travel, adventure.",
                        "Items from other countries or cultures.",
                        "Avoid: anything that feels like commitment too soon."
                    ]
                    : [
                        "Travel gear: backpacks, tags, journals, experiences.",
                        "Tickets to anything — trip, festival, event.",
                        "Books on travel, philosophy, adventure.",
                        "Items from other countries or cultures.",
                        "Avoid: anything that feels too tied-down."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Sagittarius Man",
                content: isHetero
                    ? [
                        "Light and fun — no heavy conversations via text.",
                        "Spontaneous invites: \"I'm going to X, come with?\"",
                        "Send memes, travel pics, weird finds.",
                        "Don't expect instant replies — he's probably out.",
                        "Texts are for plans, not deep talks."
                    ]
                    : [
                        "Light and fun — no heavy talks via text.",
                        "Spontaneous invites: \"I'm going to X, come?\"",
                        "Memes, travel pics, weird discoveries.",
                        "Don't expect instant replies — he's out living.",
                        "Texts are for plans; deep talks happen in person."
                    ]
            )
        )
    }

    // MARK: - Capricorn Man

    static func capricornPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .capricorn,
            firstDate: PlaybookCard(
                title: "First Date With a Capricorn Man",
                content: isHetero
                    ? [
                        "Be on time and well-prepared — he notices both.",
                        "Quality venue, not flashy — refinement over showiness.",
                        "Show ambition and direction in your life.",
                        "Substantial conversation — no frivolous chatter.",
                        "Don't expect instant warmth — he warms slowly."
                    ]
                    : [
                        "Be punctual and well-prepared — both matter.",
                        "Quality venue over flashy — refinement wins.",
                        "Show your own ambition and direction.",
                        "Substantial conversation — no frivolous chatter.",
                        "Don't expect instant warmth — he warms slowly."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"What are you working toward right now?\"",
                        "\"Your drive is impressive.\"",
                        "\"Tell me about something you've built.\"",
                        "\"I respect how seriously you take your work.\"",
                        "Avoid: flakiness, emotional theatrics, aimlessness."
                    ]
                    : [
                        "\"What are you working toward right now?\"",
                        "\"Your drive is impressive.\"",
                        "\"Tell me about something you've built.\"",
                        "\"I respect how seriously you take your work.\"",
                        "Avoid: flakiness, emotional drama, aimlessness."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Classic, upscale spots — timeless over trendy.",
                        "Whiskey bars, fine dining, private restaurants.",
                        "Cultural venues: museums, historical landmarks.",
                        "Anywhere demonstrating taste and maturity.",
                        "Skip: loud clubs, chaotic venues, casual spots."
                    ]
                    : [
                        "Classic, upscale spots — timeless over trendy.",
                        "Whiskey bars, fine dining, private restaurants.",
                        "Cultural venues: museums, historical sites.",
                        "Anywhere with refinement and maturity.",
                        "Skip: loud clubs, chaotic or casual spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Quality items built to last: leather, classic watches, fine pens.",
                        "Career-aligned: a great book, networking access.",
                        "Fine spirits: aged whiskey, quality wine.",
                        "Anything showing real investment of thought.",
                        "Avoid: cheap, trendy, or impractical items."
                    ]
                    : [
                        "Quality items built to last: leather, watches, fine pens.",
                        "Career-aligned: great book, networking access.",
                        "Fine spirits: aged whiskey, quality wine.",
                        "Items that show real thought and investment.",
                        "Avoid: cheap, trendy, impractical items."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Capricorn Man",
                content: isHetero
                    ? [
                        "Concise and purposeful — no fluff.",
                        "Reasonable hours; late-night texts seem chaotic.",
                        "Share wins and goals — he respects ambition.",
                        "Don't expect long text conversations.",
                        "Texts are for plans, not relationship-building."
                    ]
                    : [
                        "Concise and purposeful — no fluff.",
                        "Reasonable hours — late texts seem chaotic.",
                        "Share wins and goals — he respects ambition.",
                        "Don't expect long text conversations.",
                        "Texts are for plans; relationship happens in person."
                    ]
            )
        )
    }

    // MARK: - Aquarius Man

    static func aquariusPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .aquarius,
            firstDate: PlaybookCard(
                title: "First Date With an Aquarius Man",
                content: isHetero
                    ? [
                        "Skip standard dinner — go unconventional.",
                        "Engage his mind first; the heart follows.",
                        "Don't try too hard at romance — feels forced to him.",
                        "Be authentically yourself, even the weird parts.",
                        "Let things unfold without forcing the vibe."
                    ]
                    : [
                        "Skip standard dinner dates — go unconventional.",
                        "Engage his mind first — heart follows.",
                        "Don't try too hard with romance — feels forced.",
                        "Be authentically yourself, even the weird parts.",
                        "Let things unfold organically — don't force vibes."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I read something that made me think of you.\"",
                        "\"What's a belief you have that most people disagree with?\"",
                        "\"I don't really do conventional dates.\"",
                        "\"You think differently. I love that.\"",
                        "Avoid: clichés, small talk, scripted lines."
                    ]
                    : [
                        "\"I read something that made me think of you.\"",
                        "\"What's a belief you hold that most people reject?\"",
                        "\"I don't really do conventional dates.\"",
                        "\"You think differently. I love that.\"",
                        "Avoid: clichés, small talk, scripted lines."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Offbeat spots: indie cinemas, unusual museums, quirky areas.",
                        "Lectures, talks, intellectual events.",
                        "Places he's never been or heard of.",
                        "Group hangouts can work for first dates.",
                        "Skip: traditional fancy romantic spots."
                    ]
                    : [
                        "Offbeat spots: indie cinemas, unusual museums.",
                        "Lectures, talks, intellectual events.",
                        "Places he's never been or heard of.",
                        "Group hangouts work for first dates with him.",
                        "Skip: traditional romantic spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Something unique and unexpected.",
                        "Tech, gadgets, innovative items.",
                        "Donations to causes he cares about.",
                        "Books on science, futurism, social change.",
                        "Avoid: traditional romantic gifts."
                    ]
                    : [
                        "Something unique and unexpected.",
                        "Tech, gadgets, innovative items.",
                        "Donations to causes he cares about.",
                        "Books on science, futurism, social change.",
                        "Avoid: traditional romantic gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting an Aquarius Man",
                content: isHetero
                    ? [
                        "Send interesting articles, ideas, random thoughts.",
                        "Don't expect consistent text patterns — he's unpredictable.",
                        "Avoid clingy or heavy emotional texts.",
                        "Memes and weird internet content work well.",
                        "Give him space — don't text daily expecting replies."
                    ]
                    : [
                        "Send interesting articles, ideas, random observations.",
                        "Don't expect consistent text patterns.",
                        "Avoid clingy or heavy emotional texts.",
                        "Memes and weird internet content work well.",
                        "Give him space — don't text daily expecting replies."
                    ]
            )
        )
    }

    // MARK: - Pisces Man

    static func piscesPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroWomanToMan
        return DatingPlaybook(
            sign: .pisces,
            firstDate: PlaybookCard(
                title: "First Date With a Pisces Man",
                content: isHetero
                    ? [
                        "Atmosphere is everything — choose evocative venues.",
                        "Soft lighting, romantic energy, intimate spaces.",
                        "Be fully present emotionally. No phone.",
                        "Let conversation flow toward deeper topics naturally.",
                        "Show your creative, dreamy, romantic side."
                    ]
                    : [
                        "Atmosphere is everything — choose evocative venues.",
                        "Soft lighting, romantic energy, intimate spaces.",
                        "Be fully emotionally present. Phone away.",
                        "Let conversation flow toward deeper topics.",
                        "Show your creative, dreamy, romantic side."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"What do you dream about doing someday?\"",
                        "\"I feel really comfortable with you.\"",
                        "\"Tell me about something that moved you recently.\"",
                        "\"You have an energy I can't quite name.\"",
                        "Avoid: harsh criticism, cynicism, overly practical talk."
                    ]
                    : [
                        "\"What do you dream about doing someday?\"",
                        "\"I feel really comfortable with you.\"",
                        "\"Tell me about something that moved you lately.\"",
                        "\"You have an energy I can't quite name.\"",
                        "Avoid: harsh criticism, cynicism, dry practicality."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Him",
                content: isHetero
                    ? [
                        "Waterfront spots: beaches, lakes, riverside venues.",
                        "Art galleries, poetry readings, live acoustic music.",
                        "Magical settings: fairy lights, planetariums, dreamy spaces.",
                        "Quiet, atmospheric restaurants.",
                        "Skip: loud bars, corporate venues, harsh lighting."
                    ]
                    : [
                        "Waterfront: beaches, lakes, riverside spots.",
                        "Art galleries, poetry, live acoustic music.",
                        "Magical settings: fairy lights, planetariums.",
                        "Quiet, atmospheric restaurants.",
                        "Skip: loud bars, corporate venues, harsh lighting."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts He'll Love",
                content: isHetero
                    ? [
                        "Handmade, creative gifts: playlists, poems, art.",
                        "Dreamy aesthetics: crystals, candles, soft fabrics.",
                        "Music-related: vinyl, tickets, instruments.",
                        "Spa or self-care experiences.",
                        "Avoid: overly practical or unromantic gifts."
                    ]
                    : [
                        "Handmade or creative: playlists, poems, art.",
                        "Dreamy aesthetics: crystals, candles, soft fabrics.",
                        "Music-related: vinyl, tickets, instruments.",
                        "Spa or self-care experiences.",
                        "Avoid: overly practical or unromantic gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Pisces Man",
                content: isHetero
                    ? [
                        "Romantic and expressive — he loves sweet messages.",
                        "Share songs, poems, things that moved you.",
                        "Check in on his feelings — he'll feel deeply seen.",
                        "Voice notes are powerful with him.",
                        "Avoid harsh or coldly logical messages."
                    ]
                    : [
                        "Romantic and expressive — he loves sweet messages.",
                        "Share songs, poems, things that moved you.",
                        "Check in on his feelings — he'll feel deeply seen.",
                        "Voice notes are powerful with him.",
                        "Avoid harsh or coldly logical messages."
                    ]
            )
        )
    }
}
