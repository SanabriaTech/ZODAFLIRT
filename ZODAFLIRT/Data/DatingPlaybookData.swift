//
//  DatingPlaybookData.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 1/7/26.
//

import Foundation

struct DatingPlaybookData {

    static func getPlaybook(for sign: ZodiacSign) -> DatingPlaybook {
        switch sign {
        case .aries: return ariesPlaybook
        case .taurus: return taurusPlaybook
        case .gemini: return geminiPlaybook
        case .cancer: return cancerPlaybook
        case .leo: return leoPlaybook
        case .virgo: return virgoPlaybook
        case .libra: return libraPlaybook
        case .scorpio: return scorpioPlaybook
        case .sagittarius: return sagittariusPlaybook
        case .capricorn: return capricornPlaybook
        case .aquarius: return aquariusPlaybook
        case .pisces: return piscesPlaybook
        }
    }

    // MARK: - Aries

    static let ariesPlaybook = DatingPlaybook(
        sign: .aries,
        firstDate: PlaybookCard(
            title: "First Date With an Aries",
            content: [
                "Keep it active—mini golf, bowling, a hike, or anything with a bit of competition.",
                "Don't overthink the plan. Aries appreciates spontaneity over perfection.",
                "Be direct about your interest. They respect confidence.",
                "Let them take the lead sometimes, but don't be passive.",
                "End with something unexpected—a surprise second location works well."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I like how direct you are—it's refreshing.\"",
                "\"Want to make this interesting? Loser buys the next round.\"",
                "\"I had a different plan, but let's do your idea instead.\"",
                "\"You're not like most people I meet.\"",
                "Avoid: excessive compliments, playing hard to get too long, or being indecisive."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Somewhere with energy—a rooftop bar, a concert, an arcade.",
                "Outdoor adventures: hiking, rock climbing, paddleboarding.",
                "Competitive activities: axe throwing, go-karts, escape rooms.",
                "Skip: quiet museums, long tasting menus, or anything too slow.",
                "Bonus: Anywhere you can show off a skill."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Experience gifts over things—tickets to a game, a class, an adventure.",
                "Fitness or sport-related gear they've mentioned wanting.",
                "Something bold: a statement piece, not something safe.",
                "Spontaneous surprises beat planned gifts.",
                "Avoid: overly sentimental items early on."
            ]
        )
    )

    // MARK: - Taurus

    static let taurusPlaybook = DatingPlaybook(
        sign: .taurus,
        firstDate: PlaybookCard(
            title: "First Date With a Taurus",
            content: [
                "Choose somewhere with great food and comfortable atmosphere.",
                "Make a reservation—Taurus appreciates someone who plans ahead.",
                "Don't rush. Let the evening unfold naturally.",
                "Dress well. They notice quality and presentation.",
                "Pick up the check without making it awkward."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I found this place because the reviews mentioned their [specific dish].\"",
                "\"What's something you've been wanting to try?\"",
                "\"I appreciate that you actually showed up on time.\"",
                "\"Tell me about something you're really good at.\"",
                "Avoid: rushing the conversation, being flaky about plans, or oversharing too fast."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "A well-reviewed restaurant with a warm atmosphere.",
                "Wine bars, jazz lounges, or places with live acoustic music.",
                "Scenic outdoor spots: botanical gardens, vineyard tours.",
                "Cooking classes or food-related experiences.",
                "Skip: loud clubs, chaotic environments, or anywhere uncomfortable."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Quality over quantity—one great thing beats many average things.",
                "Luxurious textures: cashmere, silk, high-thread-count anything.",
                "Gourmet food items: specialty chocolate, aged cheese, fine wine.",
                "Something for their home: a beautiful candle, a cozy throw.",
                "Avoid: cheap or impersonal gifts."
            ]
        )
    )

    // MARK: - Gemini

