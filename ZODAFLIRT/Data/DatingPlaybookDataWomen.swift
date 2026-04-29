//
//  DatingPlaybookDataWomen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Women-targeted Dating Playbook content for all 12 signs.
//  Selects between hetero (Man → Woman) and lesbian (Woman → Woman) variants
//  based on GuidanceContext.

import Foundation

struct DatingPlaybookDataWomen {

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

    // MARK: - Aries Woman

    static func ariesPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .aries,
            firstDate: PlaybookCard(
                title: "First Date With an Aries Woman",
                content: isHetero
                    ? [
                        "Pick something active — mini golf, a sports bar with games, an outdoor adventure.",
                        "Don't overthink the plan; she values spontaneity over perfection.",
                        "Be direct about your interest. She respects confidence and hates guessing.",
                        "Match her energy; if she's animated, don't be reserved.",
                        "End with something unexpected — a surprise second location works wonders."
                    ]
                    : [
                        "Suggest something active — fitness class, dance night, hike with views.",
                        "Don't fuss over plans — she likes spontaneous energy.",
                        "Be confident in your interest from the start.",
                        "Match her physical energy — if she's animated, you should be too.",
                        "Surprise her with a second-location move late in the night."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"You don't seem like someone who plays it safe.\"",
                        "\"Bet I can beat you at [game/activity].\"",
                        "\"I had a different plan, but I like yours better.\"",
                        "\"You're not like most women I meet.\"",
                        "Avoid: hesitant openers, agreeing with everything, or playing too cool."
                    ]
                    : [
                        "\"You don't strike me as someone who plays it safe.\"",
                        "\"Want to make this interesting? Loser buys the next round.\"",
                        "\"I had different plans, but yours sound better.\"",
                        "\"You're not like most women I've met.\"",
                        "Avoid: indecision, agreeing with everything, or fake modesty."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Anywhere with energy — rooftop bars, concerts, arcades, sports events.",
                        "Outdoor adventures: hiking, paddleboarding, rock climbing.",
                        "Competitive activities: bowling, axe throwing, escape rooms.",
                        "Skip: long tasting menus, museum dates, anywhere too quiet.",
                        "Bonus points for spots where you can show a skill."
                    ]
                    : [
                        "Active and energetic spots — concerts, dance clubs, group hikes.",
                        "Outdoor adventure: kayaking, climbing, weekend trips.",
                        "Competitive fun: bowling, mini-golf, gaming bars.",
                        "Skip: long, slow dinners or anywhere too quiet.",
                        "Bonus: places where you can show a skill or learn together."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Experience gifts beat physical things — concert tickets, adventure passes.",
                        "Fitness or sport gear she's mentioned wanting.",
                        "Something bold — a statement piece, never anything safe.",
                        "Spontaneous surprises beat planned gifts every time.",
                        "Avoid: overly sentimental items early on."
                    ]
                    : [
                        "Experiences over things — adventure days, concert tickets.",
                        "Fitness gear or workout equipment she's wanted.",
                        "Bold statement pieces, not safe or generic.",
                        "Spontaneous gestures beat scheduled gifts.",
                        "Avoid: anything too sentimental in early dating."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting an Aries Woman",
                content: isHetero
                    ? [
                        "Keep it short and punchy — long, drawn-out messages bore her.",
                        "Be direct. Say what you mean without games.",
                        "Challenge her: \"Bet you can't guess what I'm doing right now.\"",
                        "Don't double-text or seem desperate. Let her come to you.",
                        "Use texts to make plans, not to have full conversations."
                    ]
                    : [
                        "Short, sharp messages — she hates long-winded texts.",
                        "Be direct about wanting to see her.",
                        "Challenge her with playful banter via text.",
                        "Don't double-text or chase too hard — give her space.",
                        "Use texts to set plans; save real conversations for in-person."
                    ]
            )
        )
    }

    // MARK: - Taurus Woman

    static func taurusPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .taurus,
            firstDate: PlaybookCard(
                title: "First Date With a Taurus Woman",
                content: isHetero
                    ? [
                        "Choose somewhere with great food and beautiful atmosphere.",
                        "Make a reservation — Taurus appreciates someone who plans.",
                        "Don't rush the night. Let it unfold naturally.",
                        "Dress well. She notices quality and presentation.",
                        "Pick up the check without making it awkward."
                    ]
                    : [
                        "Pick a beautiful, well-reviewed restaurant with great atmosphere.",
                        "Make the reservation in advance — she values planning.",
                        "Take it slow; rushing breaks her enjoyment.",
                        "Show up looking stylish and put-together.",
                        "Offer to pick up the check without making a thing of it."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I picked this place because the reviews mentioned [specific dish].\"",
                        "\"What's something you've been wanting to try?\"",
                        "\"I appreciate that you actually showed up on time.\"",
                        "\"Tell me about something you're really good at.\"",
                        "Avoid: rushing the conversation, being flaky, or oversharing."
                    ]
                    : [
                        "\"I picked this place because of [specific menu detail].\"",
                        "\"What have you been wanting to try lately?\"",
                        "\"I love that you showed up on time — it matters.\"",
                        "\"Tell me about something you're really skilled at.\"",
                        "Avoid: rushing, flakiness, or oversharing too fast."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Well-reviewed restaurants with warm atmosphere.",
                        "Wine bars, jazz lounges, places with live acoustic music.",
                        "Scenic outdoor spots: botanical gardens, vineyard tours.",
                        "Cooking classes or food experiences together.",
                        "Skip: loud clubs, chaotic environments, fast-casual spots."
                    ]
                    : [
                        "High-quality restaurants with great atmosphere.",
                        "Wine bars, intimate lounges, places with live music.",
                        "Outdoor beauty: gardens, scenic walks, vineyards.",
                        "Cooking classes or food-related experiences.",
                        "Skip: loud, chaotic, or rushed venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Quality over quantity — one great thing beats many average ones.",
                        "Luxurious textures: cashmere, silk, high-thread-count anything.",
                        "Gourmet food: specialty chocolate, aged cheese, fine wine.",
                        "Beautiful items for her home: candles, throws, art.",
                        "Avoid: cheap or impersonal gifts."
                    ]
                    : [
                        "Quality items over quantity.",
                        "Luxurious fabrics: cashmere, silk, beautiful textiles.",
                        "Gourmet treats: artisan chocolate, aged wine, specialty foods.",
                        "Beautiful home items: candles, plants, throws.",
                        "Avoid: cheap or generic gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Taurus Woman",
                content: isHetero
                    ? [
                        "Be consistent — text at similar times to build rhythm.",
                        "Send food pics or restaurant recommendations she'd love.",
                        "Don't rush replies. She takes her time and expects the same.",
                        "Use warm, genuine language. No mind games.",
                        "Plan dates via text — she likes knowing what's coming."
                    ]
                    : [
                        "Be consistent with timing — she values rhythm.",
                        "Send food recommendations or restaurant pics.",
                        "Don't rush replies; respond thoughtfully.",
                        "Keep messages warm and genuine — no hot-cold games.",
                        "Use texts to confirm plans; she likes knowing what's next."
                    ]
            )
        )
    }

    // MARK: - Gemini Woman

    static func geminiPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .gemini,
            firstDate: PlaybookCard(
                title: "First Date With a Gemini Woman",
                content: isHetero
                    ? [
                        "Plan something with variety — multiple stops beat one long dinner.",
                        "Choose a place that sparks conversation: a quirky bar, a market.",
                        "Be ready to improvise. She loves when plans evolve.",
                        "Bring your best stories and curiosity.",
                        "Don't let conversation get heavy too fast."
                    ]
                    : [
                        "Plan a multi-part date — drinks, then a walk, then somewhere new.",
                        "Pick spots that spark conversation — quirky, interesting venues.",
                        "Be flexible — she'll suggest changing plans mid-date.",
                        "Bring stories and curiosity to the conversation.",
                        "Keep things light and fun, not heavy."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I read something interesting today — want to hear it?\"",
                        "\"What's the most random thing you're into right now?\"",
                        "\"This is fun, but I know a place nearby that's even better.\"",
                        "\"You're hard to figure out. I like that.\"",
                        "Avoid: monologues, heavy emotional topics early, predictable questions."
                    ]
                    : [
                        "\"I read something fascinating today — want to hear it?\"",
                        "\"What's the most random thing you're obsessed with lately?\"",
                        "\"This is great, but I know somewhere even better.\"",
                        "\"You're impossible to figure out — I love it.\"",
                        "Avoid: long monologues, emotional weight too soon, basic questions."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Multi-stop dates: drinks here, then walk there, then dessert.",
                        "Places with people-watching: outdoor cafes, busy neighborhoods.",
                        "Trivia nights, comedy shows, interactive experiences.",
                        "Bookstores, record shops, anywhere with things to browse.",
                        "Skip: anywhere requiring sitting still for three hours."
                    ]
                    : [
                        "Multi-spot dates: cocktails, then a walk, then dessert.",
                        "People-watching spots: outdoor patios, bustling neighborhoods.",
                        "Trivia, comedy shows, or interactive events.",
                        "Quirky shops — bookstores, record stores, vintage finds.",
                        "Skip: anything requiring three hours of stillness."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Books on topics she mentioned being curious about.",
                        "Experiences that involve learning something new.",
                        "Gadgets, puzzles, or anything that engages her mind.",
                        "Tickets to something unexpected — a lecture, a show.",
                        "Avoid: overly romantic gestures too early."
                    ]
                    : [
                        "Books on topics she's into right now.",
                        "Experiences that involve learning together.",
                        "Puzzles, gadgets, or anything that engages her brain.",
                        "Tickets to surprising events — talks, shows, oddities.",
                        "Avoid: cliche romantic gifts too soon."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Gemini Woman",
                content: isHetero
                    ? [
                        "Keep it witty and playful — Gemini loves clever banter.",
                        "Send memes, links, random thoughts. Variety keeps her engaged.",
                        "Don't over-explain. Leave some mystery.",
                        "Be unpredictable with timing — don't always reply instantly.",
                        "Ask questions that spark interesting conversations."
                    ]
                    : [
                        "Witty and playful — banter is her love language.",
                        "Memes, articles, random observations all welcome.",
                        "Don't over-explain — keep some mystery.",
                        "Vary your reply timing; don't always be instant.",
                        "Ask questions that spark real conversations."
                    ]
            )
        )
    }

    // MARK: - Cancer Woman

    static func cancerPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .cancer,
            firstDate: PlaybookCard(
                title: "First Date With a Cancer Woman",
                content: isHetero
                    ? [
                        "Choose somewhere cozy and intimate — avoid loud or crowded spaces.",
                        "A quieter restaurant or meaningful walk works well.",
                        "Show genuine interest in her life, family, background.",
                        "Be warm and present. Put your phone away.",
                        "Follow up the next day — consistency matters more than grand gestures."
                    ]
                    : [
                        "Pick somewhere cozy and intimate — avoid loud or chaotic spots.",
                        "A quiet restaurant or meaningful walk together.",
                        "Show real interest in her family, background, inner world.",
                        "Be warm and emotionally present. Phone away.",
                        "Follow up next day — consistency matters most."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"What's something that always makes you feel at home?\"",
                        "\"Tell me about the people closest to you.\"",
                        "\"I really enjoyed tonight — I'd love to do this again.\"",
                        "\"You have this calming energy. I noticed it right away.\"",
                        "Avoid: surface-level small talk, dismissing emotions, sarcasm about family."
                    ]
                    : [
                        "\"What makes you feel most at home?\"",
                        "\"Tell me about the people closest to you.\"",
                        "\"I really enjoyed tonight — I want to do this again.\"",
                        "\"You have this calming energy I noticed right away.\"",
                        "Avoid: surface-level chat, dismissing emotions, sarcasm about family."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Cozy restaurants with warm lighting and comfort food.",
                        "Waterfront spots — Cancer is drawn to water.",
                        "Home-cooked dinner (when appropriate) is the ultimate move.",
                        "Quiet cafes, farmers markets, scenic walks.",
                        "Skip: loud bars, large group hangouts, overly trendy spots."
                    ]
                    : [
                        "Warm, cozy restaurants with comfort food.",
                        "Anywhere near water — beaches, lakes, riverside spots.",
                        "A home-cooked dinner when the time is right.",
                        "Quiet cafes, farmers markets, peaceful walks.",
                        "Skip: loud clubs, large groups, hyper-trendy spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Thoughtful and personal beats expensive.",
                        "Photo gifts: a framed picture, a photo book of a trip.",
                        "Homemade anything — cookies, a playlist, a handwritten note.",
                        "Comfort items: a soft blanket, scented candle, cozy socks.",
                        "Avoid: generic gifts that show no thought."
                    ]
                    : [
                        "Thoughtful trumps expensive.",
                        "Photo gifts — framed pics, photo books.",
                        "Homemade anything: cookies, playlists, handwritten notes.",
                        "Comfort items: blankets, candles, cozy things.",
                        "Avoid: generic, impersonal gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Cancer Woman",
                content: isHetero
                    ? [
                        "Good morning and goodnight texts go a long way.",
                        "Share personal things — Cancer loves emotional connection via text.",
                        "Remember details from past conversations and reference them.",
                        "Be responsive. Leaving her on read feels like rejection.",
                        "Use voice notes occasionally — she loves hearing your voice."
                    ]
                    : [
                        "Morning and goodnight texts mean a lot to her.",
                        "Share emotional things — she connects deeply via text.",
                        "Remember small details and reference them later.",
                        "Be responsive. Long silences feel like rejection.",
                        "Voice notes occasionally are powerful with her."
                    ]
            )
        )
    }

    // MARK: - Leo Woman

    static func leoPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .leo,
            firstDate: PlaybookCard(
                title: "First Date With a Leo Woman",
                content: isHetero
                    ? [
                        "Make it an event — somewhere impressive, not just convenient.",
                        "Dress up. She notices effort and presentation.",
                        "Give her genuine compliments throughout the night.",
                        "Let her shine, but don't disappear.",
                        "End memorably — a nightcap with a view, a walk somewhere beautiful."
                    ]
                    : [
                        "Make the night feel like an event, not a casual hang.",
                        "Dress impressively — she notices everything.",
                        "Compliment her sincerely throughout.",
                        "Let her shine, but match her energy.",
                        "End with a memorable moment — a great view, a special spot."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I've been looking forward to this all week.\"",
                        "\"You have this energy that's hard to ignore.\"",
                        "\"Tell me about something you're really proud of.\"",
                        "\"I love how confident you are — it's magnetic.\"",
                        "Avoid: backhanded compliments, competing for attention, dismissiveness."
                    ]
                    : [
                        "\"I've been looking forward to this all week.\"",
                        "\"You have an energy that's impossible to ignore.\"",
                        "\"Tell me what you're most proud of right now.\"",
                        "\"Your confidence is magnetic.\"",
                        "Avoid: backhanded compliments, competing for shine, dismissiveness."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Somewhere with atmosphere: rooftop bars, upscale lounges, scene restaurants.",
                        "Places where you can see and be seen.",
                        "Live entertainment: theater, concerts, comedy shows.",
                        "Anywhere you can make a reservation and be treated well.",
                        "Skip: dive bars, fast-casual chains, low-key spots."
                    ]
                    : [
                        "Atmosphere venues: rooftops, upscale lounges, popular spots.",
                        "Places to see and be seen.",
                        "Live shows: theater, concerts, headliner comedy.",
                        "Anywhere with reservations and great service.",
                        "Skip: dive bars, casual chains, low-energy spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Luxurious and visible: jewelry, designer accessories, statement pieces.",
                        "Experiences that make her feel special: spa days, fancy dinners.",
                        "Personalized items with her name or initials.",
                        "Anything gold or bold.",
                        "Avoid: practical gifts or anything ordinary."
                    ]
                    : [
                        "Luxurious and showy: jewelry, designer items, statement pieces.",
                        "Experiences that pamper her: spa days, lavish dinners.",
                        "Personalized items — initials, custom pieces.",
                        "Bold colors, gold tones, anything dramatic.",
                        "Avoid: practical or ordinary gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Leo Woman",
                content: isHetero
                    ? [
                        "Compliment her — Leo loves praise, even via text.",
                        "Hype her up about her achievements and plans.",
                        "Send photos of things that reminded you of her.",
                        "Don't be dry. Bring energy and enthusiasm.",
                        "Let her know when you're thinking about her."
                    ]
                    : [
                        "Compliment her — she loves praise via text.",
                        "Hype her up about her wins and ambitions.",
                        "Send pics of things that reminded you of her.",
                        "Bring energy — don't text dryly.",
                        "Let her know when she's on your mind."
                    ]
            )
        )
    }

    // MARK: - Virgo Woman

    static func virgoPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .virgo,
            firstDate: PlaybookCard(
                title: "First Date With a Virgo Woman",
                content: isHetero
                    ? [
                        "Plan it well. She notices disorganization.",
                        "Choose somewhere quality but not flashy — a well-reviewed spot.",
                        "Be on time. Be five minutes early actually.",
                        "Show that you've thought about the details.",
                        "Have good manners and treat staff well — she's watching."
                    ]
                    : [
                        "Plan ahead — she notices when you don't.",
                        "Quality over flashy — choose a well-reviewed spot.",
                        "Be punctual. Five minutes early is ideal.",
                        "Show attention to detail in every aspect of the date.",
                        "Be polite to staff — she's noticing how you treat people."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I picked this place because of [specific detail].\"",
                        "\"What's something you're working on right now?\"",
                        "\"I'd love your advice on something.\"",
                        "\"You notice things other people miss.\"",
                        "Avoid: being vague, disorganized stories, excessive bragging."
                    ]
                    : [
                        "\"I picked this place because [specific detail].\"",
                        "\"What are you working on right now?\"",
                        "\"I'd love your perspective on something.\"",
                        "\"You catch things other people miss.\"",
                        "Avoid: vague answers, rambling stories, bragging."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Clean, well-run restaurants with great reviews.",
                        "Bookstores, museums, cultural exhibits.",
                        "Nature walks with well-maintained trails.",
                        "Classes where you learn something together.",
                        "Skip: chaotic environments, dirty venues, overly loud spots."
                    ]
                    : [
                        "Clean, well-reviewed restaurants.",
                        "Bookstores, museums, cultural exhibits.",
                        "Well-maintained nature walks or trails.",
                        "Classes — learn something together.",
                        "Skip: chaotic, dirty, or overly loud venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Practical but high-quality: a beautiful notebook, quality tools.",
                        "Organizational items she'll actually use.",
                        "Books on topics she cares about.",
                        "Wellness gifts: quality skincare, herbal tea sets.",
                        "Avoid: clutter, sentimental items, anything cheap."
                    ]
                    : [
                        "Practical but high-quality items she'll use.",
                        "Beautiful organizational tools — notebooks, planners.",
                        "Books on topics she actually cares about.",
                        "Quality wellness gifts: skincare, teas.",
                        "Avoid: clutter, sentimental fluff, cheap items."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Virgo Woman",
                content: isHetero
                    ? [
                        "Use proper grammar and spelling — Virgo notices everything.",
                        "Be clear and organized in your messages. No rambling.",
                        "Ask thoughtful questions about her work or projects.",
                        "Don't bombard her with texts. Quality over quantity.",
                        "Follow through on anything you mention in texts."
                    ]
                    : [
                        "Proper grammar and spelling — she notices everything.",
                        "Clear, organized messages. No rambling.",
                        "Ask thoughtful questions about her work and life.",
                        "Quality over quantity — don't over-text.",
                        "Follow through on anything you mention via text."
                    ]
            )
        )
    }

    // MARK: - Libra Woman

    static func libraPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .libra,
            firstDate: PlaybookCard(
                title: "First Date With a Libra Woman",
                content: isHetero
                    ? [
                        "Choose somewhere beautiful — aesthetics matter.",
                        "Plan a date that feels romantic from the start.",
                        "Dress well and put thought into your appearance.",
                        "Be charming, attentive, and balanced in conversation.",
                        "Don't rush the goodbye. Let the moment breathe."
                    ]
                    : [
                        "Choose somewhere visually beautiful — she values aesthetics.",
                        "Plan something that feels romantic from minute one.",
                        "Dress thoughtfully — she'll notice every detail.",
                        "Be charming, attentive, balanced in conversation.",
                        "Don't rush the goodbye — let the moment linger."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I thought of you when I found this place.\"",
                        "\"You have incredible taste.\"",
                        "\"What do you think? I value your opinion.\"",
                        "\"This feels like a scene from a movie.\"",
                        "Avoid: crude humor, aggressive opinions, anything that creates conflict."
                    ]
                    : [
                        "\"I thought of you when I found this place.\"",
                        "\"You have incredible taste.\"",
                        "\"What do you think? I trust your opinion.\"",
                        "\"This feels like a scene from a movie.\"",
                        "Avoid: crude humor, hot takes, conflict-creating energy."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Art galleries, design museums, beautiful architecture.",
                        "Upscale restaurants with romantic ambiance.",
                        "Rooftop bars with city views.",
                        "Gardens, scenic walks, anywhere photogenic.",
                        "Skip: dive bars, anywhere too casual, harsh lighting."
                    ]
                    : [
                        "Art galleries, design museums, beautiful spaces.",
                        "Romantic, upscale restaurants.",
                        "Rooftop bars with stunning views.",
                        "Gardens, scenic walks, photogenic spots.",
                        "Skip: dives, harsh lighting, ugly venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Beautiful things: art prints, elegant home decor, fresh flowers.",
                        "Fashion items: scarves, jewelry, accessories.",
                        "Experiences for two: couples spa, wine tasting, gallery opening.",
                        "Anything aesthetically pleasing and well-wrapped.",
                        "Avoid: practical-only gifts or anything ugly."
                    ]
                    : [
                        "Beautiful things — art, decor, flowers.",
                        "Fashion: jewelry, scarves, accessories.",
                        "Experiences for two — spa, tasting, gallery.",
                        "Anything aesthetically pleasing, beautifully wrapped.",
                        "Avoid: purely practical or unattractive items."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Libra Woman",
                content: isHetero
                    ? [
                        "Be flirty and romantic — Libra loves sweet messages.",
                        "Ask for her opinions on things. She loves being consulted.",
                        "Send beautiful photos — sunsets, places, things she'd like.",
                        "Keep tone light and positive. Avoid conflict via text.",
                        "Balance the conversation — don't dominate or go silent."
                    ]
                    : [
                        "Flirty and romantic — she loves sweet messages.",
                        "Ask her opinions on things — she loves being consulted.",
                        "Send beautiful photos: sunsets, art, things she'd love.",
                        "Keep tone light and positive — no text fights.",
                        "Balance — don't dominate but don't go silent."
                    ]
            )
        )
    }

    // MARK: - Scorpio Woman

    static func scorpioPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .scorpio,
            firstDate: PlaybookCard(
                title: "First Date With a Scorpio Woman",
                content: isHetero
                    ? [
                        "Choose somewhere intimate where real conversation can happen.",
                        "Don't fill silence with small talk — let intensity build.",
                        "Be honest about who you are. She'll know if you're not.",
                        "Show depth. Share something real about yourself.",
                        "Don't try too hard to impress. Authenticity is the only currency."
                    ]
                    : [
                        "Pick somewhere intimate for real conversation.",
                        "Don't fill silence — let the intensity build.",
                        "Be honest. She'll catch any pretense.",
                        "Show depth — share something real about yourself.",
                        "Don't try to impress. Authenticity is everything to her."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"Tell me something most people don't know about you.\"",
                        "\"I don't usually share this, but...\"",
                        "\"You see through people, don't you?\"",
                        "\"I'm not interested in surface-level conversation.\"",
                        "Avoid: small talk, evasive answers, anything fake."
                    ]
                    : [
                        "\"Tell me something most people don't know about you.\"",
                        "\"I don't usually share this, but...\"",
                        "\"You see through people, don't you?\"",
                        "\"I have no interest in small talk.\"",
                        "Avoid: small talk, dodging questions, fake answers."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Intimate, dimly lit spots: speakeasies, wine bars, candlelit restaurants.",
                        "Somewhere with atmosphere and privacy.",
                        "Late-night walks through interesting neighborhoods.",
                        "Anywhere that feels a little secret or hidden.",
                        "Skip: bright, crowded, or superficial environments."
                    ]
                    : [
                        "Intimate, dimly lit spots — speakeasies, candlelit dinners.",
                        "Privacy and atmosphere matter most.",
                        "Late-night walks through interesting parts of town.",
                        "Anywhere with a sense of being hidden or special.",
                        "Skip: bright, crowded, or superficial places."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Meaningful over expensive — show you understand her.",
                        "Books on psychology, mystery, or transformation.",
                        "Dark, sophisticated aesthetics: black, deep red, luxe textures.",
                        "Something rare or hard to find.",
                        "Avoid: generic gifts or anything too public."
                    ]
                    : [
                        "Meaningful over expensive — show you get her.",
                        "Books on psychology, mystery, transformation.",
                        "Dark, sophisticated aesthetics: black, deep red, luxe.",
                        "Rare or hard-to-find items.",
                        "Avoid: generic gifts or overly public gestures."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Scorpio Woman",
                content: isHetero
                    ? [
                        "Be real. Scorpio can sense fakeness even through text.",
                        "Don't overshare too fast — let mystery build.",
                        "Respond thoughtfully, not instantly. She values depth over speed.",
                        "Avoid surface-level chat. Ask questions that go deeper.",
                        "Late-night texts work well — Scorpio comes alive at night."
                    ]
                    : [
                        "Be real — she senses fakeness even through text.",
                        "Don't overshare too fast — let mystery build.",
                        "Respond thoughtfully, not reflexively.",
                        "Skip surface chat — ask questions that matter.",
                        "Late-night texts work — she comes alive at night."
                    ]
            )
        )
    }

    // MARK: - Sagittarius Woman

    static func sagittariusPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .sagittarius,
            firstDate: PlaybookCard(
                title: "First Date With a Sagittarius Woman",
                content: isHetero
                    ? [
                        "Make it an adventure — something with a story to tell later.",
                        "Don't overplan. Leave room for spontaneity.",
                        "Bring energy and enthusiasm.",
                        "Be open to wherever the night takes you.",
                        "End with \"next time we should...\" — she likes future possibilities."
                    ]
                    : [
                        "Make it an adventure with story potential.",
                        "Don't overplan — leave room for spontaneity.",
                        "Bring high energy and enthusiasm.",
                        "Stay open to where the night goes.",
                        "End with \"next time we should...\" — she loves future plans."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I have an idea — want to just go?\"",
                        "\"What's the craziest trip you've ever taken?\"",
                        "\"Life's too short for boring dates.\"",
                        "\"I like that you're up for anything.\"",
                        "Avoid: complaining, being negative, needing too much structure."
                    ]
                    : [
                        "\"I have an idea — want to just go?\"",
                        "\"What's the wildest trip you've taken?\"",
                        "\"Life's too short for boring dates.\"",
                        "\"I love that you're up for anything.\"",
                        "Avoid: complaining, negativity, needing rigid structure."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Somewhere with adventure: food markets, outdoor concerts, new neighborhoods.",
                        "Road trips or spontaneous day trips.",
                        "Ethnic restaurants — take her somewhere she's never tried.",
                        "Comedy shows or anywhere with good energy.",
                        "Skip: formal dinners, anywhere too quiet, strict reservation spots."
                    ]
                    : [
                        "Adventure spots: food markets, outdoor concerts, new districts.",
                        "Road trips or spontaneous day adventures.",
                        "Ethnic food — somewhere she's never tried.",
                        "Comedy shows or high-energy venues.",
                        "Skip: formal dinners, quiet spots, rigid reservation venues."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Travel-related: luggage tags, travel journals, experience vouchers.",
                        "Tickets to something — a trip, a show, an event.",
                        "Books on philosophy, travel, or adventure.",
                        "Something from another country or culture.",
                        "Avoid: anything that ties her down or feels too serious."
                    ]
                    : [
                        "Travel gear: tags, journals, experience vouchers.",
                        "Tickets to anything — trip, show, event.",
                        "Books on travel, philosophy, adventure.",
                        "Items from other countries or cultures.",
                        "Avoid: anything that feels like commitment too soon."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Sagittarius Woman",
                content: isHetero
                    ? [
                        "Keep it fun and light — no heavy conversations via text.",
                        "Send spontaneous invites: \"I'm going to X, come with?\"",
                        "Share funny memes, travel pics, or random discoveries.",
                        "Don't expect instant replies — she's probably busy exploring.",
                        "Use texting to make plans, not to have deep talks."
                    ]
                    : [
                        "Light and fun — no heavy conversations via text.",
                        "Spontaneous invites: \"I'm going to X, come with?\"",
                        "Send memes, travel pics, weird finds.",
                        "Don't expect instant replies — she's probably out.",
                        "Texts are for plans, not deep talks."
                    ]
            )
        )
    }

    // MARK: - Capricorn Woman

    static func capricornPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .capricorn,
            firstDate: PlaybookCard(
                title: "First Date With a Capricorn Woman",
                content: isHetero
                    ? [
                        "Be punctual and prepared. She notices.",
                        "Choose somewhere respectable — quality over flash.",
                        "Show that you have ambition and direction.",
                        "Keep conversation substantial. Frivolous bores her.",
                        "Don't expect instant warmth — she takes time to open up."
                    ]
                    : [
                        "Be on time and well-prepared — she notices both.",
                        "Quality venue, not flashy — refinement over showiness.",
                        "Show ambition and direction in your life.",
                        "Substantial conversation only — no frivolous chatter.",
                        "Don't expect instant warmth — she warms slowly."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"What are you working toward right now?\"",
                        "\"I respect how driven you are.\"",
                        "\"Tell me about something you've built.\"",
                        "\"I have a five-year plan. Want to hear it?\" (Half-joking)",
                        "Avoid: being flaky, overly emotional, or aimless."
                    ]
                    : [
                        "\"What are you working toward right now?\"",
                        "\"Your drive is impressive.\"",
                        "\"Tell me about something you've built.\"",
                        "\"I have ambitions. Want to hear them?\"",
                        "Avoid: flakiness, emotional theatrics, aimlessness."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Classic, upscale restaurants — not trendy, but timeless.",
                        "Whiskey bars, steakhouses, private dining.",
                        "Cultural institutions: museums, historical sites.",
                        "Anywhere that shows taste and maturity.",
                        "Skip: loud clubs, chaotic environments, anywhere too casual."
                    ]
                    : [
                        "Classic, upscale spots — timeless over trendy.",
                        "Whiskey bars, fine dining, private restaurants.",
                        "Cultural venues: museums, historical landmarks.",
                        "Anywhere demonstrating taste and maturity.",
                        "Skip: loud clubs, chaotic venues, casual spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Quality items that last: leather goods, nice pens, classic watches.",
                        "Business or career-related: a great book, a networking opportunity.",
                        "Fine spirits: aged whiskey, quality wine.",
                        "Something that shows you invested thought and effort.",
                        "Avoid: cheap, trendy, or impractical gifts."
                    ]
                    : [
                        "Quality items built to last — leather, classic pieces.",
                        "Career-aligned gifts: a great book, networking access.",
                        "Fine spirits: aged whiskey, quality wine.",
                        "Anything that shows real investment of thought.",
                        "Avoid: cheap, trendy, or impractical items."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Capricorn Woman",
                content: isHetero
                    ? [
                        "Be concise and purposeful — don't waste her time with fluff.",
                        "Text during reasonable hours. Late-night texts seem chaotic.",
                        "Share wins and goals — she respects ambition.",
                        "Don't expect long conversations. Capricorn prefers in-person.",
                        "Use texts to confirm plans, not to build the relationship."
                    ]
                    : [
                        "Concise and purposeful — no fluff.",
                        "Reasonable hours; late-night texts seem chaotic.",
                        "Share wins and goals — she respects ambition.",
                        "Don't expect long text conversations.",
                        "Texts are for plans, not relationship-building."
                    ]
            )
        )
    }

    // MARK: - Aquarius Woman

    static func aquariusPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .aquarius,
            firstDate: PlaybookCard(
                title: "First Date With an Aquarius Woman",
                content: isHetero
                    ? [
                        "Skip the standard dinner. Do something unconventional.",
                        "Engage her mind before her heart.",
                        "Don't try too hard to be romantic — she'll find it weird.",
                        "Be yourself, even if yourself is a little strange.",
                        "Let things unfold without forcing a vibe."
                    ]
                    : [
                        "Skip standard dinner dates — go unconventional.",
                        "Engage her mind first; the heart follows.",
                        "Don't try too hard at romance — feels forced to her.",
                        "Be authentically yourself, even the weird parts.",
                        "Let things unfold without forcing the vibe."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"I read this article that made me think of you.\"",
                        "\"What's a belief you have that most people disagree with?\"",
                        "\"I don't really do normal dates.\"",
                        "\"You think differently than most people. I like that.\"",
                        "Avoid: clichés, small talk, anything that feels scripted."
                    ]
                    : [
                        "\"I read something that made me think of you.\"",
                        "\"What's a belief you hold that most people disagree with?\"",
                        "\"I don't really do conventional dates.\"",
                        "\"You think differently. I love that.\"",
                        "Avoid: clichés, small talk, scripted lines."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Offbeat locations: indie films, weird museums, quirky neighborhoods.",
                        "Lectures, talks, or intellectual events.",
                        "Somewhere she's never been or heard of.",
                        "Group hangouts work surprisingly well for first dates.",
                        "Skip: fancy romantic restaurants or anything traditional."
                    ]
                    : [
                        "Offbeat spots: indie cinemas, unusual museums, quirky areas.",
                        "Lectures, talks, intellectual events.",
                        "Places she's never been or heard of.",
                        "Group hangouts can work for first dates.",
                        "Skip: traditional fancy romantic spots."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Something unique she's never seen before.",
                        "Tech gadgets or innovative tools.",
                        "Donations to causes she cares about.",
                        "Books on science, future trends, or social change.",
                        "Avoid: conventional romantic gifts — they'll feel awkward."
                    ]
                    : [
                        "Something unique and unexpected.",
                        "Tech, gadgets, innovative items.",
                        "Donations to causes she cares about.",
                        "Books on science, futurism, social change.",
                        "Avoid: traditional romantic gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting an Aquarius Woman",
                content: isHetero
                    ? [
                        "Send interesting articles, ideas, or random thoughts.",
                        "Don't expect consistent texting patterns — she's unpredictable.",
                        "Avoid clingy or emotional texts. Keep it cerebral.",
                        "Memes and weird internet finds work great.",
                        "Give her space. Don't text every day expecting replies."
                    ]
                    : [
                        "Send interesting articles, ideas, random thoughts.",
                        "Don't expect consistent text patterns — she's unpredictable.",
                        "Avoid clingy or heavy emotional texts.",
                        "Memes and weird internet content work well.",
                        "Give her space — don't text daily expecting replies."
                    ]
            )
        )
    }

    // MARK: - Pisces Woman

    static func piscesPlaybook(context: GuidanceContext) -> DatingPlaybook {
        let isHetero = context == .heteroManToWoman
        return DatingPlaybook(
            sign: .pisces,
            firstDate: PlaybookCard(
                title: "First Date With a Pisces Woman",
                content: isHetero
                    ? [
                        "Create atmosphere — Pisces responds to mood and setting.",
                        "Choose somewhere with soft lighting and romantic energy.",
                        "Be emotionally present. Don't distract with your phone.",
                        "Let conversation flow naturally into deeper topics.",
                        "Show your creative or dreamy side."
                    ]
                    : [
                        "Atmosphere is everything — choose evocative venues.",
                        "Soft lighting, romantic energy, intimate spaces.",
                        "Be fully present emotionally. No phone.",
                        "Let conversation flow toward deeper topics naturally.",
                        "Show your creative, dreamy, romantic side."
                    ]
            ),
            whatToSay: PlaybookCard(
                title: "What to Say",
                content: isHetero
                    ? [
                        "\"What's something you dream about doing?\"",
                        "\"I feel really comfortable with you.\"",
                        "\"Tell me about something that moved you recently.\"",
                        "\"You have this energy that's hard to explain.\"",
                        "Avoid: harsh criticism, cynicism, anything too practical."
                    ]
                    : [
                        "\"What do you dream about doing someday?\"",
                        "\"I feel really comfortable with you.\"",
                        "\"Tell me about something that moved you recently.\"",
                        "\"You have an energy I can't quite name.\"",
                        "Avoid: harsh criticism, cynicism, overly practical talk."
                    ]
            ),
            whereToTake: PlaybookCard(
                title: "Where to Take Her",
                content: isHetero
                    ? [
                        "Waterfront spots — beaches, lakes, riverside restaurants.",
                        "Art galleries, poetry readings, live music.",
                        "Somewhere magical: fairy-lit gardens, planetariums.",
                        "Quiet, romantic restaurants with atmosphere.",
                        "Skip: loud bars, harsh environments, corporate spots."
                    ]
                    : [
                        "Waterfront spots — beaches, lakes, riverside venues.",
                        "Art galleries, poetry readings, live acoustic music.",
                        "Magical settings: fairy lights, planetariums, dreamy spaces.",
                        "Quiet, atmospheric restaurants.",
                        "Skip: loud bars, corporate venues, harsh lighting."
                    ]
            ),
            gifts: PlaybookCard(
                title: "Gifts She'll Love",
                content: isHetero
                    ? [
                        "Handmade or creative: a playlist, a poem, art you made.",
                        "Dreamy aesthetics: crystals, candles, soft fabrics.",
                        "Music-related: vinyl, concert tickets, instruments.",
                        "Spa or self-care gifts.",
                        "Avoid: overly practical or unromantic gifts."
                    ]
                    : [
                        "Handmade, creative gifts: playlists, poems, art.",
                        "Dreamy aesthetics: crystals, candles, soft fabrics.",
                        "Music-related: vinyl, tickets, instruments.",
                        "Spa or self-care experiences.",
                        "Avoid: overly practical or unromantic gifts."
                    ]
            ),
            texting: PlaybookCard(
                title: "Texting a Pisces Woman",
                content: isHetero
                    ? [
                        "Be romantic and expressive — Pisces loves sweet messages.",
                        "Share songs, poems, or things that made you feel something.",
                        "Check in on how she's feeling. She appreciates emotional awareness.",
                        "Voice notes feel more personal than plain text.",
                        "Don't be harsh or overly logical in your messages."
                    ]
                    : [
                        "Romantic and expressive — she lives for sweet messages.",
                        "Share songs, poems, things that moved you.",
                        "Check in on her feelings — she'll feel deeply seen.",
                        "Voice notes are powerful with her.",
                        "Avoid harsh or coldly logical messages."
                    ]
            )
        )
    }
}
