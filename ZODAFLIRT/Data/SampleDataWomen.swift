//
//  SampleDataWomen.swift
//  Seduction by the Stars
//
//  Created by Charles R. Skaar on 4/29/26.
//
//  Women-targeted profile content for all 12 signs.
//  Selects between hetero (Man → Woman) and lesbian (Woman → Woman) variants
//  based on GuidanceContext. Wired into ZodiacProfileView in Session 2C.

import Foundation

struct SampleDataWomen {

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

    // MARK: - Aries Woman

    static func ariesProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .aries,
            tagline: isHetero
                ? "Aries women are bold, magnetic, and impossible to ignore."
                : "Aries women bring fire and unfiltered passion to every connection.",
            introduction: isHetero
                ? "An Aries woman doesn't wait for life to happen — she chases it. She's confident, direct, and unapologetically herself. She wants a partner who can match her energy without trying to dim it. She's not interested in games or men who play it safe."
                : "An Aries woman in same-sex relationships brings intense passion and zero tolerance for emotional games. She's drawn to women who match her boldness but won't compete with her for the spotlight. She values partners who challenge her without trying to tame her.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Aries women are drawn to confident men who own their presence. Don't approach hesitantly — she'll lose interest immediately. Compliment her drive or accomplishments, not just her looks. Show you have your own ambitions; she's repelled by men who lack purpose. Keep up with her energy or she'll move on fast."
                    : "Aries women are drawn to women who carry themselves with confidence and purpose. Approach her directly — hesitation reads as weakness. She wants a partner who has her own life, ambitions, and fire. Don't try to soften yourself for her; she wants the real you, fully expressed.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "An Aries woman wants to feel pursued, challenged, and matched. Build chemistry through energy, play, and unflinching directness."
                    : "An Aries woman craves fire and equal footing. Build chemistry through directness, shared intensity, and zero hesitation.",
                scenarios: ariesScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Aries women bring unfiltered passion and demand a partner who can match their intensity.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be direct about your interest — Aries women hate guessing games.", isPositive: true),
                    ChecklistItem("Match her energy and pace; she'll respect you for it.", isPositive: true),
                    ChecklistItem("Compete with her playfully — she loves a challenge.", isPositive: true),
                    ChecklistItem("Plan something active or spontaneous, never predictable.", isPositive: true),
                    ChecklistItem("Stand your ground when you disagree; she respects strength.", isPositive: true)
                ]
                : [
                    ChecklistItem("Be direct and confident — show her you know what you want.", isPositive: true),
                    ChecklistItem("Bring your own fire; she's not looking for someone passive.", isPositive: true),
                    ChecklistItem("Suggest active dates: hiking, dancing, anywhere with energy.", isPositive: true),
                    ChecklistItem("Challenge her thinking; she loves a partner who pushes back.", isPositive: true),
                    ChecklistItem("Show ambition in your own life — she's drawn to driven women.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be wishy-washy or indecisive — she'll lose respect fast.", isPositive: false),
                    ChecklistItem("Avoid clinginess or excessive texting; give her space.", isPositive: false),
                    ChecklistItem("Don't try to control her or tell her what to do.", isPositive: false),
                    ChecklistItem("Skip overly romantic gestures too early — they feel cheesy.", isPositive: false),
                    ChecklistItem("Don't compete for attention with her; complement her instead.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to dim her shine — she'll resent it.", isPositive: false),
                    ChecklistItem("Avoid over-apologizing or playing small; she finds it unattractive.", isPositive: false),
                    ChecklistItem("Don't be passive-aggressive; speak directly or not at all.", isPositive: false),
                    ChecklistItem("Skip the slow-burn approach; she wants to feel the spark fast.", isPositive: false),
                    ChecklistItem("Don't be jealous of her independence — celebrate it.", isPositive: false)
                ]
        )
    }

    static func ariesScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "You meet at a workout class or social event where she's clearly in her element. Don't approach with a tired pickup line — she's heard them all. Instead, challenge her to something: a friendly bet, a competition, anything that engages her competitive spirit. She'll be intrigued by a man who isn't intimidated by her energy. Hold her gaze, speak with confidence, and don't shrink under her assessment."
                    : "You meet her in a setting where her energy is on full display — a fitness class, a community event, a competitive environment. She'll notice if you're confident enough to approach without overthinking. Engage her in something interactive: a challenge, a debate, a shared activity. She's drawn to women who can hold their own without trying to mirror her."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Once you have her attention, keep it by being unpredictable. Aries women bore easily, so plan dates with energy: rock climbing, mini-golf, an impromptu road trip. Push back on her opinions playfully — she finds yes-men exhausting. Touch her arm when you laugh, hold eye contact a beat longer than expected. Let the tension build through banter and competition, not soft romance."
                    : "Keep her engaged by staying unpredictable. Aries women lose interest quickly with routine. Suggest unexpected outings: indoor climbing, a spontaneous concert, a competitive game night. Be playful and physical — light touches, lingering eye contact, banter that has an edge. She wants chemistry that crackles, not a slow simmer."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "When she's ready, she'll let you know — Aries women don't play coy. Match her boldness. Don't ask permission for everything; read her cues and lead when appropriate. Be confident in physical escalation but always responsive to her signals. After intimacy, don't get clingy — give her space to come back to you on her terms. She'll respect you more for it."
                    : "Aries women move fast when they're certain. Don't second-guess her signals — if she's leaning in, lean in too. Match her boldness with your own. Be physical and decisive without being aggressive. After intimacy, don't smother her with affection or over-process the experience. Let her have her space, and she'll come back hungry for more."
            )
        ]
    }

    // MARK: - Taurus Woman

    static func taurusProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .taurus,
            tagline: isHetero
                ? "Taurus women are sensual, grounded, and worth the slow burn."
                : "Taurus women bring earthy sensuality and steadfast loyalty to every relationship.",
            introduction: isHetero
                ? "A Taurus woman moves at her own pace, and trying to rush her is the fastest way to lose her interest. She values consistency, comfort, and quality. She's deeply sensual but won't reveal that side until she trusts you. Show up reliably, show up well-dressed, and show up ready to take your time."
                : "A Taurus woman in same-sex relationships values stability and slow-built intimacy. She's drawn to women who appreciate the finer things and aren't in a rush. She wants consistency and presence, not flash. Once she opens up, her loyalty is unmatched.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Taurus women are drawn to men who are well-presented, financially stable, and unhurried. Take her somewhere with great food and atmosphere. Pay attention to details: how you dress, how you speak, how you treat staff. Avoid being cheap. Be patient — she takes time to warm up, but the payoff is worth it."
                    : "Taurus women notice presentation and energy. Show up well-groomed and put-together; she values aesthetics. Choose dates with great food and ambiance, not loud or chaotic environments. Don't push for emotional intimacy too fast — let her open up on her own time.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Taurus woman is a sensual creature who responds to slow build, beautiful settings, and unhurried presence."
                    : "A Taurus woman opens up to partners who slow down and stay present. Build chemistry through atmosphere, patience, and quality.",
                scenarios: taurusScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Taurus women experience intimacy through every sense — slow, deliberate, and deeply pleasurable.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Plan thoughtful dates with great food and atmosphere.", isPositive: true),
                    ChecklistItem("Be patient — Taurus women don't rush, and neither should you.", isPositive: true),
                    ChecklistItem("Show consistency: text when you say you will, show up on time.", isPositive: true),
                    ChecklistItem("Compliment her sensuality and aesthetic, not just her body.", isPositive: true),
                    ChecklistItem("Invest in quality time — long meals, slow walks, lingering moments.", isPositive: true)
                ]
                : [
                    ChecklistItem("Choose elegant venues — she appreciates beauty and atmosphere.", isPositive: true),
                    ChecklistItem("Be reliable and consistent; she watches for follow-through.", isPositive: true),
                    ChecklistItem("Compliment her style and aesthetic — she puts effort into both.", isPositive: true),
                    ChecklistItem("Take your time; she's not rushing and she doesn't want you to either.", isPositive: true),
                    ChecklistItem("Bring small thoughtful gifts: flowers, gourmet treats, handmade things.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't rush her into anything — she'll dig in her heels.", isPositive: false),
                    ChecklistItem("Avoid cheap or thoughtless gestures; she sees them as red flags.", isPositive: false),
                    ChecklistItem("Don't be flaky with plans; reliability is non-negotiable.", isPositive: false),
                    ChecklistItem("Skip drama and emotional volatility — she has zero patience for chaos.", isPositive: false),
                    ChecklistItem("Don't pressure her for commitment; she'll commit when she's ready.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't rush emotional or physical intimacy.", isPositive: false),
                    ChecklistItem("Avoid being inconsistent or canceling plans last minute.", isPositive: false),
                    ChecklistItem("Don't bring drama or emotional chaos into her life.", isPositive: false),
                    ChecklistItem("Skip the cheap dates; she values quality over quantity.", isPositive: false),
                    ChecklistItem("Don't pressure her to share her feelings before she's ready.", isPositive: false)
                ]
        )
    }

    static func taurusScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Plan something refined: a wine bar, an upscale restaurant, a Sunday brunch with garden seating. Show up well-dressed and put together. Order well, tip well, and slow down. Taurus women are sensory creatures — let her enjoy the food, the wine, the conversation without rushing to the next thing. Make her feel relaxed and indulged."
                    : "Take her somewhere with beautiful aesthetics: an art gallery opening, a chef-driven restaurant, a wine tasting. She wants to feel pampered. Dress well, be present, and don't make her feel rushed. Engage in unhurried conversation. Show her you appreciate quality and beauty as much as she does."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with a Taurus woman builds through proximity and patience. Sit beside her, not across from her. Touch her hand briefly when you make a point. Let your knee brush hers. Speak softly and let silences linger. She's deeply attuned to physical presence — the more grounded and present you are, the more she'll lean in. Don't perform; just be."
                    : "Build tension through proximity and slow physicality. Sit close. Let your hand graze hers. Hold eye contact during conversation pauses. Compliment her with specificity — her perfume, the way her dress fits, the texture of her hair. Make her feel seen. The slower you go, the deeper she'll fall in."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't push for the close — invite. Suggest something low-pressure: a nightcap at her favorite spot, a walk through her neighborhood. Once you're alone, take your time. Touch her face, kiss her slowly, let her lead the pace. Taurus women experience intimacy through the senses — be patient, attentive, and unhurried. Rushing will break the spell entirely."
                    : "Invite, don't pressure. Suggest extending the night naturally — a walk, dessert at her place, a quiet bar. Physical escalation should be patient and grounded. Touch her with intention. Notice her responses. Let her body language guide you. The slower and more present you are, the more she'll open up."
            )
        ]
    }

    // MARK: - Gemini Woman

    static func geminiProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .gemini,
            tagline: isHetero
                ? "Gemini women are quick-witted, curious, and impossible to pin down."
                : "Gemini women bring intellectual sparkle and playful unpredictability to every connection.",
            introduction: isHetero
                ? "A Gemini woman is mentally agile, socially fluent, and constantly evolving. She's drawn to men who can keep up with her conversation and surprise her. She bores quickly, so predictability is your enemy. Be witty, well-read, and ready for plans to change three times. She's not flaky — she's fluid."
                : "A Gemini woman in same-sex relationships values mental connection above almost everything. She's drawn to women who challenge her intellectually and don't take themselves too seriously. She craves variety and may seem hard to read — that's because she's processing five things at once.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Gemini women are attracted to men who can hold their own in conversation. Be witty, knowledgeable across topics, and quick on your feet. Don't try to impress her with money — impress her with your mind. Tease her playfully. Bring her something unexpected: a strange book recommendation, an interesting article, a quirky observation."
                    : "Gemini women are drawn to women who are mentally engaging and socially confident. Show your range: bring up something obscure, share an unexpected opinion, make her laugh with sharp wit. Don't be predictable. She'll text you constantly if you keep her brain engaged.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Gemini woman is seduced through her mind first. Build chemistry with wit, surprise, and conversations she didn't see coming."
                    : "A Gemini woman wants mental sparring and unpredictable energy. Build chemistry through ideas, banter, and never letting her get bored.",
                scenarios: geminiScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Gemini women connect physically through mental stimulation — words and wit are her erogenous zones.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Engage her mind first — wit and intelligence are foreplay for Gemini.", isPositive: true),
                    ChecklistItem("Plan dates with multiple parts: dinner, then a walk, then something unexpected.", isPositive: true),
                    ChecklistItem("Send her interesting links, articles, or random thoughts via text.", isPositive: true),
                    ChecklistItem("Be playful and tease her; she loves verbal sparring.", isPositive: true),
                    ChecklistItem("Stay unpredictable; surprise her with spontaneous plans.", isPositive: true)
                ]
                : [
                    ChecklistItem("Stimulate her intellectually — debate, banter, share ideas.", isPositive: true),
                    ChecklistItem("Be socially adaptable; she may want to bring you to events.", isPositive: true),
                    ChecklistItem("Send her random texts: memes, articles, observations.", isPositive: true),
                    ChecklistItem("Suggest variety in dates; she hates repetition.", isPositive: true),
                    ChecklistItem("Be witty and quick — slow conversation loses her fast.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be boring or one-dimensional in conversation.", isPositive: false),
                    ChecklistItem("Avoid being possessive; she needs social freedom.", isPositive: false),
                    ChecklistItem("Don't pressure her to commit too fast; she needs to feel free.", isPositive: false),
                    ChecklistItem("Skip emotional heaviness early on; she'll back away.", isPositive: false),
                    ChecklistItem("Don't be predictable — repetition kills her interest.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't get clingy or possessive; she needs space to socialize.", isPositive: false),
                    ChecklistItem("Avoid heavy emotional conversations too early.", isPositive: false),
                    ChecklistItem("Don't expect her to share her feelings on demand.", isPositive: false),
                    ChecklistItem("Skip routine dates; she'll get bored.", isPositive: false),
                    ChecklistItem("Don't take her sometimes-distant moods personally.", isPositive: false)
                ]
        )
    }

    static func geminiScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Meet her somewhere stimulating: a bookstore café, a trivia night, an art opening. Engage her brain immediately. Ask her opinion on something specific, not generic. When she shares, push back playfully or build on her idea. Don't try to dominate — she wants verbal volleys, not monologues. Make her laugh and you're in."
                    : "Find her at events with intellectual or creative energy: a panel discussion, a poetry reading, a museum tour. Engage her with curiosity, not flirtation. Ask thought-provoking questions and push her thinking. She's most attracted when her mind is engaged. Make her think and laugh in the same breath."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with a Gemini builds through banter and unpredictability. Text her at random times with surprising content — never the typical 'how was your day.' Plan multi-stop dates that keep her wondering what's next. Touch her shoulder when you make a point, lean close when you tease her. The tension is in the play, not the pause."
                    : "Build tension by being mentally and physically playful. Text her unexpected things — a song that reminded you of her, a wild thought, a plan you just hatched. In person, lean in close to share something private, touch her arm to emphasize a story. Keep her guessing about what you'll do next."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Geminis decide quickly when they're interested. If she's leaning in, suggest extending the night with something specific: 'There's a rooftop bar I want to show you.' Once alone, mix conversation with physicality. Whisper something just for her, then kiss her mid-sentence. Keep it playful, sharp, and a little chaotic — she wants to feel alive."
                    : "Move when the moment is right — Geminis don't want long buildups when they've already decided. Invite her somewhere private with intent. Mix conversation with touch. Tease her with words and follow through with action. Keep the energy electric, not heavy."
            )
        ]
    }

    // MARK: - Cancer Woman

    static func cancerProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .cancer,
            tagline: isHetero
                ? "Cancer women are deeply emotional, intuitive, and fiercely loyal once trust is earned."
                : "Cancer women bring nurturing depth and emotional intelligence to every relationship.",
            introduction: isHetero
                ? "A Cancer woman feels everything more intensely than she lets on. She's intuitive, protective of her heart, and looking for emotional safety above all else. She'll test you with subtle questions and watch your responses carefully. Be patient, be kind, and be consistent — she's worth the careful approach."
                : "A Cancer woman in same-sex relationships values deep emotional connection and a sense of home. She's selective about who she lets in, but once she does, she's all in. She wants someone who understands her moods without needing constant explanation.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Cancer women are drawn to men who feel emotionally safe and emotionally available. Be warm, present, and a great listener. Ask about her family, her childhood, her favorite memories. Show you have your own emotional intelligence. Avoid being cold, dismissive, or overly logical — she'll feel unsafe and pull back fast."
                    : "Cancer women are attracted to women who feel emotionally available and warm. Be soft in your approach. Listen more than you speak in early conversations. Ask about her people — family, friends, what makes her feel at home. She wants to know you can be tender, not just exciting.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Cancer woman opens up through emotional safety. Build chemistry slowly, gently, and with consistent presence."
                    : "A Cancer woman wants to feel held before she's held. Build chemistry through tenderness, attention, and quiet steadiness.",
                scenarios: cancerScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Cancer women open up physically through emotional safety — tenderness unlocks everything.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be emotionally present — phone away, eyes on her.", isPositive: true),
                    ChecklistItem("Cook for her or invite her into intimate, home-feeling spaces.", isPositive: true),
                    ChecklistItem("Remember small details she shares; she'll be touched you noticed.", isPositive: true),
                    ChecklistItem("Show your softer side; vulnerability earns her trust.", isPositive: true),
                    ChecklistItem("Be consistent — Cancer needs to feel emotionally safe.", isPositive: true)
                ]
                : [
                    ChecklistItem("Create a sense of emotional safety in every interaction.", isPositive: true),
                    ChecklistItem("Plan cozy, intimate dates: home-cooked meals, quiet wine bars.", isPositive: true),
                    ChecklistItem("Listen deeply when she opens up; she's testing whether you'll hold space.", isPositive: true),
                    ChecklistItem("Show emotional vulnerability — she'll match it.", isPositive: true),
                    ChecklistItem("Be patient; she opens up slowly but completely.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be emotionally unavailable or dismissive of her feelings.", isPositive: false),
                    ChecklistItem("Avoid loud, chaotic environments early on.", isPositive: false),
                    ChecklistItem("Don't push her to share before she's ready.", isPositive: false),
                    ChecklistItem("Skip cynical humor; she takes things to heart.", isPositive: false),
                    ChecklistItem("Don't disappear without explanation — silence wounds her deeply.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't dismiss her emotions or call her 'too sensitive.'", isPositive: false),
                    ChecklistItem("Avoid environments that feel impersonal or cold.", isPositive: false),
                    ChecklistItem("Don't rush emotional intimacy or push her to vulnerability.", isPositive: false),
                    ChecklistItem("Skip emotional volatility; she needs steady energy.", isPositive: false),
                    ChecklistItem("Don't ghost or go cold suddenly; she'll spiral.", isPositive: false)
                ]
        )
    }

    static func cancerScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Choose somewhere intimate and warm: a quiet wine bar, a cozy restaurant with low lighting, a walk by the water. Skip loud venues. Ask about her family, her childhood home, what she's reading. Listen with genuine interest. Don't dominate the conversation — let her unfold at her own pace. Make her feel like the most important person in the room."
                    : "Pick warm, intimate venues: a candlelit dinner, a cozy bookstore, a waterfront walk. Open up about something personal yourself — Cancer responds to vulnerability. Ask about her family, her closest friends, her favorite places to hide away. Let the conversation breathe. Don't force chemistry; let it grow."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension builds with Cancer through emotional intimacy. Text her thoughtful messages — not flirty, but caring. Remember a small detail and bring it up later. Cook for her; invite her into your space. Hold her hand during a long conversation. The closer she feels emotionally, the more her physical desire grows. Don't separate the two."
                    : "Build closeness through small, meaningful gestures. Drop off her favorite tea. Save a song that reminded you of her. Show up in small ways. Physical tension follows emotional safety — let her see you care, and the desire builds organically."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Cancer women need to feel emotionally connected before physical intimacy. When you've built that closeness, invite her somewhere private and warm — your home with a meal cooked, her place after a long talk. Move slowly, eye contact, gentle touch. Tell her how you feel. Let her see your tenderness. She gives herself fully when she feels safe."
                    : "Move with tenderness when you sense she's ready. Create intimacy in private, comfortable spaces — her place or yours, candles, music she loves. Take it slow. Words matter as much as touch with Cancer. Tell her what you're feeling. Let her body relax into yours. She'll give everything when she feels held."
            )
        ]
    }

    // MARK: - Leo Woman

    static func leoProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .leo,
            tagline: isHetero
                ? "Leo women are radiant, generous, and need to be treated like royalty."
                : "Leo women bring warmth, glamour, and unmatched loyalty to those they choose.",
            introduction: isHetero
                ? "A Leo woman walks into a room and changes its temperature. She's confident, generous, and expects to be admired. She wants a partner who's proud to be with her, not threatened by her shine. Compliment her sincerely and often. She gives 100% to those she loves and expects the same."
                : "A Leo woman in same-sex relationships brings dramatic presence and deep loyalty. She wants a partner who can match her glamour without competing for the spotlight. She loves being adored and isn't shy about asking for what she wants. Loyalty matters more to her than almost anything.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Leo women want men who are confident, well-presented, and not afraid to compliment them publicly. Take her somewhere she can be seen. Tell her she's beautiful with specifics — her smile, her laugh, her style. Be generous (with attention, not just money). Show pride in being with her. Don't be intimidated by her presence."
                    : "Leo women are drawn to women with presence, style, and warmth. Approach her with confidence and genuine admiration. Compliment her specifically — Leo can spot generic flattery. Take her places where she'll be appreciated. Match her glamour without trying to outshine her.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Leo woman wants to feel chosen, adored, and celebrated. Build chemistry through generous attention and confident presence."
                    : "A Leo woman wants admiration and a partner who isn't afraid to claim her. Build chemistry through pride, glamour, and shared spotlight.",
                scenarios: leoScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Leo women bring drama and generosity to intimacy — they want to be worshipped and to worship in return.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Compliment her often and specifically — Leo lives on praise.", isPositive: true),
                    ChecklistItem("Take her somewhere notable — she wants to be seen with you.", isPositive: true),
                    ChecklistItem("Be generous with affection, attention, and admiration.", isPositive: true),
                    ChecklistItem("Dress well; she won't tolerate sloppy presentation.", isPositive: true),
                    ChecklistItem("Show her off proudly; she'll reward you with fierce loyalty.", isPositive: true)
                ]
                : [
                    ChecklistItem("Adore her openly — Leo women love being celebrated.", isPositive: true),
                    ChecklistItem("Plan glamorous dates: rooftops, opening nights, elegant dinners.", isPositive: true),
                    ChecklistItem("Compliment her specifically and often.", isPositive: true),
                    ChecklistItem("Be confident; she's repelled by self-doubt.", isPositive: true),
                    ChecklistItem("Show your loyalty publicly; she values being claimed.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't ignore her or take her for granted.", isPositive: false),
                    ChecklistItem("Avoid criticizing her in public; she'll never forgive it.", isPositive: false),
                    ChecklistItem("Don't compete for attention; complement her instead.", isPositive: false),
                    ChecklistItem("Skip cheap dates; she'll feel insulted.", isPositive: false),
                    ChecklistItem("Don't be jealous of her social attention; it comes with her.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to compete with her; share the spotlight.", isPositive: false),
                    ChecklistItem("Avoid criticizing her appearance or style.", isPositive: false),
                    ChecklistItem("Don't take her for granted; she needs constant appreciation.", isPositive: false),
                    ChecklistItem("Skip drab or uninspired plans.", isPositive: false),
                    ChecklistItem("Don't keep her hidden; she wants to be claimed.", isPositive: false)
                ]
        )
    }

    static func leoScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Take her somewhere she can be seen and admired. A great restaurant with rooftop seating, an opening, a celebrated bar. Dress sharply. When you arrive, give her your full attention — phone away, eyes on her. Compliment her with specifics. Be charming, generous with the staff, and proud to be on a date with her. She's deciding right now if you're worthy."
                    : "Pick venues with energy and beauty: a rooftop dinner, a gallery event, a stylish lounge. Dress to match her glamour. Compliment her the moment you see her — and mean it. Be present and engaged. Don't check your phone, don't seem distracted. Make her feel like she's the only person in the room."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Leo builds through admiration and a hint of challenge. Praise her constantly, but throw in a playful tease that shows you're not totally captured. Make her work for moments of your full attention. Touch her with confidence — her hand, the small of her back. Be physical without being grabby. She wants to feel desired and chosen."
                    : "Build tension through generous attention and confident playfulness. Tell her she's stunning, then tease her about something silly. Be physically present — touch her arm, lean close to whisper. Show her you're crazy about her without losing your composure. She wants to feel pursued, not pestered."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "When the moment comes, be confident and direct. Suggest extending the night with something memorable: 'I want to keep this going. Come back to my place — I have champagne.' Once alone, take your time worshipping her. Tell her how beautiful she is. Make her feel like a queen. Leo gives passionately when she feels adored."
                    : "Move with confidence when the energy is right. Make the suggestion to extend the night feel like an event: 'Come back to my place. I want this night to keep going.' In private, be generous with affection, words, and touch. Make her feel worshipped. Leo women give back tenfold when they feel celebrated."
            )
        ]
    }

    // MARK: - Virgo Woman

    static func virgoProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .virgo,
            tagline: isHetero
                ? "Virgo women are sharp, observant, and have impossibly high standards."
                : "Virgo women bring careful intention, sharp wit, and deep loyalty to relationships.",
            introduction: isHetero
                ? "A Virgo woman is watching everything — how you treat the waiter, whether your shoes are polished, if your texts have typos. She's not judgmental for sport; she's discerning because she takes connection seriously. Be your most thoughtful, well-prepared self. She values intelligence, cleanliness, and emotional consistency above almost everything."
                : "A Virgo woman in same-sex relationships values precision, consistency, and quiet depth. She's drawn to women who are competent, thoughtful, and emotionally mature. She'll seem reserved at first — that's her assessing whether you're worth her time and energy.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Virgo women notice details, so make sure your details are right: clean nails, ironed shirt, thoughtful planning, punctuality. Be intelligent in conversation. Ask her about her work, her interests, her opinions on real things. Skip empty flattery — she sees right through it. Show competence, not bravado."
                    : "Virgo women are drawn to women who are thoughtful, well-presented, and not full of themselves. Be on time. Be prepared. Show genuine interest in her work and ideas. Avoid hyperbole or empty compliments. She wants substance — show her yours.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Virgo woman warms to quiet competence and earned trust. Build chemistry through small, perfect details and patient consistency."
                    : "A Virgo woman opens up to partners who show substance over flash. Build chemistry through reliability, intelligence, and careful attention.",
                scenarios: virgoScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Virgo women appear reserved but reveal surprising sensuality once they trust you completely.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be punctual and prepared — Virgo notices and appreciates effort.", isPositive: true),
                    ChecklistItem("Engage her intellectually with thoughtful questions.", isPositive: true),
                    ChecklistItem("Pay attention to small details: she remembers everything.", isPositive: true),
                    ChecklistItem("Be clean and well-groomed; she's observing.", isPositive: true),
                    ChecklistItem("Compliment her competence and intelligence, not just her looks.", isPositive: true)
                ]
                : [
                    ChecklistItem("Show up well-groomed and on time — both matter.", isPositive: true),
                    ChecklistItem("Engage her with substantive conversation.", isPositive: true),
                    ChecklistItem("Compliment her mind and her work.", isPositive: true),
                    ChecklistItem("Be reliable; she's testing for follow-through.", isPositive: true),
                    ChecklistItem("Notice details about her — she'll feel truly seen.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be late, sloppy, or unprepared.", isPositive: false),
                    ChecklistItem("Avoid empty flattery; she sees through it instantly.", isPositive: false),
                    ChecklistItem("Don't be loud, crude, or careless with words.", isPositive: false),
                    ChecklistItem("Skip dirty or chaotic environments.", isPositive: false),
                    ChecklistItem("Don't make promises you can't keep — she'll never forget.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't be careless about hygiene, time, or words.", isPositive: false),
                    ChecklistItem("Avoid hyperbole or fake enthusiasm.", isPositive: false),
                    ChecklistItem("Don't be emotionally chaotic or unpredictable.", isPositive: false),
                    ChecklistItem("Skip the loud, messy, or impersonal venues.", isPositive: false),
                    ChecklistItem("Don't push her to be more open than she's ready to be.", isPositive: false)
                ]
        )
    }

    static func virgoScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Plan something thoughtful and well-executed. A reservation at a great restaurant (researched, not Yelp's first hit). Show up on time, dressed well. Lead the conversation with curiosity about her life — her work, her interests, her opinions. Be a good listener and an engaged interlocutor. She's evaluating your character, your hygiene, and your intelligence."
                    : "Choose a venue that demonstrates thoughtfulness — a quiet, well-rated restaurant, a curated bookstore café, a small gallery. Be punctual and put-together. Engage her in real conversation about her work, her ideas, her tastes. Show that you've been paying attention to her life."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Virgo builds through quiet competence and small, attentive gestures. Open the door. Remember her drink order. Send a text that references something she said three dates ago. Touch her hand briefly when making a point. The accumulation of small, perfect details creates more attraction than grand gestures ever could."
                    : "Build tension through consistent, thoughtful attention. Notice her preferences and accommodate them without making a show of it. Send small, specific texts that show you're paying attention. Touch her with intention — light, deliberate. Virgo's desire builds in increments, not bursts."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't push for the close — make it natural. Suggest something low-key: a nightcap somewhere clean and quiet, dessert at her place. Once alone, be patient. Let her relax. Touch her face, kiss her with intention. Virgo women are far more sensual than they appear, but only when they feel completely safe and at ease."
                    : "Move when the moment is clearly there — don't push it forward. Invite, don't pressure. In private, be patient. Take time. Notice her body's response. Speak softly, kiss with care. Virgo's sensuality unlocks in safety. The slower you go, the more she gives."
            )
        ]
    }

    // MARK: - Libra Woman

    static func libraProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .libra,
            tagline: isHetero
                ? "Libra women are charming, romantic, and crave beauty in everything."
                : "Libra women bring grace, romance, and a deep need for harmony to relationships.",
            introduction: isHetero
                ? "A Libra woman wants romance like it's in a movie. She's drawn to beauty, balance, and partnership. She's social, diplomatic, and indecisive — patience helps. She wants to be courted properly: flowers, beautiful dates, thoughtful gestures. Skip the casual approach; she wants to feel chosen and pursued."
                : "A Libra woman in same-sex relationships craves romance, beauty, and partnership. She's drawn to women who are emotionally balanced and aesthetically attuned. She wants to feel courted and adored. Conflict makes her recoil — keep things harmonious.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Libra women are drawn to men who are well-mannered, well-dressed, and romantic. Bring flowers. Open doors. Plan beautiful, aesthetic dates. Be a great conversationalist — she values diplomacy and charm. Compliment her sense of style, her grace, her beauty. Be the man she'd be proud to introduce to her friends."
                    : "Libra women love beauty, romance, and balance. Approach her with charm and grace. Plan dates with great aesthetics — beautiful restaurants, art galleries, sunset spots. Bring her something thoughtful. Be socially smooth; she values how you carry yourself in public.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Libra woman wants romance that feels cinematic. Build chemistry through beauty, courtship, and elegant pursuit."
                    : "A Libra woman opens up to partners who match her aesthetic and emotional balance. Build chemistry through romance, harmony, and grace.",
                scenarios: libraScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Libra women experience intimacy as art — beauty, balance, and romance unlock everything.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Plan beautiful, romantic dates — aesthetics matter to Libra.", isPositive: true),
                    ChecklistItem("Bring flowers or thoughtful, elegant gifts.", isPositive: true),
                    ChecklistItem("Be charming and well-mannered, especially in public.", isPositive: true),
                    ChecklistItem("Compliment her style, beauty, and grace.", isPositive: true),
                    ChecklistItem("Avoid conflict; she values peace and harmony.", isPositive: true)
                ]
                : [
                    ChecklistItem("Choose aesthetically beautiful date locations.", isPositive: true),
                    ChecklistItem("Bring flowers or thoughtful gifts; she loves the gesture.", isPositive: true),
                    ChecklistItem("Compliment her grace and style.", isPositive: true),
                    ChecklistItem("Be diplomatic; she values smooth interactions.", isPositive: true),
                    ChecklistItem("Show partnership energy — she wants a teammate.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be rude, crude, or aggressive.", isPositive: false),
                    ChecklistItem("Avoid conflict and harsh confrontation.", isPositive: false),
                    ChecklistItem("Don't take her to ugly or chaotic venues.", isPositive: false),
                    ChecklistItem("Skip the casual approach — she wants romance.", isPositive: false),
                    ChecklistItem("Don't be possessive; she needs social freedom.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't bring conflict or drama into your dynamic.", isPositive: false),
                    ChecklistItem("Avoid harsh tones or critical language.", isPositive: false),
                    ChecklistItem("Don't choose unaesthetic venues.", isPositive: false),
                    ChecklistItem("Skip the rough-around-the-edges energy.", isPositive: false),
                    ChecklistItem("Don't be controlling; she needs space.", isPositive: false)
                ]
        )
    }

    static func libraScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Plan something romantic and beautiful. A restaurant with stunning ambiance, a sunset walk, an art exhibit. Bring flowers if appropriate. Dress well. Pull out her chair. Be the kind of man she's been waiting for. Compliment her style and grace within the first 10 minutes. Make the night feel like a movie scene."
                    : "Pick venues with romance and beauty: a candlelit dinner, a botanical garden, a rooftop with skyline views. Bring her something small and thoughtful. Be effortlessly charming. Compliment her elegance and style. Make the date feel like a love story."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Libra builds through romance and elegance. Send her beautiful texts — not crude, not casual. A song lyric, a poem fragment, a sweet compliment. Hold her hand while you walk. Slow dance with her in a quiet moment. Make every moment feel cinematic. She wants to feel desired in a refined, elegant way."
                    : "Build tension through romantic gestures and aesthetic moments. Send her flowers for no reason. Pick songs you both love. Slow dance in her kitchen. Touch her with reverence. Libra wants intimacy that feels like art — make it beautiful."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Suggest extending the night with elegance. A glass of wine on a balcony, a slow walk somewhere beautiful, a final stop at a quiet spot. When alone, be patient and romantic. Kiss her like it's a moment from a film. Compliment her in whispered words. Libra wants intimacy to feel poetic, not rushed."
                    : "Move with romance when the moment is right. Make the closing of the night feel as beautiful as the beginning. Soft music, low lighting, slow touch. Kiss her with intention. Whisper how beautiful she is. Libra women open up fully when intimacy feels like art."
            )
        ]
    }

    // MARK: - Scorpio Woman

    static func scorpioProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .scorpio,
            tagline: isHetero
                ? "Scorpio women are intense, magnetic, and demand depth in everything."
                : "Scorpio women bring fierce passion, deep loyalty, and unmatched intensity to relationships.",
            introduction: isHetero
                ? "A Scorpio woman doesn't do surface-level. She'll watch you for a long time before letting you in, and she's reading everything: your eyes, your words, your inconsistencies. She wants total honesty and emotional depth. She'll match your intensity if you bring it — and dismiss you completely if you don't. Earn her trust, and her loyalty is unbreakable."
                : "A Scorpio woman in same-sex relationships brings unmatched emotional and physical intensity. She's drawn to women who can hold their own with her depth. She tests partners with silence and watchfulness. Once she chooses you, she's all in — but only if you can match her fire.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Scorpio women are repelled by superficiality. Don't try too hard, don't show off, and don't lie — she'll catch you. Be authentically yourself, even your darker corners. Hold her gaze when you speak. Ask her real questions, not small talk. Show emotional courage. Mystery is fine, but dishonesty is fatal."
                    : "Scorpio women see through everything. Don't pretend to be more than you are. Hold her eye contact like you mean it. Speak about real things. Share something true about yourself early — she's drawn to emotional courage. She'll trust slowly, but completely.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Scorpio woman wants total honesty and depth. Build chemistry through eye contact, emotional courage, and unflinching presence."
                    : "A Scorpio woman tests for authenticity. Build chemistry by matching her intensity, her stillness, and her unblinking gaze.",
                scenarios: scorpioScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Scorpio women experience intimacy as fusion — they want depth, presence, and total surrender.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be brutally honest — she can sense lies instantly.", isPositive: true),
                    ChecklistItem("Hold eye contact like you mean it; Scorpio reads souls.", isPositive: true),
                    ChecklistItem("Share real, vulnerable parts of yourself.", isPositive: true),
                    ChecklistItem("Be emotionally and physically present, not distracted.", isPositive: true),
                    ChecklistItem("Show loyalty in small, consistent ways.", isPositive: true)
                ]
                : [
                    ChecklistItem("Be authentically yourself — Scorpio sees through pretense.", isPositive: true),
                    ChecklistItem("Match her intensity; don't shrink from it.", isPositive: true),
                    ChecklistItem("Hold deep eye contact during conversation.", isPositive: true),
                    ChecklistItem("Share emotional truths early; she's drawn to depth.", isPositive: true),
                    ChecklistItem("Be loyal in actions, not just words.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't lie about anything — she'll find out.", isPositive: false),
                    ChecklistItem("Avoid superficial conversation or small talk for too long.", isPositive: false),
                    ChecklistItem("Don't flirt with others when you're with her.", isPositive: false),
                    ChecklistItem("Skip the fake-tough-guy act; she'll see through it.", isPositive: false),
                    ChecklistItem("Don't betray her trust — there's no coming back from it.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't lie or manipulate; Scorpio remembers everything.", isPositive: false),
                    ChecklistItem("Avoid jealousy games or testing her loyalty.", isPositive: false),
                    ChecklistItem("Don't keep her at surface level; she'll lose interest.", isPositive: false),
                    ChecklistItem("Skip emotional cowardice; she values courage.", isPositive: false),
                    ChecklistItem("Don't betray her trust — she doesn't forgive easily.", isPositive: false)
                ]
        )
    }

    static func scorpioScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Choose somewhere intimate with low lighting and conversation potential — a dim wine bar, a private restaurant booth, a late-night spot. Don't fill silences with chatter. Hold her gaze. Ask her what she's working through right now. Share something real about yourself. The energy should feel charged, even quiet. She wants depth, not chatter."
                    : "Pick venues that allow for real conversation: a candlelit cocktail bar, a private booth, a quiet rooftop. Skip the small talk. Ask her something that matters. Share something true about yourself. Hold her gaze when she speaks. Scorpio is reading every micro-expression."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Scorpio is electric and almost unbearable. Hold eye contact too long. Speak just below normal volume so she has to lean in. Touch her wrist briefly during a story. Don't text constantly — when you do reach out, make it count. She wants the slow burn of restrained intensity, not the chaos of overeager pursuit."
                    : "Scorpio tension is intense, charged, almost meditative. Hold eye contact past the point of comfort. Touch her wrist, the side of her neck, with intention. Speak softly so she leans in. Don't text constantly — when you do, make it pierce. She wants energy that feels like a current."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't ask, don't perform — just step into the moment when it arrives. Scorpio's signal is unmistakable: she'll hold your gaze a beat too long, lean in, find an excuse for contact. Move with confidence. In private, be intensely present. Eye contact during everything. No phones, no distractions. She wants total fusion, not just sex."
                    : "Read her energy and move when she's signaling. Scorpio doesn't do hesitation — if it's right, it's right. In private, be completely present. Hold her gaze. Move with intent. She wants to feel completely fused with you. Half-presence kills the moment instantly."
            )
        ]
    }

    // MARK: - Sagittarius Woman

    static func sagittariusProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .sagittarius,
            tagline: isHetero
                ? "Sagittarius women are free-spirited, adventurous, and refuse to be tamed."
                : "Sagittarius women bring wildness, optimism, and unfiltered energy to every connection.",
            introduction: isHetero
                ? "A Sagittarius woman lives for adventure, freedom, and growth. She's not interested in men who try to cage her or slow her down. She wants a partner who'll go on adventures, who has his own life, and who doesn't need her to be the entire source of his happiness. Bring fun energy, no neediness."
                : "A Sagittarius woman in same-sex relationships values freedom, exploration, and intellectual chemistry. She's drawn to women who have their own full lives and aren't looking to merge into one being. She wants travel buddies, idea partners, and lovers — but never a cage.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Sagittarius women are drawn to men with their own adventures and ambitions. Don't try to lock her down — make her want to come with you. Talk about your travels, your big ideas, your sense of humor. Be confident without being arrogant. Show you have a life beyond her, and she'll want to be part of it."
                    : "Sagittarius women want to be inspired, not contained. Show her your own adventures and ideas. Be confident, funny, and unfiltered. Don't try to slow her down or pin her into definition early. She's drawn to women who can keep up with her wild energy.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Sagittarius woman wants adventure and lightness. Build chemistry through humor, surprise, and the freedom to roam."
                    : "A Sagittarius woman is seduced by partners who fuel her fire, not contain it. Build chemistry through play, honesty, and shared horizons.",
                scenarios: sagittariusScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Sagittarius women bring playfulness and adventure to intimacy — they want fun, not heaviness.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Plan adventurous, unexpected dates — boring is the kiss of death.", isPositive: true),
                    ChecklistItem("Have your own life, ambitions, and friendships.", isPositive: true),
                    ChecklistItem("Make her laugh — humor is non-negotiable for Sag.", isPositive: true),
                    ChecklistItem("Be honest and direct; she hates emotional games.", isPositive: true),
                    ChecklistItem("Travel with her or talk about places to go.", isPositive: true)
                ]
                : [
                    ChecklistItem("Suggest adventurous, spontaneous plans.", isPositive: true),
                    ChecklistItem("Be honest and direct — she hates indirect communication.", isPositive: true),
                    ChecklistItem("Show your sense of humor; laughter is foreplay for Sag.", isPositive: true),
                    ChecklistItem("Have your own ambitions and adventures.", isPositive: true),
                    ChecklistItem("Travel together — she wants a life partner, not a homebody.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be clingy or smother her — she'll run.", isPositive: false),
                    ChecklistItem("Avoid jealousy and possessiveness.", isPositive: false),
                    ChecklistItem("Don't pressure her for commitment too early.", isPositive: false),
                    ChecklistItem("Skip the boring, predictable date routine.", isPositive: false),
                    ChecklistItem("Don't be overly serious; she needs lightness and play.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to control her schedule or freedom.", isPositive: false),
                    ChecklistItem("Avoid heavy emotional drama.", isPositive: false),
                    ChecklistItem("Don't pressure her to define the relationship early.", isPositive: false),
                    ChecklistItem("Skip routine and predictability.", isPositive: false),
                    ChecklistItem("Don't take her independence personally.", isPositive: false)
                ]
        )
    }

    static func sagittariusScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Skip the standard dinner. Take her somewhere unusual: a hidden bar, an outdoor concert, a food truck adventure across town. Make her laugh in the first five minutes. Tell her about a recent trip or wild story. Don't try to lock her in — make the night feel like she could leave at any time, and she'll want to stay."
                    : "Pick something unconventional: a comedy show, a rooftop concert, a spontaneous museum night. Be the one with the wild story. Make her laugh hard, early. Don't try to define what this is — let her feel free, and she'll want to come back."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Sag builds through play and unpredictability. Suggest something spontaneous — drive somewhere, dance somewhere strange, escape the city for a day. Tease her, banter, push her buttons playfully. Don't text constantly; when you do, make it interesting. The freer she feels, the more she'll want to be with you."
                    : "Build tension through unpredictability and play. Send her wild plans on short notice. Tease her about her opinions. Be physical in a fun, spontaneous way — pull her into a kiss in the middle of a story, dance with her in public. Sag wants the energy to feel alive, not heavy."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Sag moves fast when she's into you. When the night peaks, suggest extending it with adventure — a late-night drive, a stargazing spot, a 24-hour diner before going somewhere private. In bed, she's playful and exploratory. Match her energy. Don't get too serious. After, give her space — she'll come back if you don't smother her."
                    : "Sag will signal clearly when she's ready. Move with her, not after her. Make the closing of the night feel like an adventure too — a drive somewhere, a private rooftop, a hotel because why not. In intimacy, be playful and adventurous. After, don't cling. Give her space and she'll come back."
            )
        ]
    }

    // MARK: - Capricorn Woman

    static func capricornProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .capricorn,
            tagline: isHetero
                ? "Capricorn women are ambitious, classy, and don't waste time on men who aren't serious."
                : "Capricorn women bring discipline, depth, and dry wit to every relationship.",
            introduction: isHetero
                ? "A Capricorn woman has goals, standards, and zero patience for childish behavior. She's drawn to ambitious men who have their lives together. She's not opposed to romance, but she wants substance underneath. She's reserved at first — that's her assessing whether you're a serious option. Show her you are."
                : "A Capricorn woman in same-sex relationships values stability, intelligence, and quiet ambition. She's drawn to women who are building real lives. She's not opposed to romance, but she wants foundation. Don't expect quick emotional opening — she warms slowly but completely.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Capricorn women want serious men. Be ambitious, well-dressed, and emotionally mature. Show her you have your life together — career, finances, plans. Be respectful and substantive in conversation. Don't try to be the funny class clown; she values gravitas. Patience is essential — she's testing whether you'll stick around for the long climb."
                    : "Capricorn women are drawn to women with substance — ambition, intelligence, financial stability. Skip the flashy approach; show steady, real-deal energy. Be on time. Be prepared. Engage her with real conversation about her work and goals.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Capricorn woman warms slowly to partners with substance. Build chemistry through ambition, reliability, and the long view."
                    : "A Capricorn woman invests deeply when partners prove the long game. Build chemistry through quiet competence, consistency, and shared seriousness.",
                scenarios: capricornScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Capricorn women have surprising sensual depth beneath their composed exterior — trust unlocks everything.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Show ambition and have your life together.", isPositive: true),
                    ChecklistItem("Be punctual, well-dressed, and emotionally mature.", isPositive: true),
                    ChecklistItem("Engage her about her goals and career — she takes pride in both.", isPositive: true),
                    ChecklistItem("Be patient; she opens up slowly but deeply.", isPositive: true),
                    ChecklistItem("Show consistency — Capricorn values long-term reliability.", isPositive: true)
                ]
                : [
                    ChecklistItem("Show your own ambition and stability.", isPositive: true),
                    ChecklistItem("Be on time and prepared.", isPositive: true),
                    ChecklistItem("Engage her about her work, plans, and dreams.", isPositive: true),
                    ChecklistItem("Be patient; she's testing for the long haul.", isPositive: true),
                    ChecklistItem("Show emotional and financial maturity.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be flaky, lazy, or aimless.", isPositive: false),
                    ChecklistItem("Avoid being overly emotional too early.", isPositive: false),
                    ChecklistItem("Don't be cheap; she values quality.", isPositive: false),
                    ChecklistItem("Skip immature humor or party-boy energy.", isPositive: false),
                    ChecklistItem("Don't push her to commit fast; she needs time.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't be unreliable or vague about your goals.", isPositive: false),
                    ChecklistItem("Avoid emotional theatrics.", isPositive: false),
                    ChecklistItem("Don't push for emotional intimacy before trust is built.", isPositive: false),
                    ChecklistItem("Skip the chaotic lifestyle vibes.", isPositive: false),
                    ChecklistItem("Don't try to dominate her — she's nobody's project.", isPositive: false)
                ]
        )
    }

    static func capricornScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Plan something classy and well-executed: a quiet upscale restaurant, a wine bar, a cultural event. Show up sharp, on time, and substantial. Engage her with real conversation about her work, her goals, current events. Don't try to be funny for funny's sake. Be the man who could be her partner in life, not just for the night."
                    : "Choose elegant, understated venues — a great steakhouse, a quiet whiskey bar, a chamber concert. Be on time and impeccably dressed. Engage her in real conversation. Show her you take her seriously. Don't perform; just be substantial."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Capricorn builds slowly through respect and quiet pursuit. Show consistency — text when you say you will, plan ahead, follow through. Compliment her achievements and her presence, not just her body. Touch her with intention but not aggression. The longer you build, the more deeply she invests."
                    : "Capricorn tension is slow and deep. Show consistency. Send messages that show you're thinking of her in real ways — not just flirty but substantive. Compliment her work, her intelligence, her drive. Physical tension grows from earned respect, not flashy moves."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Don't rush. Capricorn moves toward intimacy on her timeline. When she's ready, she'll lean in clearly. Take her somewhere private and elegant. Be patient — beneath her composed exterior is surprising sensual depth. Take your time, be confident, be present. She gives fully when she trusts completely."
                    : "Don't push the timeline. Capricorn opens up when she's ready and not before. When she does, be present, patient, and confident. In private, you'll find her surprisingly sensual once she's in the moment. Match her depth with your own presence."
            )
        ]
    }

    // MARK: - Aquarius Woman

    static func aquariusProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .aquarius,
            tagline: isHetero
                ? "Aquarius women are unconventional, brilliant, and impossible to box in."
                : "Aquarius women bring originality, intellectual depth, and quiet rebellion to relationships.",
            introduction: isHetero
                ? "An Aquarius woman is not like other women — and she'll never let you forget it. She's intellectual, original, and emotionally cool until she trusts you. She's drawn to men who think for themselves and don't try to mold her. She'll seem detached at times; that's just how she processes. Don't take it personally."
                : "An Aquarius woman in same-sex relationships values originality, intellectual chemistry, and freedom. She's drawn to women who don't follow scripts. She'll seem aloof until you earn deeper access — and even then, she values her independence above almost anything.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Aquarius women are drawn to men who are smart, original, and confident in their weirdness. Don't try to be cool — be authentically yourself, especially the unconventional parts. Talk to her about ideas, big and small. Skip the typical romance script. She wants intellectual chemistry first, emotional second, physical third."
                    : "Aquarius women want women with brains, originality, and edge. Approach her with intellectual curiosity, not romantic scripting. Talk about ideas, art, social issues. Show her you don't follow the herd. Don't try to fast-track emotional intimacy; she'll back away.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "An Aquarius woman is seduced by ideas before bodies. Build chemistry through unconventional plans, intellectual chemistry, and respectful distance."
                    : "An Aquarius woman opens up to partners who match her originality and respect her independence. Build chemistry through ideas, novelty, and space.",
                scenarios: aquariusScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Aquarius women approach intimacy with curiosity and openness — mind first, body second.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Engage her mind first — Aquarius is intellectually driven.", isPositive: true),
                    ChecklistItem("Be original; she's repelled by conventional men.", isPositive: true),
                    ChecklistItem("Respect her independence and unique pace.", isPositive: true),
                    ChecklistItem("Talk about ideas: politics, science, art, philosophy.", isPositive: true),
                    ChecklistItem("Be your weirdest, truest self — she values authenticity.", isPositive: true)
                ]
                : [
                    ChecklistItem("Engage her intellectually before anything else.", isPositive: true),
                    ChecklistItem("Show your originality and unconventional side.", isPositive: true),
                    ChecklistItem("Respect her need for space and independence.", isPositive: true),
                    ChecklistItem("Discuss real ideas: art, politics, philosophy.", isPositive: true),
                    ChecklistItem("Don't follow scripts; she's bored by predictability.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be possessive — she'll vanish.", isPositive: false),
                    ChecklistItem("Avoid traditional gender role expectations.", isPositive: false),
                    ChecklistItem("Don't pressure her emotionally too fast.", isPositive: false),
                    ChecklistItem("Skip the cliché romantic gestures.", isPositive: false),
                    ChecklistItem("Don't be intellectually lazy; she values smart conversation.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't try to define the relationship early.", isPositive: false),
                    ChecklistItem("Avoid emotional pressure or heavy expectations.", isPositive: false),
                    ChecklistItem("Don't be conventional or follow social scripts.", isPositive: false),
                    ChecklistItem("Skip clinginess — she needs lots of space.", isPositive: false),
                    ChecklistItem("Don't take her aloofness personally.", isPositive: false)
                ]
        )
    }

    static func aquariusScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Skip the typical date. Take her to a lecture, an experimental art show, a quirky restaurant, a science museum. Engage her with weird and wonderful conversation. Ask her what she's reading, what theory she's into, what conspiracy she finds interesting. Don't try to flirt traditionally — let intellectual chemistry do the work."
                    : "Choose unconventional venues: a poetry slam, an experimental gallery, a documentary screening with discussion. Engage her with ideas. Ask her opinion on something she'd actually have a hot take on. Skip flirtation; let mental chemistry build naturally."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Aquarius tension builds through long, mind-bending conversations and surprising plans. Send her articles, theories, observations. Plan dates that feel like adventures of the mind. Don't text constantly — quality over quantity. When you do touch her, make it feel meaningful, not generic. She wants to feel chosen specifically."
                    : "Build tension through intellectual depth and unexpected gestures. Send her things that show you've thought about her — a book, an article, a song with a strange story. Be physically present but not pushy. Aquarius warms in increments. Make her feel mentally seen first."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Aquarius moves to intimacy on her own timeline and signals subtly. Read her — late-night invitation, prolonged eye contact, a touch that lingers. Move when it's clear. In private, she's curious and open but not necessarily romantic. Match her energy. Don't get clingy after; she values emotional space."
                    : "When the moment is right, move without overthinking. Aquarius signals through proximity and quiet intensity. In intimacy, she's exploratory and open. Don't smother her after; let her come back to you on her own time."
            )
        ]
    }

    // MARK: - Pisces Woman

    static func piscesProfile(context: GuidanceContext) -> ZodiacProfile {
        let isHetero = context == .heteroManToWoman

        return ZodiacProfile(
            sign: .pisces,
            tagline: isHetero
                ? "Pisces women are dreamy, deeply feeling, and want to merge soul to soul."
                : "Pisces women bring romance, intuition, and emotional depth to every connection.",
            introduction: isHetero
                ? "A Pisces woman feels everything. She's romantic, intuitive, and craves deep emotional and spiritual connection. She's looking for soul-deep love, not casual. She's deeply empathetic, which means she can also be hurt easily. Be tender, be honest, and be present. She'll give you everything — but only if she feels safe."
                : "A Pisces woman in same-sex relationships seeks soul connection above almost everything. She's deeply romantic, emotional, and intuitive. She wants a partner who can meet her in the realm of feeling. She's tender — handle her with care, and she'll give you her entire heart.",
            howToAttract: ProfileSection(
                title: "Getting Her Attention",
                content: isHetero
                    ? "Pisces women are drawn to men who are emotionally available, romantic, and creative. Be tender. Listen deeply. Share your dreams, your art, your spiritual side. She's looking for a soulmate, not a fling. Be patient and present. Cynical or cold men will lose her instantly."
                    : "Pisces women want romance, depth, and tenderness. Approach her softly. Share your dreams, your art, your inner world. Listen with full presence. She's drawn to women who can meet her in the realm of emotion and imagination.",
                isPremium: false
            ),
            howToSeduce: SeductionSection(
                title: "Building Chemistry",
                introduction: isHetero
                    ? "A Pisces woman wants soul-deep romance. Build chemistry through tenderness, creativity, and emotional fluency."
                    : "A Pisces woman opens up to partners who meet her in the realm of feeling. Build chemistry through softness, art, and reverence.",
                scenarios: piscesScenarios(isHetero: isHetero),
                isPremiumContent: true
            ),
            physicalChemistry: ProfileSection(
                title: "Physical Chemistry",
                content: "",
                teaser: "Pisces women experience intimacy as soul-merging — emotional connection unlocks transcendent physical depth.",
                isPremium: true
            ),
            mustDos: isHetero
                ? [
                    ChecklistItem("Be tender, romantic, and emotionally present.", isPositive: true),
                    ChecklistItem("Listen deeply when she shares her feelings or dreams.", isPositive: true),
                    ChecklistItem("Plan dreamy, imaginative dates: water, music, candles.", isPositive: true),
                    ChecklistItem("Share your own emotional and creative side.", isPositive: true),
                    ChecklistItem("Be patient and gentle — she's deeply sensitive.", isPositive: true)
                ]
                : [
                    ChecklistItem("Approach her with romance and tenderness.", isPositive: true),
                    ChecklistItem("Share your inner world: dreams, art, feelings.", isPositive: true),
                    ChecklistItem("Plan imaginative, soulful dates.", isPositive: true),
                    ChecklistItem("Listen deeply — Pisces wants to feel truly heard.", isPositive: true),
                    ChecklistItem("Be gentle; her sensitivity is her superpower and her vulnerability.", isPositive: true)
                ],
            avoids: isHetero
                ? [
                    ChecklistItem("Don't be cold, cynical, or emotionally unavailable.", isPositive: false),
                    ChecklistItem("Avoid harsh criticism; she takes it deeply to heart.", isPositive: false),
                    ChecklistItem("Don't be inconsistent — she'll spiral into anxiety.", isPositive: false),
                    ChecklistItem("Skip rough or overly logical energy.", isPositive: false),
                    ChecklistItem("Don't dismiss her intuition; she reads people accurately.", isPositive: false)
                ]
                : [
                    ChecklistItem("Don't be emotionally cold or sarcastic.", isPositive: false),
                    ChecklistItem("Avoid harsh language or criticism.", isPositive: false),
                    ChecklistItem("Don't dismiss her intuition or feelings.", isPositive: false),
                    ChecklistItem("Skip the chaotic or aggressive energy.", isPositive: false),
                    ChecklistItem("Don't disappear emotionally; she'll feel abandoned.", isPositive: false)
                ]
        )
    }

    static func piscesScenarios(isHetero: Bool) -> [SeductionScenario] {
        return [
            SeductionScenario(
                number: 1,
                title: "First Encounter",
                description: isHetero
                    ? "Pick somewhere dreamy: a candlelit restaurant, a moonlit beach, a quiet bar with live acoustic music. Slow down. Ask her about her dreams, her favorite poetry, what music moves her. Be tender and emotionally present. Don't dominate — let her share. Make her feel like you can see her soul."
                    : "Choose romantic, atmospheric venues — a wine bar with candles, a stargazing spot, a music lounge. Be soft. Ask her about her inner world, her dreams, her art. Listen with full attention. Make her feel like she's in a moment that matters."
            ),
            SeductionScenario(
                number: 2,
                title: "Building Tension",
                description: isHetero
                    ? "Tension with Pisces builds through emotional and creative intimacy. Send her songs that remind you of her, write her something heartfelt, share your dreams. Touch her hand softly during conversation. Look at her like you really see her. Pisces falls deep when she feels emotionally seen — physical desire follows emotional fusion."
                    : "Build tension through emotional and artistic resonance. Share music, poetry, dreams. Touch her gently. Tell her how she makes you feel. Pisces opens her body when her heart is fully open. Romance is the foreplay."
            ),
            SeductionScenario(
                number: 3,
                title: "Closing the Connection",
                description: isHetero
                    ? "Pisces wants intimacy that feels transcendent. Suggest extending the night gently — a walk under stars, music at her place, candles. Be slow, present, and tender. Whisper how you feel. Look into her eyes. Pisces gives herself fully to a partner who meets her in the soul. Honor that gift."
                    : "Move toward intimacy with reverence. Pisces doesn't want rushed energy. Create a beautiful, soft moment — candles, music she loves, slow touch. Look at her like she matters. Tell her how you feel. She'll give you everything when she feels held."
            )
        ]
    }
}