    static let geminiPlaybook = DatingPlaybook(
        sign: .gemini,
        firstDate: PlaybookCard(
            title: "First Date With a Gemini",
            content: [
                "Plan something with variety—multiple stops work better than one long dinner.",
                "Choose a place that sparks conversation: a quirky bar, a market, a neighborhood to explore.",
                "Be ready to improvise. Gemini loves when plans evolve.",
                "Bring your best stories and your curiosity.",
                "Don't let the conversation get too heavy too fast."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I read something interesting today—want to hear it?\"",
                "\"What's the most random thing you're into right now?\"",
                "\"This is fun, but I know a place nearby that's even better.\"",
                "\"You're hard to figure out—I like that.\"",
                "Avoid: monologues, heavy emotional topics early, or predictable questions."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Multi-stop dates: drinks here, then walk there, then dessert somewhere else.",
                "Places with people-watching: outdoor cafes, busy neighborhoods.",
                "Trivia nights, comedy shows, or interactive experiences.",
                "Bookstores, record shops, or anywhere with things to browse.",
                "Skip: anywhere that requires sitting still for three hours."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Books on topics they mentioned being curious about.",
                "Experiences that involve learning something new.",
                "Gadgets, puzzles, or anything that entertains their mind.",
                "Tickets to something unexpected—a lecture, a show, an event.",
                "Avoid: overly romantic gestures too early."
            ]
        )
    )

    // MARK: - Cancer

    static let cancerPlaybook = DatingPlaybook(
        sign: .cancer,
        firstDate: PlaybookCard(
            title: "First Date With a Cancer",
            content: [
                "Choose somewhere cozy and intimate—avoid loud or crowded spaces.",
                "A quieter restaurant or a walk somewhere meaningful works well.",
                "Show genuine interest in their life, family, background.",
                "Be warm and present. Put your phone away.",
                "Follow up the next day—consistency matters more than grand gestures."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"What's something that always makes you feel at home?\"",
                "\"Tell me about the people closest to you.\"",
                "\"I really enjoyed tonight—I'd love to do this again.\"",
                "\"You have this calming energy. I noticed it right away.\"",
                "Avoid: surface-level small talk, anything dismissive of emotions, or sarcasm about family."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Cozy restaurants with warm lighting and comfort food.",
                "Waterfront spots—Cancer is drawn to water.",
                "Home-cooked dinner (when appropriate) is the ultimate move.",
                "Quiet cafes, farmers markets, or scenic walks.",
                "Skip: loud bars, large group hangouts, or overly trendy spots."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Thoughtful and personal beats expensive.",
                "Photo-related gifts: a framed picture, a photo book of a trip.",
                "Homemade anything—cookies, a playlist, a handwritten note.",
                "Comfort items: a soft blanket, a scented candle, cozy socks.",
                "Avoid: generic gifts that show no thought."
            ]
        )
    )

    // MARK: - Leo

    static let leoPlaybook = DatingPlaybook(
        sign: .leo,
        firstDate: PlaybookCard(
            title: "First Date With a Leo",
            content: [
                "Make it an event—somewhere impressive, not just convenient.",
                "Dress up. Leo notices effort and presentation.",
                "Give them genuine compliments throughout the night.",
                "Let them shine, but don't disappear. They want a partner, not an audience.",
                "End memorably. A nightcap with a view, a walk somewhere beautiful."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I've been looking forward to this all week.\"",
                "\"You have this energy that's hard to ignore.\"",
                "\"Tell me about something you're really proud of.\"",
                "\"I love how confident you are—it's magnetic.\"",
                "Avoid: backhanded compliments, competing for attention, or being dismissive."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Somewhere with atmosphere: rooftop bars, upscale lounges, restaurants with a scene.",
                "Places where you can see and be seen.",
                "Live entertainment: theater, concerts, comedy shows.",
                "Anywhere you can make a reservation and be treated well.",
                "Skip: dive bars, fast-casual chains, or anywhere too low-key."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Luxurious and visible: jewelry, designer accessories, statement pieces.",
                "Experiences that make them feel special: spa days, fancy dinners.",
                "Personalized items with their name or initials.",
                "Anything gold or bold.",
                "Avoid: practical gifts or anything that feels ordinary."
            ]
        )
    )

    // MARK: - Virgo

    static let virgoPlaybook = DatingPlaybook(
        sign: .virgo,
        firstDate: PlaybookCard(
            title: "First Date With a Virgo",
            content: [
                "Plan it well. Virgo notices disorganization.",
                "Choose somewhere quality but not flashy—a well-reviewed spot, not the trendiest.",
                "Be on time. Actually, be five minutes early.",
                "Show that you've thought about the details.",
                "Have good manners and treat staff well—they're watching."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I picked this place because I read great things about their [specific detail].\"",
                "\"What's something you're working on right now?\"",
                "\"I'd love your advice on something.\"",
                "\"You notice things other people miss.\"",
                "Avoid: being vague, disorganized stories, or excessive bragging."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Clean, well-run restaurants with great reviews.",
                "Bookstores, museums, or cultural exhibits.",
                "Nature walks with well-maintained trails.",
                "Classes where you learn something together.",
                "Skip: chaotic environments, dirty venues, or anywhere too loud to talk."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Practical but high-quality: a beautiful notebook, quality tools for a hobby.",
                "Organizational items they'll actually use.",
                "Books on topics they care about.",
                "Wellness gifts: quality skincare, herbal tea sets.",
                "Avoid: clutter, overly sentimental items, or anything cheap."
            ]
        )
    )

