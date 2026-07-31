# Profit Room Skills

**Claude Code skills that help you build an offer, land your first customers, and make content that sells.**

Built for people who can *build* with AI but haven't yet *sold* with it. You don't need to code. You run a skill in plain English, answer a couple of questions, and get a real, usable result — an offer you can pitch, an outreach list, a week of posts, a thumbnail, a landing page.

There are 51 skills across six packs. Install the whole thing or just the pack you need.

> **Brand new to Claude Code?** Start with [freeskills](https://github.com/duncan-buildroom/freeskills) instead — 50 skills that need zero setup, built to teach you the tool and get your first things live. Come back here when you want the heavier machinery: content pipelines, video and thumbnail generation, carousel rendering, and publishing automations. Some skills appear in both.

---

## Install (the one-command way)

Inside Claude Code, add this marketplace once:

```
/plugin marketplace add duncan-buildroom/profit-room-skills
```

Then install any pack:

```
/plugin install money
/plugin install content
/plugin install youtube
/plugin install media
/plugin install design
/plugin install utility
```

That's it. The skills show up in your `/` menu, and Claude will also reach for them on its own when you describe what you want. Update anytime with `/plugin marketplace update`.

> New to this? A "skill" is a saved set of instructions Claude Code already knows how to run. You don't install software — you just tell Claude what you want ("build me an offer", "write my LinkedIn post") and it uses the right skill.

### Or copy it manually

Prefer to do it by hand?

```bash
git clone https://github.com/duncan-buildroom/profit-room-skills.git
cp -r profit-room-skills/skills/offer-builder ~/.claude/skills/
```

Copy any skill folder from `skills/` into your `~/.claude/skills/` directory and restart Claude Code.

---

## First: make the skills yours

Run this once before anything else:

```
/personalize
```

It asks a few quick questions — your name, what you do, who you serve, your offer, your voice — and saves a short **brand profile** to `~/.claude/brand-profile.md`. Every content, YouTube, and money skill reads that profile, so they all write in *your* voice for *your* audience without you re-explaining yourself each time. If a skill ever needs something the profile doesn't have, it asks and saves your answer. Run `/personalize` again anytime to update it.

Nothing you enter leaves your machine, and no skill will ever invent facts, results, or numbers about you.

---

## What's inside

### 💰 money — get paid
The heart of the pack. Turn "I built something" into "someone paid me."

| Skill | What it does |
|---|---|
| `offer-builder` | Build a Grand Slam Offer so good it's hard to say no |
| `positioning-filter` | Lock the one angle that makes you stand out |
| `pricing-calculator` | Price on the value you create, not your costs |
| `productize-service` | Turn a custom service into a repeatable, sellable product |
| `warm-outreach` | Build a warm-network list + a first message that isn't cringe |
| `dm-writer` | Write one short, human DM for a specific person and goal |
| `first-customer-closer` | A calm, honest sales-conversation script for non-salespeople |
| `objection-handler` | Turn the objections you actually hear into confident answers |
| `proposal-generator` | Turn a discovery chat into a proposal that closes |
| `launch-plan` | Plan a simple revenue-spike launch for your offer |
| `cold-outreach` | A cold-outreach system (once you've made a sale by hand) |
| `money-model-audit` | Find more revenue from the customers you already have |

### ✍️ content — post in your own voice
| Skill | What it does |
|---|---|
| `linkedin-post` | Write (and optionally publish) a LinkedIn post in your voice |
| `linkedin-post-batch` | Generate and schedule a batch of posts at once |
| `daily-post-ideas` | 5 personalized post ideas, one per content angle |
| `daily-digest` | A daily digest of what's new in your niche |
| `carousel-creator` | Branded Instagram carousels from a topic or transcript |
| `lead-magnet` | Build a free lead magnet + the posts to promote it |
| `digital-guide-builder` | Turn your expertise into a finished, sellable guide |
| `content-prompt` | Get one sharp question to riff on for a short video |
| `hooks` | Generate scroll-stopping hooks with a proven framework |
| `dissect` | Reverse-engineer why a piece of content is working |
| `viral-format-miner` | Turn a viral format into new content you can shoot |
| `substack` | Draft a weekly newsletter issue in your voice |
| `content-engine` | Turn one video into a week of multi-platform content |

### 📺 youtube — grow a channel
| Skill | What it does |
|---|---|
| `yt-titles` | High-performing title ideas from your video |
| `yt-thumbnail` | High-CTR 4K thumbnails from your transcript |
| `yt-intro` | A retention-optimized 30-second intro |
| `yt-description` | A clean, high-converting description with timestamps |
| `outlines` | A full video outline: hook, body, visuals |
| `yt-search` | Structured YouTube search + research |
| `shortify` | Cut one long video into vertical shorts |

### 🎬 media — images & video
| Skill | What it does |
|---|---|
| `ad-studio` | A product photo → a 15-second cinematic ad |
| `saas-ad-studio` | A SaaS/app URL → a cinematic product ad |
| `infographic` | Any topic → a hand-drawn educational infographic |
| `faceless-video` | A faceless, documentary-style video essay |
| `viral-remix` | A viral video URL → your own AI remix |
| `ig-channel-remix` | Mine a channel's format → new videos in that style |
| `higgsfield-generate` | Generate images and video with Higgsfield |
| `yap` | A punchy talking-avatar short for Reels/TikTok/Shorts |
| `youtube-clipping-agent` | Slice a ranked-compilation video into vertical clips |

### 🎨 design — build things that convert
| Skill | What it does |
|---|---|
| `frontend-design` | Distinctive, production-grade UI |
| `ui-ux-pro-max` | A deep UI/UX design library (styles, palettes, fonts) |
| `web-design-guidelines` | Review your UI against web interface best practices |
| `edu-site` | A topic or repo → a polished educational page |
| `build-site` | An animated brand site for your offer |

### 🛠️ utility — sharpen the workflow
| Skill | What it does |
|---|---|
| `personalize` | Set up your brand profile (run this first) |
| `brainstorming` | Think through an idea before you build it |
| `defuddle` | Pull clean, clutter-free text off any web page |
| `meeting-notes` | Turn a transcript into structured notes |
| `sanitize-project` | Clean a project of secrets before you share it |

---

## Some skills need a key

The writing and planning skills work out of the box. A few of the media and publishing skills use outside tools (image/video generation, schedulers, Notion, etc.). Each of those has a **Requirements** note telling you exactly what to set up — and if it isn't set, the skill still does the useful part and tells you what's missing. Nothing here ships with anyone's account or keys baked in.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Skills follow the [Agent Skills](https://agentskills.io) format — one folder, a `SKILL.md`, and any scripts it needs.

## License

[MIT](LICENSE). Use them, change them, ship them.
