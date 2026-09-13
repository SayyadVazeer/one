<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop · modern e‑commerce UI</title>

    <!-- Google Fonts & Font Awesome -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

    <style>
        /* ========== ROOT VARIABLES ========== */
        :root {
            --bg: #fafaf8;
            --bg-card: #ffffff;
            --primary: #1a1a2e;
            --primary-light: #2d2d44;
            --accent: #d4a373;
            --accent-soft: #f0e4d5;
            --text-main: #1e1e2a;
            --text-soft: #5e5e6e;
            --border-light: #eaeaea;
            --shadow-sm: 0 4px 12px rgba(0, 0, 0, 0.03);
            --shadow-md: 0 12px 28px rgba(0, 0, 0, 0.05);
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

        body {
            font-family: 'Inter', sans-serif;
            background-color: var(--bg);
            color: var(--text-main);
            line-height: 1.5;
            padding: 2rem 1.5rem 4rem;
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
            gap: 0.75rem;
        }

        .brand-icon {
            background: var(--primary);
            color: var(--accent);
            width: 48px;
            height: 48px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.6rem;
            box-shadow: var(--shadow-sm);
        }

        .brand-text h1 {
            font-size: 1.9rem;
            font-weight: 800;
            letter-spacing: -0.03em;
            color: var(--primary);
            line-height: 1.1;
        }

        .brand-text .sub {
            font-size: 0.8rem;
            font-weight: 500;
            color: var(--text-soft);
            letter-spacing: 0.3px;
            text-transform: uppercase;
            margin-top: 2px;
        }

        .header-actions {
            display: flex;
            align-items: center;
            gap: 1.2rem;
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
            font-size: 1.2rem;
            color: var(--primary);
            cursor: default;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }

        .icon-btn:hover {
            border-color: var(--accent);
            color: var(--accent);
        }

        .cart-btn {
            display: flex;
            align-items: center;
            gap: 0.6rem;
            background: var(--primary);
            color: white;
            padding: 0.7rem 1.4rem;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.95rem;
            letter-spacing: 0.2px;
            box-shadow: var(--shadow-sm);
            cursor: default;
            transition: var(--transition);
        }

        .cart-btn i {
            font-size: 1.1rem;
        }

        .cart-btn .badge {
            background: var(--accent);
            color: var(--primary);
            font-weight: 700;
            font-size: 0.75rem;
            padding: 0.2rem 0.55rem;
            border-radius: 30px;
            margin-left: 0.2rem;
        }

        .cart-btn:hover {
            background: var(--primary-light);
        }

        /* ========== HERO / FILTER BAR ========== */
        .filter-section {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 2rem;
            background: transparent;
        }

        .filter-title {
            font-size: 1.5rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            color: var(--primary);
        }

        .filter-title i {
            color: var(--accent);
            margin-right: 8px;
        }

        .filter-chips {
            display: flex;
            flex-wrap: wrap;
            gap: 0.6rem;
        }

        .chip {
            background: var(--bg-card);
            border: 1px solid var(--border-light);
            padding: 0.5rem 1.2rem;
            border-radius: 30px;
            font-size: 0.85rem;
            font-weight: 500;
            color: var(--text-soft);
            transition: var(--transition);
            cursor: default;
        }

        .chip.active {
            background: var(--primary);
            border-color: var(--primary);
            color: white;
            font-weight: 600;
        }

        .chip i {
            margin-right: 6px;
            font-size: 0.8rem;
        }

        .chip:hover {
            border-color: var(--accent);
            color: var(--primary);
        }

        /* ========== PRODUCT GRID ========== */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 1.8rem;
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
            border: 1px solid rgba(255, 255, 255, 0.6);
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
            border-color: var(--accent-soft);
        }

        .card-image {
            background: #f2f0eb;
            padding: 2rem 1rem 1.5rem;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            min-height: 180px;
        }

        .card-image i {
            font-size: 4.5rem;
            color: var(--primary);
            opacity: 0.85;
            transition: var(--transition);
        }

        .product-card:hover .card-image i {
            color: var(--accent);
            transform: scale(1.03);
        }

        .wishlist-icon {
            position: absolute;
            top: 12px;
            right: 12px;
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(2px);
            width: 34px;
            height: 34px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--text-soft);
            font-size: 0.95rem;
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
            cursor: default;
        }

        .wishlist-icon:hover {
            color: #c44536;
            background: white;
        }

        .card-details {
            padding: 1.2rem 1.2rem 1.5rem;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
        }

        .product-category {
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-weight: 600;
            color: var(--text-soft);
            margin-bottom: 0.3rem;
        }

        .product-name {
            font-weight: 700;
            font-size: 1.1rem;
            color: var(--primary);
            margin-bottom: 0.4rem;
            line-height: 1.3;
        }

        .product-price {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary);
            margin-top: 0.2rem;
            margin-bottom: 1.2rem;
            letter-spacing: -0.02em;
        }

        .product-price span {
            font-size: 0.8rem;
            font-weight: 500;
            color: var(--text-soft);
            text-decoration: line-through;
            margin-left: 8px;
        }

        .add-to-cart {
            margin-top: auto;
            background: transparent;
            border: 1.5px solid var(--primary);
            color: var(--primary);
            font-weight: 600;
            font-size: 0.85rem;
            padding: 0.7rem 1rem;
            border-radius: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.6rem;
            transition: var(--transition);
            cursor: default;
            width: 100%;
        }

        .add-to-cart i {
            font-size: 0.9rem;
        }

        .add-to-cart:hover {
            background: var(--primary);
            color: white;
            border-color: var(--primary);
        }

        /* ========== EXTRA SECTION (value props) ========== */
        .value-props {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            margin-top: 2rem;
            border-top: 1px solid var(--border-light);
            padding-top: 2.5rem;
        }

        .prop-item {
            display: flex;
            align-items: center;
            gap: 1rem;
            background: var(--bg-card);
            padding: 1.2rem 1.4rem;
            border-radius: var(--radius-md);
            box-shadow: var(--shadow-sm);
        }

        .prop-item i {
            font-size: 1.8rem;
            color: var(--accent);
            width: 2.2rem;
            text-align: center;
        }

        .prop-text h4 {
            font-weight: 700;
            font-size: 0.95rem;
            color: var(--primary);
        }

        .prop-text p {
            font-size: 0.8rem;
            color: var(--text-soft);
            margin-top: 2px;
        }

        /* ========== FOOTNOTE ========== */
        .footnote {
            text-align: center;
            margin-top: 3.5rem;
            font-size: 0.8rem;
            color: var(--text-soft);
            border-top: 1px solid var(--border-light);
            padding-top: 2rem;
        }

        .footnote i {
            color: var(--accent);
            margin: 0 4px;
        }

        /* ========== RESPONSIVE TOUCHES ========== */
        @media (max-width: 600px) {
            body {
                padding: 1.5rem 1rem 3rem;
            }

            .shop-header {
                flex-direction: column;
                align-items: flex-start;
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
            }

            .chip {
                white-space: nowrap;
            }

            .brand-text h1 {
                font-size: 1.6rem;
            }

            .product-grid {
                gap: 1.2rem;
            }
        }

        /* small utility */
        .muted {
            color: var(--text-soft);
            font-weight: 400;
        }

        /* card image variations (different icon colors for demo) */
        .card-image[data-tone="warm"] i { color: #b5835a; }
        .card-image[data-tone="cool"] i { color: #4a6fa5; }
        .card-image[data-tone="neutral"] i { color: #2f2f3a; }
        .card-image[data-tone="accent"] i { color: #c28b5e; }
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
<!-- end page-wrapper -->

</body>
</html>