    // MARK: - Libra

    static let libraPlaybook = DatingPlaybook(
        sign: .libra,
        firstDate: PlaybookCard(
            title: "First Date With a Libra",
            content: [
                "Choose somewhere beautiful—aesthetics matter.",
                "Plan a date that feels romantic from the start.",
                "Dress well and put thought into your appearance.",
                "Be charming, attentive, and balanced in conversation.",
                "Don't rush the goodbye. Let the moment breathe."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I thought of you when I found this place.\"",
                "\"You have incredible taste.\"",
                "\"What do you think? I value your opinion.\"",
                "\"This feels like a scene from a movie.\"",
                "Avoid: crude humor, aggressive opinions, or anything that creates conflict."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Art galleries, design museums, or beautiful architecture.",
                "Upscale restaurants with romantic ambiance.",
                "Rooftop bars with city views.",
                "Gardens, scenic walks, or anywhere photogenic.",
                "Skip: dive bars, anywhere too casual, or places with harsh lighting."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Beautiful things: art prints, elegant home decor, fresh flowers.",
                "Fashion items: scarves, jewelry, accessories.",
                "Experiences for two: couples spa, wine tasting, gallery opening.",
                "Anything aesthetically pleasing and well-wrapped.",
                "Avoid: practical-only gifts or anything ugly."
            ]
        )
    )

    // MARK: - Scorpio

    static let scorpioPlaybook = DatingPlaybook(
        sign: .scorpio,
        firstDate: PlaybookCard(
            title: "First Date With a Scorpio",
            content: [
                "Choose somewhere intimate where real conversation can happen.",
                "Don't fill silence with small talk—let intensity build.",
                "Be honest about who you are. They'll know if you're not.",
                "Show depth. Share something real about yourself.",
                "Don't try too hard to impress. Authenticity is the only currency."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"Tell me something most people don't know about you.\"",
                "\"I don't usually share this, but...\"",
                "\"You see through people, don't you?\"",
                "\"I'm not interested in surface-level conversation.\"",
                "Avoid: small talk, evasive answers, or anything that feels fake."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Intimate, dimly lit spots: speakeasies, wine bars, candlelit restaurants.",
                "Somewhere with atmosphere and privacy.",
                "Late-night walks through interesting neighborhoods.",
                "Anywhere that feels a little secret or hidden.",
                "Skip: bright, crowded, or superficial environments."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Meaningful over expensive—something that shows you understand them.",
                "Books on psychology, mystery, or transformation.",
                "Dark, sophisticated aesthetics: black, deep red, luxe textures.",
                "Something rare or hard to find.",
                "Avoid: generic gifts or anything too public."
            ]
        )
    )

    // MARK: - Sagittarius

    static let sagittariusPlaybook = DatingPlaybook(
        sign: .sagittarius,
        firstDate: PlaybookCard(
            title: "First Date With a Sagittarius",
            content: [
                "Make it an adventure—something with a story to tell later.",
                "Don't overplan. Leave room for spontaneity.",
                "Bring energy and enthusiasm.",
                "Be open to wherever the night takes you.",
                "End with \"next time we should...\" They like future possibilities."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I have an idea—want to just go?\"",
                "\"What's the craziest trip you've ever taken?\"",
                "\"Life's too short for boring dates.\"",
                "\"I like that you're up for anything.\"",
                "Avoid: complaining, being negative, or needing too much structure."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Somewhere with adventure: food markets, outdoor concerts, new neighborhoods.",
                "Road trips or spontaneous day trips.",
                "Ethnic restaurants—take them somewhere they've never tried.",
                "Comedy shows or anywhere with good energy.",
                "Skip: formal dinners, anywhere too quiet, or strict reservation-only spots."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Travel-related: luggage tags, travel journals, experience vouchers.",
                "Tickets to something—a trip, a show, an event.",
                "Books on philosophy, travel, or adventure.",
                "Something from another country or culture.",
                "Avoid: anything that ties them down or feels too serious."
            ]
        )
    )

