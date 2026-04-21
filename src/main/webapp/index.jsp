<!-- FIXED + IMPROVED UI VERSION (clean, modern colors, bug fixes) -->

<!-- 🔥 ONLY REPLACE THESE PARTS IN YOUR CODE -->

<!-- ✅ FIX INPUT + IMAGE TAGS -->
<!-- Replace ALL wrong tags -->
<input type="search" id="searchInput" placeholder="Search products, categories..." />

<img src="YOUR_IMAGE_URL" alt="image">

<!-- ✅ MODERN COLOR THEME -->
<style>
:root {
    --bg: #0f172a;
    --primary: #111827;
    --accent: #6366f1;
    --accent2: #22c55e;
    --text: #e5e7eb;
    --muted: #9ca3af;
    --card: #1f2937;
    --surface: #111827;
    --radius: 14px;
}

/* BODY */
body {
    background: linear-gradient(135deg, #0f172a, #020617);
    color: var(--text);
}

/* HEADER */
header {
    background: rgba(15, 23, 42, 0.8);
    backdrop-filter: blur(10px);
}

/* SEARCH */
.search {
    background: #1f2937;
    border: 1px solid #374151;
}

/* HERO */
.hero {
    background:
        linear-gradient(135deg, rgba(99,102,241,0.7), rgba(34,197,94,0.6)),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a') center/cover;
}

/* BUTTONS */
.btn-primary {
    background: linear-gradient(135deg, #6366f1, #22c55e);
    color: white;
    box-shadow: 0 6px 20px rgba(99,102,241,0.4);
}
.btn-primary:hover {
    transform: translateY(-2px);
}

/* CARDS */
.product, .cat-card, .testimonial {
    background: var(--card);
    border: 1px solid #374151;
    transition: all .25s ease;
}

.product:hover, .cat-card:hover {
    transform: translateY(-6px) scale(1.02);
    box-shadow: 0 20px 40px rgba(0,0,0,0.5);
}

/* PRODUCT IMAGE ZOOM */
.product img {
    transition: transform .3s ease;
}
.product:hover img {
    transform: scale(1.08);
}

/* ADD BUTTON */
.add-btn {
    background: linear-gradient(135deg, #6366f1, #22c55e);
}

/* DEAL SECTION */
.deal {
    background: linear-gradient(135deg, #111827, #1f2937);
}

/* TIMER */
.time-box {
    background: linear-gradient(135deg, #6366f1, #22c55e);
}

/* NEWSLETTER */
.newsletter {
    background: linear-gradient(135deg, #6366f1, #22c55e);
}

/* FOOTER */
footer {
    border-top: 1px solid #374151;
}
</style>

<!-- ✅ ADD SMOOTH ANIMATIONS -->
<style>
* {
    transition: background 0.3s ease, color 0.3s ease;
}

/* FADE IN */
.product, .cat-card {
    animation: fadeIn 0.6s ease forwards;
}
@keyframes fadeIn {
    from {opacity:0; transform:translateY(10px);}
    to {opacity:1; transform:translateY(0);}
}
</style>

<!-- ✅ OPTIONAL: GLASS EFFECT FOR CARDS -->
<style>
.product, .cat-card {
    backdrop-filter: blur(10px);
    background: rgba(31, 41, 55, 0.7);
}
</style>
