<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Vibrant Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg-gradient: linear-gradient(145deg, #FFF9F0 0%, #FFFFFF 100%);
            --surface: rgba(255, 255, 255, 0.92);
            --primary-dark: #1A2A3A;
            --vibrant-accent: #FF6B4A;
            --vibrant-glow: #FF9068;
            --electric-blue: #2A6DFF;
            --electric-glow: #5B8CFF;
            --mint: #00C9A7;
            --soft-lavender: #E4E1FF;
            --gold: #FFB347;
            --muted-text: #5A6874;
            --card-shadow: 0 20px 35px -12px rgba(0, 0, 0, 0.08), 0 0 0 1px rgba(0, 0, 0, 0.02);
            --hover-lift: translateY(-6px);
            --radius-xl: 28px;
            --radius-lg: 20px;
            --radius-md: 16px;
        }

        body {
            background: var(--bg-gradient);
            font-family: 'Inter', sans-serif;
            color: var(--primary-dark);
            line-height: 1.5;
            overflow-x: hidden;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Glassmorphic Header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            backdrop-filter: blur(16px);
            background: rgba(255, 248, 240, 0.85);
            border-bottom: 1px solid rgba(255, 107, 74, 0.2);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.02);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 16px 0;
        }

        .brand {
            font-family: 'Space Grotesk', sans-serif;
            font-weight: 700;
            font-size: 1.8rem;
            background: linear-gradient(135deg, #1A2A3A 0%, var(--vibrant-accent) 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            letter-spacing: -0.02em;
        }

        .brand span {
            background: linear-gradient(135deg, var(--vibrant-accent), var(--electric-blue));
            background-clip: text;
            -webkit-background-clip: text;
        }

        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav li a {
            padding: 8px 18px;
            border-radius: 40px;
            font-weight: 500;
            transition: all 0.2s ease;
            color: var(--primary-dark);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        nav.main-nav li a:hover {
            background: var(--vibrant-accent);
            color: white;
            transform: scale(1.02);
            box-shadow: 0 8px 16px rgba(255, 107, 74, 0.25);
        }

        .search {
            background: white;
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.02);
            border: 1px solid rgba(0, 0, 0, 0.05);
            transition: all 0.2s;
        }

        .search:focus-within {
            border-color: var(--vibrant-accent);
            box-shadow: 0 4px 14px rgba(255, 107, 74, 0.15);
        }

        .search input {
            border: none;
            background: transparent;
            outline: none;
            font-size: 0.9rem;
            width: 200px;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.3rem;
            cursor: pointer;
            color: var(--primary-dark);
            transition: 0.2s;
            padding: 8px;
            border-radius: 50%;
        }

        .icon-btn:hover {
            background: var(--soft-lavender);
            color: var(--vibrant-accent);
            transform: translateY(-2px);
        }

        .cart {
            position: relative;
            font-size: 1.4rem;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -10px;
            background: var(--vibrant-accent);
            color: white;
            font-size: 0.7rem;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 8px rgba(255, 107, 74, 0.5);
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
        }

        /* Hero section - modern gradient */
        .hero {
            background: linear-gradient(125deg, #FF6B4A 0%, #FF9068 35%, #2A6DFF 100%);
            border-radius: 0 0 48px 48px;
            margin-bottom: 30px;
            padding: 70px 20px;
            color: white;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero::before {
            content: "";
            position: absolute;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle at 20% 40%, rgba(255,255,255,0.2) 0%, rgba(0,0,0,0) 70%);
            top: -50%;
            left: -50%;
        }

        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.2rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            margin-bottom: 16px;
            text-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .hero p {
            font-size: 1.1rem;
            max-width: 650px;
            margin: 0 auto 28px;
            opacity: 0.95;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: all 0.25s;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .btn-primary {
            background: white;
            color: var(--vibrant-accent);
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.1);
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            background: #FFF5F0;
            box-shadow: 0 14px 26px rgba(0, 0, 0, 0.15);
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.18);
            backdrop-filter: blur(8px);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.4);
        }

        .btn-ghost:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-3px);
        }

        .section-title {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 2rem;
            margin-bottom: 10px;
            background: linear-gradient(135deg, #1A2A3A, var(--vibrant-accent));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            display: inline-block;
        }

        /* Category Cards - vibrant */
        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 22px;
            margin: 32px 0;
        }

        .cat-card {
            background: white;
            padding: 24px 12px;
            text-align: center;
            border-radius: var(--radius-lg);
            transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            cursor: pointer;
            box-shadow: var(--card-shadow);
            border: 1px solid rgba(0,0,0,0.02);
        }

        .cat-card:hover {
            transform: var(--hover-lift);
            background: linear-gradient(145deg, #ffffff, #FFF5F0);
            border-color: var(--vibrant-accent);
            box-shadow: 0 30px 40px -20px rgba(255, 107, 74, 0.3);
        }

        .cat-card .icon {
            font-size: 2.6rem;
            background: linear-gradient(135deg, var(--vibrant-accent), var(--electric-blue));
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            margin-bottom: 12px;
        }

        /* Products Grid */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
            margin-top: 20px;
        }

        .product {
            background: white;
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: var(--card-shadow);
            position: relative;
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: 0 28px 38px -16px rgba(0, 0, 0, 0.2);
        }

        .product img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.4s;
        }

        .product:hover img {
            transform: scale(1.03);
        }

        .product-body {
            padding: 16px;
        }

        .price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--vibrant-accent);
        }

        .old-price {
            text-decoration: line-through;
            color: var(--muted-text);
            font-size: 0.8rem;
            margin-left: 6px;
        }

        .rating {
            color: var(--gold);
            font-weight: 500;
        }

        .add-btn {
            background: linear-gradient(95deg, var(--vibrant-accent), var(--electric-blue));
            border: none;
            color: white;
            padding: 10px;
            border-radius: 40px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.2s;
            width: 100%;
        }

        .add-btn:hover {
            filter: brightness(1.05);
            transform: scale(0.98);
        }

        /* Deal section */
        .deal {
            display: flex;
            background: linear-gradient(125deg, #1A2A3A 0%, #2C3E50 100%);
            border-radius: 40px;
            overflow: hidden;
            color: white;
            margin: 30px 0;
        }

        .deal-img {
            width: 45%;
            object-fit: cover;
        }

        .timer {
            display: flex;
            gap: 14px;
            margin: 20px 0;
        }

        .time-box {
            background: rgba(255,255,255,0.12);
            backdrop-filter: blur(8px);
            padding: 12px 16px;
            border-radius: 20px;
            text-align: center;
            font-weight: 700;
            font-size: 1.4rem;
            min-width: 70px;
        }

        /* Testimonials */
        .testimonials {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding: 20px 0;
        }

        .testimonial {
            background: white;
            border-radius: 28px;
            padding: 24px;
            min-width: 320px;
            box-shadow: var(--card-shadow);
            border: 1px solid rgba(0,0,0,0.03);
        }

        /* Newsletter */
        .newsletter {
            background: linear-gradient(125deg, var(--electric-blue), var(--mint));
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            color: white;
        }

        .newsletter input {
            border: none;
            padding: 14px 22px;
            border-radius: 60px;
            width: 300px;
            margin-right: 12px;
            outline: none;
            font-size: 1rem;
        }

        footer {
            background: #1A2A3A;
            color: #CBD5E1;
            border-radius: 32px 32px 0 0;
            margin-top: 60px;
            padding: 48px 0 24px;
        }

        @media (max-width: 1024px) {
            .categories { grid-template-columns: repeat(3,1fr); }
            .products { grid-template-columns: repeat(2,1fr); }
        }
        @media (max-width: 768px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .search { min-width: 160px; }
            .hero h1 { font-size: 2rem; }
            .products { grid-template-columns: 1fr; }
            .categories { grid-template-columns: repeat(2,1fr); }
            .deal { flex-direction: column; }
            .deal-img { width: 100%; height: 240px; }
        }
        @media (max-width: 550px) {
            .categories { grid-template-columns: 1fr; }
            .newsletter input { width: 100%; margin-bottom: 12px; }
        }
        .badge {
            position: absolute;
            top: 12px;
            left: 12px;
            background: var(--vibrant-accent);
            color: white;
            padding: 5px 12px;
            border-radius: 30px;
            font-size: 0.7rem;
            font-weight: bold;
            z-index: 2;
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; gap: 18px; align-items: center;">
            <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
            <a class="brand" href="#">Nexus<span>Shop</span></a>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                <li><a href="#" id="catMenuBtn"><i class="fas fa-compass"></i> Explore</a></li>
                <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                <li><a href="#"><i class="fas fa-gem"></i> Premium</a></li>
            </ul>
        </nav>
        <div style="display: flex; align-items: center; gap: 16px;">
            <div class="search">
                <input type="text" id="searchInput" placeholder="Search 🔍">
                <button class="icon-btn" id="searchBtn"><i class="fas fa-search"></i></button>
            </div>
            <div class="header-actions" style="display: flex; gap: 12px;">
                <button class="icon-btn"><i class="far fa-heart"></i></button>
                <a class="cart" href="#" id="cartBtn">
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </a>
            </div>
        </div>
    </div>
    <div id="mobileMenu" style="display: none; background: white; border-top: 1px solid #eee; padding: 16px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
            <li><a href="#">Home</a></li><li><a href="#">Categories</a></li><li><a href="#deals">Deals</a></li>
        </ul>
    </div>
</header>

<main>
    <section class="hero">
        <div class="container">
            <h1>Unlock Vibrant Styles 🌟</h1>
            <p>Up to 40% off on trending drops — fresh colors, bold deals, free shipping over $50.</p>
            <div>
                <button class="btn btn-primary" id="shopNow">Shop Collection <i class="fas fa-arrow-right"></i></button>
                <button class="btn btn-ghost" id="exploreDeals">Flash Sale 🔥</button>
            </div>
        </div>
    </section>

    <section class="container">
        <div style="text-align: center;">
            <h2 class="section-title">Shop by Category</h2>
            <p style="color: var(--muted-text);">vibrant picks for every vibe</p>
        </div>
        <div class="categories" id="categoriesGrid"></div>
    </section>

    <section class="container">
        <div style="text-align: center;">
            <h2 class="section-title">✨ Trending Now ✨</h2>
            <p style="color: var(--muted-text);">most loved by the community</p>
        </div>
        <div class="products" id="productsGrid"></div>
    </section>

    <section id="deals" class="container">
        <div style="margin: 30px 0 20px;">
            <h2 class="section-title">⚡ Flash Deal ⚡</h2>
        </div>
        <div class="deal">
            <img class="deal-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook M2">
            <div class="content" style="padding: 36px;">
                <h2 style="font-size: 2rem;">MacBook Air M2</h2>
                <p>Next-gen power, all‑day battery, now in stunning colors.</p>
                <div class="timer">
                    <div class="time-box"><span id="dealDays">0</span><div style="font-size: 0.7rem;">Days</div></div>
                    <div class="time-box"><span id="dealHours">00</span><div>Hrs</div></div>
                    <div class="time-box"><span id="dealMinutes">00</span><div>Min</div></div>
                    <div class="time-box"><span id="dealSeconds">00</span><div>Sec</div></div>
                </div>
                <div style="display: flex; gap: 16px; align-items: baseline;">
                    <span style="font-size: 2rem; font-weight: 800;">$999</span>
                    <span style="text-decoration: line-through;">$1,299</span>
                    <span style="background: var(--vibrant-accent); padding: 6px 16px; border-radius: 60px;">-23%</span>
                </div>
                <button id="buyDeal" class="btn btn-primary" style="background: white; color: #1A2A3A; margin-top: 22px;">Grab Deal <i class="fas fa-zap"></i></button>
            </div>
        </div>
    </section>

    <section class="container">
        <div style="text-align: center;"><h2 class="section-title">💬 Real Voices</h2><p>what shoppers say</p></div>
        <div class="testimonials" id="testimonialsList"></div>
    </section>

    <section class="container">
        <div class="newsletter">
            <h3 style="font-size: 1.8rem;">Join the Vibe Club 🎁</h3>
            <p>Get early access & exclusive deals</p>
            <form id="newsletterForm">
                <input type="email" id="newsletterEmail" placeholder="your.best@email.com" required>
                <button class="btn btn-primary" style="background: white; color: var(--electric-blue);" id="subscribeBtn">Subscribe</button>
                <div id="newsletterMsg" style="margin-top: 12px; display: none;"></div>
            </form>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; flex-wrap: wrap; justify-content: space-between; gap: 30px;">
        <div><h3 style="color: white;">NexusShop</h3><p style="max-width: 260px;">Elevate your everyday with curated modern essentials.</p></div>
        <div><h4>Explore</h4><p>New Arrivals<br>Best Sellers<br>Gift Cards</p></div>
        <div><h4>Support</h4><p>FAQ<br>Returns<br>Contact</p></div>
    </div>
    <div style="text-align: center; margin-top: 40px;">© <span id="year"></span> NexusShop — vibrant commerce</div>
</footer>

<script>
    // ---- Enhanced Data ----
    const CATEGORIES = [
        { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'fashion', name: 'Streetwear', icon: 'fa-shirt' },
        { id: 'audio', name: 'Audio', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Kicks', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-clock' }
    ];

    const PRODUCTS = [
        { id: 1, title: 'iPhone 15 Pro', price: 1099, oldPrice: 1199, rating: 5, reviews: 342, badge: '🔥 Hot', img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
        { id: 2, title: 'MacBook Pro M3', price: 1899, rating: 5, reviews: 211, badge: 'New', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
        { id: 3, title: 'Sony XM5', price: 398, oldPrice: 499, rating: 5, reviews: 688, badge: '-20%', img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 4, title: 'Nike Dunk Low', price: 115, rating: 4, reviews: 129, img: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80', category: 'footwear' },
        { id: 5, title: 'Samsung Galaxy Watch6', price: 299, oldPrice: 369, rating: 4, reviews: 98, badge: 'Smart', img: 'https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 6, title: 'Urban Backpack Pro', price: 79, rating: 4, reviews: 312, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
        { id: 7, title: 'Vintage Denim Jacket', price: 129, oldPrice: 189, rating: 5, reviews: 64, badge: 'Limited', img: 'https://images.unsplash.com/photo-1521223895410-c92f5b4c86f7?auto=format&fit=crop&w=600&q=80', category: 'fashion' },
        { id: 8, title: 'AirPods Pro 2', price: 239, rating: 5, reviews: 445, img: 'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434?auto=format&fit=crop&w=600&q=80', category: 'audio' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');
    const searchInput = document.getElementById('searchInput');
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');

    function renderCategories() {
        categoriesGrid.innerHTML = '';
        CATEGORIES.forEach(cat => {
            const card = document.createElement('div');
            card.className = 'cat-card';
            card.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div style="font-size:12px;color:var(--muted-text)">shop now →</div>`;
            card.addEventListener('click', () => {
                searchInput.value = cat.name;
                filterProducts(cat.name);
                document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth', block: 'start' });
            });
            categoriesGrid.appendChild(card);
        });
    }

    function renderProducts(list) {
        productsGrid.innerHTML = '';
        list.forEach(p => {
            const productDiv = document.createElement('div');
            productDiv.className = 'product';
            productDiv.innerHTML = `
                ${p.badge ? `<div class="badge">${p.badge}</div>` : ''}
                <img src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-body">
                    <h3 style="font-size:1.1rem;">${escapeHtml(p.title)}</h3>
                    <div class="price-row" style="display:flex; justify-content: space-between; margin: 8px 0;">
                        <div><span class="price">$${p.price}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ''}</div>
                        <div class="rating">${'★'.repeat(Math.floor(p.rating))}${p.rating % 1 !== 0 ? '½' : ''} (${p.reviews})</div>
                    </div>
                    <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-shopping"></i> Add to Cart</button>
                </div>
            `;
            productsGrid.appendChild(productDiv);
        });
        document.querySelectorAll('.add-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
            });
        });
    }

    function addToCartById(id) {
        const product = PRODUCTS.find(p => p.id === id);
        if (!product) return;
        cartCount++;
        cartCountEl.textContent = cartCount;
        const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
        if (btn) {
            const originalHtml = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added!';
            btn.disabled = true;
            setTimeout(() => { btn.innerHTML = originalHtml; btn.disabled = false; }, 1000);
        }
        showToast(`✨ ${product.title} added`);
    }

    function showToast(msg) {
        let toast = document.getElementById('customToast');
        if (!toast) {
            toast = document.createElement('div');
            toast.id = 'customToast';
            toast.style.position = 'fixed';
            toast.style.bottom = '20px';
            toast.style.right = '20px';
            toast.style.background = '#1A2A3A';
            toast.style.color = 'white';
            toast.style.padding = '12px 24px';
            toast.style.borderRadius = '60px';
            toast.style.zIndex = '999';
            toast.style.fontWeight = '500';
            toast.style.backdropFilter = 'blur(8px)';
            toast.style.boxShadow = '0 8px 20px rgba(0,0,0,0.2)';
            document.body.appendChild(toast);
        }
        toast.textContent = msg;
        toast.style.display = 'block';
        setTimeout(() => toast.style.display = 'none', 2000);
    }

    function filterProducts(query) {
        const q = query.trim().toLowerCase();
        if (!q) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
        renderProducts(filtered.length ? filtered : PRODUCTS);
        if (!filtered.length) productsGrid.innerHTML = '<div style="grid-column:1/-1; text-align:center;">✨ no matches, browse our bestsellers ✨</div>';
    }

    function updateCartCountUI() { cartCountEl.textContent = cartCount; }

    // testimonial injection
    const testimonialsData = [
        { name: 'Riya Kapoor', rating: 5, text: 'Obsessed with the vibrant design! Super fast shipping.', avatar: 'https://randomuser.me/api/portraits/women/68.jpg' },
        { name: 'Alex Chen', rating: 5, text: 'Clean UI and amazing deals. Got my sneakers in 2 days!', avatar: 'https://randomuser.me/api/portraits/men/32.jpg' },
        { name: 'Sophia Williams', rating: 4, text: 'Great product quality, customer service is top tier.', avatar: 'https://randomuser.me/api/portraits/women/44.jpg' }
    ];
    const testiContainer = document.getElementById('testimonialsList');
    function renderTestimonials() {
        testiContainer.innerHTML = '';
        testimonialsData.forEach(t => {
            const div = document.createElement('div');
            div.className = 'testimonial';
            div.innerHTML = `<div class="rating">${'★'.repeat(t.rating)}</div><p style="margin: 12px 0;">“${t.text}”</p><div style="display:flex; gap:12px; align-items:center;"><img src="${t.avatar}" style="width:40px;height:40px;border-radius:50%; object-fit:cover;"><div><strong>${t.name}</strong><div class="muted-text">verified</div></div></div>`;
            testiContainer.appendChild(div);
        });
    }

    // deal countdown
    function setupTimer() {
        const target = new Date();
        target.setDate(target.getDate() + 1);
        target.setHours(target.getHours() + 8);
        function tick() {
            const diff = target - new Date();
            if (diff <= 0) return;
            const days = Math.floor(diff / (86400000));
            const hours = Math.floor((diff % 86400000) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2,'0');
        }
        tick(); setInterval(tick, 1000);
    }

    function escapeHtml(str) { return String(str).replace(/[&<>]/g, m => ({ '&':'&amp;', '<':'&lt;', '>':'&gt;' }[m])); }

    // Event listeners
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(searchInput.value));
    searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(e.target.value); });
    document.getElementById('mobileToggle').addEventListener('click', () => { const m = document.getElementById('mobileMenu'); m.style.display = m.style.display === 'none' ? 'block' : 'none'; });
    document.getElementById('shopNow').addEventListener('click', () => document.getElementById('productsGrid').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; updateCartCountUI(); showToast('🔥 Flash Deal added to cart!'); });
    document.getElementById('newsletterForm').addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsletterEmail').value;
        const msgDiv = document.getElementById('newsletterMsg');
        if (!email.includes('@')) { msgDiv.style.display = 'block'; msgDiv.innerHTML = '✧ valid email needed ✧'; msgDiv.style.color = '#FFD966'; setTimeout(()=> msgDiv.style.display='none',2000); return; }
        msgDiv.style.display = 'block'; msgDiv.innerHTML = '🎉 You’re in! exclusive deals ahead.'; msgDiv.style.color = '#E0F2FE';
        setTimeout(()=> msgDiv.style.display='none',2500);
        document.getElementById('newsletterEmail').value = '';
