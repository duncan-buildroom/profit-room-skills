---
name: one-lead-magnet
description: Walk a business owner, one question at a time, through building ONE high-value lead magnet and finish with the real thing - a designed PDF plus the launch kit (promo post, image text, DM, five follow-up emails, weekly scorecard). Use when the user says "build my lead magnet", "make a lead magnet", "I need a freebie / opt-in / free guide", "help me get email signups", "comment a word and get a PDF", or "walk me through the lead magnet workbook". It reads your brand profile and any notes, DMs or reviews you point to first, and only asks what is missing.
---

# One Lead Magnet

The conversational version of the Lead Magnet Workbook. You answer plain questions, one at a time. You end up with a finished PDF lead magnet and everything to launch it.

## Personalization
This skill works in *your* brand voice. Before running, load the brand profile at `~/.claude/brand-profile.md`.
- If it doesn't exist, offer to run the **personalize** skill first, or just ask the few basics in Step 1 and keep going. Never block on it.
- If a field this skill needs is blank, ask one quick question and offer to save the answer back to the profile.
- Never invent facts, results, quotes or numbers about the user. Use only what is in the profile, their sources, or their answers.

Profile fields used: Name, What you do, Who you serve, Main pain, What you sell, Transformation, Tone, Words to avoid, Proof, Website, Booking link, Main platforms, brand colors and fonts if present.

## How to run it

**Rules for every message**
- ONE question at a time, plain language, always with a short example ("Like: ..."). No jargon.
- Gather first, ask second. Pre-fill whatever the sources already answer, show it, and ask only to confirm or fill gaps.
- At every decision, give a recommendation and say why in one line. The member can override.
- Use AskUserQuestion when a choice fits (format, title, tool). Recommended option first.
- Show progress as "Exercise 3 of 10".
- Keep replies short. No lectures.

### Step 1: Set up and gather
1. Working folder is `./lead-magnet/` (create it; if you cannot tell which folder the member is in, ask). If `./lead-magnet/answers.md` exists, show where they stopped and offer to resume there.
2. Read `~/.claude/brand-profile.md` if it exists. Show a 4-line summary of what you found.
3. Ask: "Want me to read anything that shows what your customers say? Like a folder of call notes, DMs, reviews, emails, or paste some here." Read what they point to. Never go looking in places they did not name.
4. Fill in the basics only if still unknown, one at a time: name, business, what you sell, your offer link, who you serve. Offer to save them to the profile at the end.
5. Show a "here's what I found" summary: buyer questions (with counts), offer, proof, anything else that pre-fills an exercise. Then start.

### Step 2: Walk the 10 exercises in order
Open `references/exercises.md` and follow it exactly for each exercise: pre-fill, questions with examples, recommendation, save.

Part 1 Research: 1 Buyer questions, 2 Problem before your offer, 3 Competitor gap, 4 One-sentence promise.
Part 2 Design: 5 Pick the format, 6 Outline and titles.
Part 3 Build and Launch: 7 Draft, 8 Proof bank, 9 Your path, 10 Weekly scorecard.

After each exercise, append the result to `./lead-magnet/answers.md` (one `## Exercise N: name` block each, plus a `## Status` line at the top: "Done through exercise N"). Tell the member in one line that it is saved and they can stop and resume any time.

Order: do 1 to 6, then ask the questions of exercises 7 and 8 (stories, regulated field, proof) BEFORE drafting, so the draft already has the member's own stories and proof. Then draft (Step 3), then close out exercises 8, 9 and 10.

### Step 3: Build the lead magnet (exercise 7)
1. Show the approved outline from exercise 6.
2. Write ONE section at a time into `./lead-magnet/draft.md`, using the member's stories, tips, proof and exact words. Short sentences, plain words, the member's tone. Each section ends with one thing the reader does today. Show it and ask for a quick OK or changes before the next. Do not invent facts, results or quotes. Mark approved sections in `answers.md`.
3. Always include: the two-minute self-check up front, a "when it doesn't work / when to get help" section, and a last page with ONE next step and ONE link (the offer).
4. Health, legal and financial niches: put "General information, not advice. This does not replace a [doctor / lawyer / financial adviser]." on the first content page and the last page, keep claims general, no outcome promises, and note the reviewer the member named.
5. Pay test: "Would you pay $20 for this?" If not, name the section to deepen (depth, not pages) and fix it.

### Step 4: Design the PDF
1. Copy `assets/lead-magnet-template.html` (in the `assets/` folder next to this SKILL.md) to `./lead-magnet/lead-magnet.html`. Fill the placeholders, replace the sample sections with the approved draft using the template's components (`.section`, `.do`, `.proof`, `ul.check`, tables, `.lines`, `.cta`). Each `.section` starts a new page; give very short sections `class="section flow"` so they share a page. Delete the `.note` disclaimer div if the niche is not regulated. Before rendering, run `grep -c '{{' lead-magnet.html`: it must print 0 (no unfilled placeholders).
2. Set brand colors and fonts in the `:root` block: from the profile if present, else ask once ("Do you have a brand color? Like: a hex code, or 'dark green'") and fall back to the neutral default. One font family, one accent color.
3. Render: `bash <this skill's folder>/scripts/render-pdf.sh ./lead-magnet/lead-magnet.html ./lead-magnet/<name>.pdf` (uses headless Chrome: `"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless --no-pdf-header-footer --print-to-pdf=...`). The script also prints the page count.
4. If the script says NO_CHROME or RENDER_FAILED (common on Windows or without Chrome): tell the member to open `lead-magnet.html` in any browser, press Ctrl/Cmd+P, choose Save as PDF, turn Headers and footers off, and save.
5. Check it yourself: convert 2 pages to PNG (`pdftoppm -png -r 80 -f 1 -l 2 file.pdf out`, then look at the PNGs; if pdftoppm is missing, use the Read tool on the PDF with `pages`) and look for cut-off text, empty pages, stranded headings, unreadable contrast. Fix and re-render until clean. Tell the member to open it on their phone and confirm they do not have to pinch to read.

### Step 5: Launch kit
Write `./lead-magnet/launch-kit.md` exactly as specified in `references/launch-kit.md`: path line, promo post (CTA on the image: "Comment WORD for the [name]"), image text, DM (3 versions, one recommended), five emails, test checklist, weekly scorecard. Show the post, the DM and email 1 for a quick OK; the rest saves to the file.

### Step 6: Wrap up
Finish with a short summary: the list of files made (with paths), the PDF page count, and the next step: host the PDF at a link that opens without a login, then deliver it with a comment-keyword DM tool (ManyChat, Blotato or LeadShark; see the course module on delivering with comment-to-DM), connect the email sequence, test from a second account, then post. Offer to save the basics back to the brand profile if they were asked for in Step 1.

## Output files (all in `./lead-magnet/`)
`answers.md` (progress and every answer), `draft.md` (approved text), `lead-magnet.html`, `<name>.pdf`, `launch-kit.md`.

## Notes
- One magnet only. If the promise needs an "and", it is two magnets: keep the stronger half.
- Pricing for the DM tools changes: tell the member to check each pricing page. This skill writes the text; the tool runs the automation.
- Never put personal health, legal or money details into DMs or emails.