    // MARK: - Capricorn

    static let capricornPlaybook = DatingPlaybook(
        sign: .capricorn,
        firstDate: PlaybookCard(
            title: "First Date With a Capricorn",
            content: [
                "Be punctual and prepared. They notice.",
                "Choose somewhere respectable—quality over flash.",
                "Show that you have ambition and direction.",
                "Keep conversation substantial. They don't do frivolous well.",
                "Don't expect instant warmth—they take time to open up."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"What are you working toward right now?\"",
                "\"I respect how driven you are.\"",
                "\"Tell me about something you've built.\"",
                "\"I have a five-year plan. Want to hear it?\" (Half-joking)",
                "Avoid: being flaky, overly emotional, or aimless."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Classic, upscale restaurants—not trendy, but timeless.",
                "Whiskey bars, steakhouses, or private dining.",
                "Cultural institutions: museums, historical sites.",
                "Anywhere that shows taste and maturity.",
                "Skip: loud clubs, chaotic environments, or anywhere too casual."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Quality items that last: leather goods, nice pens, classic watches.",
                "Business or career-related: a great book, a networking opportunity.",
                "Fine spirits: aged whiskey, quality wine.",
                "Something that shows you invested thought and effort.",
                "Avoid: cheap, trendy, or impractical gifts."
            ]
        )
    )

    // MARK: - Aquarius

    static let aquariusPlaybook = DatingPlaybook(
        sign: .aquarius,
        firstDate: PlaybookCard(
            title: "First Date With an Aquarius",
            content: [
                "Skip the standard dinner. Do something unconventional.",
                "Engage their mind before their heart.",
                "Don't try too hard to be romantic—they'll find it weird.",
                "Be yourself, even if yourself is a little strange.",
                "Let things unfold without forcing a vibe."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"I read this article that made me think of you.\"",
                "\"What's a belief you have that most people disagree with?\"",
                "\"I don't really do normal dates.\"",
                "\"You think differently than most people. I like that.\"",
                "Avoid: clichés, small talk, or anything that feels scripted."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Offbeat locations: indie films, weird museums, quirky neighborhoods.",
                "Lectures, talks, or intellectual events.",
                "Somewhere they've never been or heard of.",
                "Group hangouts work surprisingly well for first dates.",
                "Skip: fancy romantic restaurants or anything too traditional."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Something unique they've never seen before.",
                "Tech gadgets or innovative tools.",
                "Donations to causes they care about.",
                "Books on science, future trends, or social change.",
                "Avoid: conventional romantic gifts—they'll feel awkward."
            ]
        )
    )

    // MARK: - Pisces

    static let piscesPlaybook = DatingPlaybook(
        sign: .pisces,
        firstDate: PlaybookCard(
            title: "First Date With a Pisces",
            content: [
                "Create atmosphere—Pisces responds to mood and setting.",
                "Choose somewhere with soft lighting and romantic energy.",
                "Be emotionally present. Don't distract with your phone.",
                "Let conversation flow naturally into deeper topics.",
                "Show your creative or dreamy side."
            ]
        ),
        whatToSay: PlaybookCard(
            title: "What to Say",
            content: [
                "\"What's something you dream about doing?\"",
                "\"I feel really comfortable with you.\"",
                "\"Tell me about something that moved you recently.\"",
                "\"You have this energy that's hard to explain.\"",
                "Avoid: harsh criticism, cynicism, or anything too practical."
            ]
        ),
        whereToTake: PlaybookCard(
            title: "Where to Take Them",
            content: [
                "Waterfront spots—beaches, lakes, riverside restaurants.",
                "Art galleries, poetry readings, live music.",
                "Somewhere magical: fairy-lit gardens, planetariums.",
                "Quiet, romantic restaurants with atmosphere.",
                "Skip: loud bars, harsh environments, or anywhere too corporate."
            ]
        ),
        gifts: PlaybookCard(
            title: "Gifts They'll Love",
            content: [
                "Handmade or creative: a playlist, a poem, art you made.",
                "Dreamy aesthetics: crystals, candles, soft fabrics.",
                "Music-related: vinyl, concert tickets, instruments.",
                "Spa or self-care gifts.",
                "Avoid: overly practical or unromantic gifts."
            ]
        )
    )
}
