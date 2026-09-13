<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · dark mode</title>

    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== DARK ROOT VARIABLES ========== */
        :root {
            --bg: #0e0e12;
            --bg-elevated: #16161c;
            --bg-card: #1c1c24;
            --bg-card-hover: #22222c;
            --primary: #f0ede8;
            --primary-light: #d4d0c8;
            --accent: #d4a373;
            --accent-soft: #2a2420;
            --text-main: #f0ede8;
            --text-soft: #8a8a96;
            --text-muted: #5c5c68;
            --border-light: #2a2a34;
            --border-subtle: #22222a;
            --shadow-sm: 0 4px 14px rgba(0, 0, 0, 0.3);
            --shadow-md: 0 14px 34px rgba(0, 0, 0, 0.45);
            --shadow-glow: 0 0 0 1px rgba(212, 163, 115, 0.08);
            --radius-md: 16px;
            --radius-lg: 24px;
            --radius-sm: 10px;
            --transition: 0.2s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg);
            color: var(--text-main);
            line-height: 1.5;
            padding: 2rem 1.5rem 4rem;
            -webkit-font-smoothing: antialiased;
            background-image: radial-gradient(circle at 15% 0%, rgba(212, 163, 115, 0.06) 0%, transparent 40%),
                              radial-gradient(circle at 85% 100%, rgba(212, 163, 115, 0.04) 0%, transparent 40%);
            background-attachment: fixed;
        }

        .page-wrapper {
            max-width: 1320px;
            margin: 0 auto;
        }

        /* ========== HEADER ========== */
        .shop-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 1.5rem;
            margin-bottom: 2.5rem;
        }

        .brand-area {
            display: flex;
            align-items: center;
            gap: 0.85rem;
        }

        .brand-icon {
            background: linear-gradient(145deg, #24242e, #1a1a22);
            color: var(--accent);
            width: 50px;
            height: 50px;
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.6rem;
            box-shadow: var(--shadow-sm), inset 0 1px 0 rgba(255, 255, 255, 0.04);
            border: 1px solid var(--border-light);
        }

        .brand-text h1 {
            font-size: 1.9rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: var(--text-main);
            line-height: 1.1;
            background: linear-gradient(135deg, #ffffff 30%, #d4a373 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .brand-text .sub {
            font-size: 0.75rem;
            font-weight: 500;
            color: var(--text-muted);
            letter-spacing: 0.8px;
            text-transform: uppercase;
            margin-top: 3px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .icon-btn {
            background: var(--bg-card);
            border: 1px solid var(--border-light);
            width: 46px;
            height: 46px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.1rem;
            color: var(--text-soft);
            cursor: default;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }

        .icon-btn:hover {
            border-color: var(--accent);
            color: var(--accent);
            background: var(--bg-card-hover);
            transform: translateY(-1px);
        }

        .cart-btn {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            background: linear-gradient(135deg, #d4a373, #c28b5e);
            color: #1a1a1a;
            padding: 0.75rem 1.5rem;
            border-radius: 40px;
            font-weight: 700;
            font-size: 0.9rem;
            letter-spacing: 0.2px;
            box-shadow: 0 6px 20px rgba(212, 163, 115, 0.25);
            cursor: default;
            transition: var(--transition);
        }

        .cart-btn i {
            font-size: 1.05rem;
        }

        .cart-btn .badge {
            background: rgba(0, 0, 0, 0.25);
            color: #fff;
            font-weight: 700;
            font-size: 0.72rem;
            padding: 0.18rem 0.55rem;
            border-radius: 30px;
            margin-left: 0.15rem;
        }

        .cart-btn:hover {
            transform: translateY(-1px);
            box-shadow: 0 8px 26px rgba(212, 163, 115, 0.35);
        }

        /* ========== FILTER / TITLE ========== */
        .filter-section {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 2rem;
        }

        .filter-title {
            font-size: 1.5rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            color: var(--text-main);
        }

        .filter-title i {
            color: var(--accent);
            margin-right: 10px;
            font-size: 1.2rem;
        }

        .filter-chips {
            display: flex;
            flex-wrap: wrap;
            gap: 0.55rem;
        }

        .chip {
            background: var(--bg-card);
            border: 1px solid var(--border-light);
            padding: 0.5rem 1.15rem;
            border-radius: 30px;
            font-size: 0.82rem;
            font-weight: 500;
            color: var(--text-soft);
            transition: var(--transition);
            cursor: default;
            white-space: nowrap;
        }

        .chip.active {
            background: linear-gradient(135deg, #d4a373, #c28b5e);
            border-color: transparent;
            color: #1a1a1a;
            font-weight: 700;
            box-shadow: 0 4px 16px rgba(212, 163, 115, 0.25);
        }

        .chip i {
            margin-right: 6px;
            font-size: 0.75rem;
        }

        .chip:hover:not(.active) {
            border-color: var(--accent);
            color: var(--accent);
            background: var(--bg-card-hover);
        }

        /* ========== PRODUCT GRID ========== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 1.6rem;
            margin-bottom: 3rem;
        }

        .product-card {
            background: var(--bg-card);
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            display: flex;
            flex-direction: column;
            overflow: hidden;
            border: 1px solid var(--border-subtle);
            position: relative;
        }

        .product-card::before {
            content: '';
            position: absolute;
            inset: 0;
            border-radius: var(--radius-lg);
            padding: 1px;
            background: linear-gradient(145deg, rgba(212, 163, 115, 0.15), transparent 40%);
            -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
            -webkit-mask-composite: xor;
            mask-composite: exclude;
            pointer-events: none;
            opacity: 0;
            transition: var(--transition);
        }

        .product-card:hover {
            transform: translateY(-6px);
            background: var(--bg-card-hover);
            box-shadow: var(--shadow-md);
            border-color: rgba(212, 163, 115, 0.25);
        }

        .product-card:hover::before {
            opacity: 1;
        }

        .card-image {
            background: linear-gradient(145deg, #22222c, #191920);
            padding: 2rem 1rem 1.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            min-height: 180px;
            border-bottom: 1px solid var(--border-subtle);
        }

        .card-image i {
            font-size: 4.2rem;
            color: var(--text-soft);
            opacity: 0.9;
            transition: var(--transition);
        }

        .product-card:hover .card-image i {
            color: var(--accent);
            transform: scale(1.04);
            opacity: 1;
        }

        /* icon tone variants - dark mode soft colors */
        .card-image[data-tone="warm"] i { color: #c99a6b; }
        .card-image[data-tone="cool"] i { color: #7a9bc4; }
        .card-image[data-tone="neutral"] i { color: #a0a0b0; }
        .card-image[data-tone="accent"] i { color: #d4a373; }

        .wishlist-icon {
            position: absolute;
            top: 12px;
            right: 12px;
            background: rgba(28, 28, 36, 0.75);
            backdrop-filter: blur(6px);
            -webkit-backdrop-filter: blur(6px);
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-soft);
            font-size: 0.95rem;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            cursor: default;
            border: 1px solid rgba(255, 255, 255, 0.05);
        }

        .wishlist-icon:hover {
            color: #e86a5a;
            background: rgba(40, 40, 50, 0.95);
            transform: scale(1.05);
        }

        .card-details {
            padding: 1.2rem 1.2rem 1.4rem;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .product-category {
            font-size: 0.68rem;
            text-transform: uppercase;
            letter-spacing: 0.8px;
            font-weight: 600;
            color: var(--accent);
            margin-bottom: 0.35rem;
            opacity: 0.85;
        }

        .product-name {
            font-weight: 700;
            font-size: 1.05rem;
            color: var(--text-main);
            margin-bottom: 0.4rem;
            line-height: 1.35;
            letter-spacing: -0.01em;
        }

        .product-price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--text-main);
            margin-top: 0.2rem;
            margin-bottom: 1.1rem;
            letter-spacing: -0.02em;
        }

        .product-price span {
            font-size: 0.78rem;
            font-weight: 500;
            color: var(--text-muted);
            text-decoration: line-through;
            margin-left: 8px;
        }

        .add-to-cart {
            margin-top: auto;
            background: transparent;
            border: 1.5px solid var(--border-light);
            color: var(--text-soft);
            font-weight: 600;
            font-size: 0.83rem;
            padding: 0.7rem 1rem;
            border-radius: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.55rem;
            transition: var(--transition);
            cursor: default;
            width: 100%;
        }

        .add-to-cart i {
            font-size: 0.85rem;
        }

        .add-to-cart:hover {
            background: linear-gradient(135deg, #d4a373, #c28b5e);
            color: #1a1a1a;
            border-color: transparent;
            font-weight: 700;
            box-shadow: 0 4px 16px rgba(212, 163, 115, 0.2);
        }

        /* ========== VALUE PROPS ========== */
        .value-props {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.4rem;
            margin-top: 2rem;
            border-top: 1px solid var(--border-subtle);
            padding-top: 2.5rem;
        }

        .prop-item {
            display: flex;
            align-items: center;
            gap: 1rem;
            background: var(--bg-elevated);
            padding: 1.2rem 1.3rem;
            border-radius: var(--radius-md);
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-subtle);
            transition: var(--transition);
        }

        .prop-item:hover {
            border-color: rgba(212, 163, 115, 0.2);
            background: var(--bg-card);
        }

        .prop-item i {
            font-size: 1.6rem;
            color: var(--accent);
            width: 2.2rem;
            text-align: center;
        }

        .prop-text h4 {
            font-weight: 700;
            font-size: 0.92rem;
            color: var(--text-main);
            letter-spacing: -0.01em;
        }

        .prop-text p {
            font-size: 0.75rem;
            color: var(--text-soft);
            margin-top: 3px;
        }

        /* ========== FOOTNOTE ========== */
        .footnote {
            text-align: center;
            margin-top: 3.5rem;
            font-size: 0.78rem;
            color: var(--text-muted);
            border-top: 1px solid var(--border-subtle);
            padding-top: 2rem;
            letter-spacing: 0.3px;
        }

        .footnote i {
            color: var(--accent);
            margin: 0 6px;
            opacity: 0.7;
        }

        /* ========== RESPONSIVE ========== */
        @media (max-width: 640px) {
            body {
                padding: 1.5rem 1rem 3rem;
            }

            .shop-header {
                flex-direction: column;
                align-items: flex-start;
                gap: 1.2rem;
            }

            .header-actions {
                width: 100%;
                justify-content: space-between;
            }

            .filter-section {
                flex-direction: column;
                align-items: flex-start;
                gap: 1rem;
            }

            .filter-chips {
                width: 100%;
                overflow-x: auto;
                padding-bottom: 6px;
                flex-wrap: nowrap;
                -ms-overflow-style: none;
                scrollbar-width: none;
            }

            .filter-chips::-webkit-scrollbar {
                display: none;
            }

            .brand-text h1 {
                font-size: 1.6rem;
            }

            .product-grid {
                gap: 1.1rem;
            }

            .value-props {
                grid-template-columns: 1fr;
            }
        }

        /* selection & focus */
        ::selection {
            background: rgba(212, 163, 115, 0.3);
            color: #fff;
        }

        /* Custom scrollbar (dark) */
        ::-webkit-scrollbar {
            width: 10px;
            height: 10px;
        }

        ::-webkit-scrollbar-track {
            background: #14141a;
        }

        ::-webkit-scrollbar-thumb {
            background: #2e2e3a;
            border-radius: 10px;
            border: 2px solid #14141a;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: #d4a373;
        }
    </style>
</head>
<body>

<div class="page-wrapper">

    <!-- ========== HEADER ========== -->
    <header class="shop-header">
        <div class="brand-area">
            <div class="brand-icon">
                <i class="fas fa-cube"></i>
            </div>
            <div class="brand-text">
                <h1>NexusShop</h1>
                <div class="sub">curated modern goods</div>
            </div>
        </div>

        <div class="header-actions">
            <div class="icon-btn" aria-label="search">
                <i class="fas fa-search"></i>
            </div>
            <div class="icon-btn" aria-label="user">
                <i class="far fa-user"></i>
            </div>
            <div class="cart-btn">
                <i class="fas fa-bag-shopping"></i>
                <span>Cart</span>
                <span class="badge">3</span>
            </div>
        </div>
    </header>

    <!-- ========== FILTER / TITLE ========== -->
    <div class="filter-section">
        <div class="filter-title">
            <i class="fas fa-sparkles"></i> New arrivals
        </div>
        <div class="filter-chips">
            <div class="chip active"><i class="fas fa-th-large"></i>All</div>
            <div class="chip"><i class="fas fa-clock"></i>New</div>
            <div class="chip"><i class="fas fa-fire"></i>Popular</div>
            <div class="chip"><i class="fas fa-tag"></i>Sale</div>
            <div class="chip"><i class="fas fa-star"></i>Premium</div>
        </div>
    </div>

    <!-- ========== PRODUCT GRID ========== -->
    <div class="product-grid">

        <!-- Product 1 -->
        <div class="product-card">
            <div class="card-image" data-tone="warm">
                <i class="fas fa-headphones"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Audio</div>
                <div class="product-name">Studio Pro Wireless</div>
                <div class="product-price">$189 <span>$249</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="product-card">
            <div class="card-image" data-tone="cool">
                <i class="fas fa-laptop"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Computing</div>
                <div class="product-name">AeroBook 14"</div>
                <div class="product-price">$1,249 <span>$1,399</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="product-card">
            <div class="card-image" data-tone="neutral">
                <i class="fas fa-mobile-screen-button"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Mobile</div>
                <div class="product-name">Pulse 5G</div>
                <div class="product-price">$699 <span>$799</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="product-card">
            <div class="card-image" data-tone="accent">
                <i class="fas fa-camera-retro"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Photography</div>
                <div class="product-name">Mirrorless X100</div>
                <div class="product-price">$899 <span>$1,099</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 5 -->
        <div class="product-card">
            <div class="card-image" data-tone="warm">
                <i class="fas fa-watch-smart"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Wearables</div>
                <div class="product-name">Active Fit 2</div>
                <div class="product-price">$199 <span>$259</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 6 -->
        <div class="product-card">
            <div class="card-image" data-tone="cool">
                <i class="fas fa-gamepad"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Gaming</div>
                <div class="product-name">Nova Controller</div>
                <div class="product-price">$79 <span>$99</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 7 -->
        <div class="product-card">
            <div class="card-image" data-tone="neutral">
                <i class="fas fa-speaker"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Audio</div>
                <div class="product-name">SoundOrb Mini</div>
                <div class="product-price">$129 <span>$169</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

        <!-- Product 8 -->
        <div class="product-card">
            <div class="card-image" data-tone="accent">
                <i class="fas fa-keyboard"></i>
                <div class="wishlist-icon"><i class="far fa-heart"></i></div>
            </div>
            <div class="card-details">
                <div class="product-category">Accessories</div>
                <div class="product-name">MechType K3</div>
                <div class="product-price">$149 <span>$189</span></div>
                <div class="add-to-cart">
                    <i class="fas fa-plus"></i> Add to cart
                </div>
            </div>
        </div>

    </div>

    <!-- ========== VALUE PROPS ========== -->
    <div class="value-props">
        <div class="prop-item">
            <i class="fas fa-truck-fast"></i>
            <div class="prop-text">
                <h4>Free shipping</h4>
                <p>On orders over $75</p>
            </div>
        </div>
        <div class="prop-item">
            <i class="fas fa-rotate-left"></i>
            <div class="prop-text">
                <h4>30‑day returns</h4>
                <p>No questions asked</p>
            </div>
        </div>
        <div class="prop-item">
            <i class="fas fa-shield-halved"></i>
            <div class="prop-text">
                <h4>2‑year warranty</h4>
                <p>Guaranteed quality</p>
            </div>
        </div>
        <div class="prop-item">
            <i class="fas fa-headset"></i>
            <div class="prop-text">
                <h4>24/7 support</h4>
                <p>Always here to help</p>
            </div>
        </div>
    </div>

    <!-- ========== FOOTNOTE ========== -->
    <div class="footnote">
        <i class="fas fa-cube"></i> NexusShop — modern essentials <i class="fas fa-cube"></i>
    </div>

</div>

</body>
</html>
