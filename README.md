<div align="center">

# 🛒 The Case of the Leaking Funnel

### How an e-commerce store with 88,000 shoppers and $1.68M in revenue was quietly losing 93% of its customers — and what to do about it.

*A data analytics case study · Oct–Nov 2019 · 300,000 shopper actions analyzed*

<br>

[![📊 Live Dashboard](https://img.shields.io/badge/📊_Live_Dashboard-Explore_it_yourself-F2C811?style=for-the-badge&labelColor=1a1a2e)](#) 
[![▶️ Charts](https://img.shields.io/badge/📈_7_Analytical_Charts-Included-6E45E2?style=for-the-badge&labelColor=1a1a2e)](#-the-evidence)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![pandas](https://img.shields.io/badge/pandas-150458?style=flat-square&logo=pandas&logoColor=white)
![seaborn](https://img.shields.io/badge/seaborn-40B5A4?style=flat-square)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)

</div>

---

## 📌 Table of Contents

- [The Mystery](#-the-mystery)
- [The Evidence](#-the-evidence)
- [What We Told the Business](#-what-we-told-the-business)
- [The Dashboard](#-the-dashboard)
- [How I Cracked It](#-how-i-cracked-it)
- [The Fine Print](#-the-fine-print)

---

## 🕵️ The Mystery

Imagine a store where **88,000 people walk in every month** and walk out with **$1.68 million** in purchases.

Sounds healthy, right? Here's the catch: almost everyone who enters never picks anything up, and of the few who do buy, almost **nobody ever comes back**.

That's the store I was handed. On the surface, revenue looked fine. Underneath, two quiet disasters were unfolding:

1. **Shoppers browse but don't buy.** Where exactly are they losing interest?
2. **Buyers never return.** Why does nobody come back for a second purchase?

My job: dig through **300,000 recorded shopper actions** (every page view, every cart addition, every purchase over two months) and figure out what's actually going wrong — then tell the business what to fix first.

> **One quick tour of how shopping works, so the story makes sense:**
> Every visit is a *session*. Shoppers **view** products, some **add to cart**, and some **purchase**.
> Each step loses people — like a funnel, wide at the top and narrow at the bottom.
> Our job was to find where the funnel leaks the most.

---

## 🔬 The Evidence

I followed four leads. Each one tells a piece of the story.

---

### 🔎 Clue #1: People aren't even trying things on

**93.2% of shopping sessions end without a single item going into the cart.**

Put plainly: out of 108,456 shopping trips, 101,061 ended with the visitor browsing around and leaving — never once pressing "add to cart."

Here's the twist that matters: the shoppers who *did* add to cart usually went on to buy. The checkout itself works fine.

> 💡 **What this means:** the store doesn't have a checkout problem. It has a *storefront* problem. People are arriving, looking, and getting bored or lost before they ever commit. Think of it like a supermarket where the aisles look so confusing that shoppers leave without picking up a basket. No point redesigning the cash registers.

---

### 🔎 Clue #2: Almost nobody comes back — and the numbers are brutal

Industry-wise, a healthy store gets **8–15% of its customers to make a second purchase** the following month.

This store? **1.2%.** Out of 2,434 people who bought something in October, exactly **28** came back in November.

The store has no real way of saying "hey, remember us?" — no follow-up emails, no reason to return.

> 💡 **What this means:** winning a brand-new customer is expensive. Winning back one who already bought from you is cheap. Right now the store spends all its effort on the expensive kind. Fixing this one number — just from 1.2% to 5% — would compound month after month, like switching a leaky bucket for a sealed one.

---

### 🔎 Clue #3: One aisle is jam-packed... and broken

The **smartphone category** is the store's busiest corner: **50,854 views** — more eyes than anywhere else.

But fewer than **2 in every 100** of those viewers buy anything.

> 💡 **What this means:** thousands of interested people pass through this aisle every month and almost none convert. If smartphones converted at the same rate as the *average* category on the platform, that alone would mean **hundreds of extra purchases every month**. You don't need to invent new traffic — the traffic is already there. It's just not being closed.

---

### 🔎 Clue #4: A tiny group of shoppers pays the bills

When I grouped customers by value, one pattern jumped out:

- **268 "Champion" shoppers** — just **0.3% of all users** — generate **14.3% of all revenue**. Each one is worth about **$1,793**.
- A wider group of "Loyal" customers brings the biggest *total* revenue ($1.038M), but each individual is worth far less.

> 💡 **What this means:** these are two different animals that need two different strategies. Champions are gold — you roll out the red carpet (a VIP programme, early access, priority support) so they never leave. Loyal customers are a volume game — you keep them coming back with the right nudges. Treating them identically wastes money on both.

---

## 🩺 What We Told the Business

Findings are useless until they turn into action. Here's the fix list, ranked by "do this first":

| Priority | Fix | What it improves | Cost |
| --- | --- | --- | --- |
| 🥇 | Add **reviews/social proof + EMI installment options** to smartphone pages | More viewers → cart | Low |
| 🥈 | Send a **3-email win-back sequence** to October's one-time buyers | Month-1 retention | Medium |
| 🥉 | Launch a **VIP programme** for the 268 Champions | Keep big spenders | Low |
| 4 | Run promotions at **6 AM UTC** — the hour when shoppers convert best | Overall conversion | Low |
| 5 | Invest in **SEO/marketing for niche categories** that convert unusually well | More of the *right* traffic | High |

And the headline number for the boardroom:

> 💰 Re-contacting just October's 2,434 buyers with a win-back campaign, at a modest 5% conversion:
> **~120 extra purchases × $300 average order = $36,000 recovered from a single email campaign.**

---

## 📊 The Dashboard

All of this lives in a **3-page interactive Power BI dashboard** — built so a manager can click, filter, and answer their own questions without asking an analyst:

| Page | What you'll see | The question it answers |
| --- | --- | --- |
| **1 · Executive Summary** | Headline KPIs and the big three problems | "How is the business *actually* doing?" |
| **2 · Funnel & Pricing** | Where shoppers drop off + how price affects buying | "Where's the leak, and are we pricing wrong?" |
| **3 · Retention & RFM** | Who comes back + which customer groups are worth the most | "Who are our best customers, and are we losing them?" |

Every page responds to filters — pick a category, a month, or a price band and every chart updates.

<p align="center">
  <img src="dashboard/Page%201_%20Executive%20Summary/Executive%20summary(Page%201).png" width="90%">
</p>

🔗 **[Live Interactive Dashboard](#)** ← replace with your Power BI link

---

## 🛠️ How I Cracked It

For the curious — the toolkit behind the story. (Non-technical readers: skip to the next section, you won't miss anything.)

| Tool | What it did |
| --- | --- |
| **MySQL** | The heavy lifting. Traced shopping sessions through the funnel, grouped customers into cohorts, scored every customer by recency/frequency/spending, and tested how price sensitivity changes buying behaviour |
| **Python (pandas + seaborn)** | Turned the query results into the 7 charts that make the story visible — the funnel waterfall, the retention heatmap, the category opportunity map, and more |
| **Power BI** | Packaged everything into the interactive 3-page dashboard for the business |

The work lives in this repo, step by step:

```text
sql_queries/          Each investigation as its own SQL file — funnel, retention,
                      pricing, categories, and customer segmentation
python/               Chart-building script
images/python_charts/ The 7 charts
dashboard/            Power BI file (.pbix), page screenshots + insight docs
data/                 The working dataset and a plain-English data dictionary
```

---

## ⚠️ The Fine Print

Honest analytics means saying what the data *can't* tell you:

- The hourly analysis covers **midnight–7 AM UTC only** (that's how the sample fell). So "6 AM is peak" means "6 AM within the hours we could see."
- We can only measure **first-month retention** — the data ends in November 2019, so longer-term loyalty is invisible.
- One metric (cart-to-purchase %) was dropped: in the sample, purchase events outnumbered cart events, which is impossible in reality — a sampling artifact, so it was excluded rather than reported.
- This is a **300K sample of a 42M-row dataset**. Directions and conclusions are solid; exact percentages may shift by 1–2% on the full data.
- Customer "Champion/Loyal" scores were computed over 2 months; best practice is 12.

---

<div align="center">

**The store wasn't broken. It just didn't know where it was leaking.**

⭐ Star this repo if the story was useful

</div>
