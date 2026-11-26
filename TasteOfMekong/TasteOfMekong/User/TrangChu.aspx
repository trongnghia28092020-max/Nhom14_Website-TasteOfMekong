<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="TasteOfMekong.TrangChu" %>

<!DOCTYPE html>
<html lang="vi">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>TasteOfMekong - Kho Công Thức Ẩm Thực Miền Tây</title>
    
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.9/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet" />

    <style>
        :root {
            --color-terracotta: #B86B3D;       
            --color-terracotta-hover: #9E572D;
            --color-cream: #F8F1E7;            
            --color-cream-light: #FCF9F4;
            --color-green: #687B53;            
            --color-brown: #382E26;            
            --color-text-muted: #6E6259;
        }

        body {
            font-family: 'Be Vietnam Pro', sans-serif;
            background-color: #FFFFFF;
            color: var(--color-brown);
            overflow-x: hidden;
        }

        /* Navbar */
        .navbar-custom {
            background-color: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid rgba(184, 107, 61, 0.15);
            padding: 14px 0;
        }
        .brand-logo {
            font-weight: 800;
            font-size: 1.5rem;
            color: var(--color-terracotta) !important;
            letter-spacing: -0.5px;
        }
        .brand-logo span {
            color: var(--color-green);
        }
        .nav-link {
            color: var(--color-brown) !important;
            font-weight: 500;
            margin: 0 8px;
            transition: color 0.2s;
        }
        .nav-link:hover, .nav-link.active {
            color: var(--color-terracotta) !important;
        }

        /* Buttons */
        .btn-terracotta {
            background-color: var(--color-terracotta);
            color: #fff;
            border: none;
            border-radius: 50px;
            padding: 10px 24px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        .btn-terracotta:hover {
            background-color: var(--color-terracotta-hover);
            color: #fff;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(184, 107, 61, 0.25);
        }
        .btn-outline-terracotta {
            border: 2px solid var(--color-terracotta);
            color: var(--color-terracotta);
            border-radius: 50px;
            padding: 8px 22px;
            font-weight: 600;
            background: transparent;
            transition: all 0.3s ease;
        }
        .btn-outline-terracotta:hover {
            background-color: var(--color-terracotta);
            color: #fff;
        }

        /* Khung chứa ảnh mặc định (Placeholder để tự thêm hình) */
        .img-placeholder-box {
            background: linear-gradient(135deg, var(--color-cream) 0%, #EFE4D4 100%);
            border: 2px dashed rgba(184, 107, 61, 0.35);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            color: var(--color-terracotta);
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        .img-placeholder-box i {
            font-size: 2.2rem;
            opacity: 0.7;
            margin-bottom: 6px;
        }
        .img-placeholder-box span {
            font-size: 0.85rem;
            font-weight: 500;
            opacity: 0.85;
            padding: 0 12px;
        }
        .img-placeholder-box img {
            position: absolute;
            top: 0; left: 0;
            width: 100%; height: 100%;
            object-fit: cover;
        }

        /* 1. Hero / Giới thiệu TasteOfMekong */
        .hero-section {
            background: linear-gradient(180deg, var(--color-cream) 0%, #FFFFFF 100%);
            padding: 60px 0 50px;
        }
        .hero-badge {
            display: inline-block;
            background-color: rgba(104, 123, 83, 0.15);
            color: var(--color-green);
            font-weight: 700;
            font-size: 0.85rem;
            padding: 6px 16px;
            border-radius: 50px;
            margin-bottom: 16px;
        }
        .hero-title {
            font-size: 2.75rem;
            font-weight: 800;
            line-height: 1.25;
            color: var(--color-brown);
        }
        .hero-title span {
            color: var(--color-terracotta);
        }
        .search-bar-hero {
            background: #FFFFFF;
            padding: 8px;
            border-radius: 50px;
            box-shadow: 0 10px 30px rgba(56, 46, 38, 0.08);
            border: 1px solid rgba(184, 107, 61, 0.2);
            display: flex;
            align-items: center;
        }
        .search-bar-hero input {
            border: none;
            box-shadow: none !important;
            padding-left: 18px;
            font-size: 0.95rem;
        }
        .hero-img-frame {
            height: 400px;
            border-radius: 28px;
            box-shadow: 0 20px 40px rgba(56, 46, 38, 0.08);
        }

        /* Section Titles */
        .section-padding {
            padding: 65px 0;
        }
        .section-subtitle {
            color: var(--color-green);
            font-weight: 700;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        .section-heading {
            font-weight: 800;
            font-size: 2rem;
            color: var(--color-brown);
        }

        /* 2. Banner Món Ăn Nổi Bật */
        .featured-banner-card {
            background-color: var(--color-cream);
            border-radius: 28px;
            overflow: hidden;
            border: 1px solid rgba(184, 107, 61, 0.15);
            box-shadow: 0 15px 35px rgba(56, 46, 38, 0.05);
        }
        .banner-img-frame {
            height: 100%;
            min-height: 360px;
            border-radius: 0;
            border: none;
            border-right: 2px dashed rgba(184, 107, 61, 0.3);
        }
        .tag-province {
            background-color: #FFFFFF;
            color: var(--color-terracotta);
            font-weight: 600;
            font-size: 0.82rem;
            padding: 5px 14px;
            border-radius: 50px;
            display: inline-flex;
            align-items: center;
            gap: 5px;
        }

        /* 3. Danh Mục Món Ăn */
        .category-card {
            background: #FFFFFF;
            border: 1px solid #EFE6DA;
            border-radius: 20px;
            padding: 24px 16px;
            text-align: center;
            transition: all 0.3s ease;
            text-decoration: none;
            color: var(--color-brown);
            display: block;
            height: 100%;
        }
        .category-card:hover {
            border-color: var(--color-terracotta);
            background-color: var(--color-cream-light);
            transform: translateY(-5px);
            box-shadow: 0 12px 24px rgba(184, 107, 61, 0.1);
            color: var(--color-terracotta);
        }
        .category-icon-box {
            width: 64px;
            height: 64px;
            border-radius: 18px;
            background-color: var(--color-cream);
            color: var(--color-terracotta);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.75rem;
            margin: 0 auto 14px;
            transition: all 0.3s;
        }
        .category-card:hover .category-icon-box {
            background-color: var(--color-terracotta);
            color: #FFFFFF;
        }

        /* 4 & 5. Recipe Cards (Món mới & Món yêu thích) */
        .recipe-card {
            background: #FFFFFF;
            border-radius: 20px;
            border: 1px solid #F0E8DE;
            overflow: hidden;
            transition: all 0.3s ease;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .recipe-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 16px 32px rgba(56, 46, 38, 0.09);
            border-color: rgba(184, 107, 61, 0.3);
        }
        .recipe-img-frame {
            height: 210px;
            border: none;
            border-bottom: 2px dashed rgba(184, 107, 61, 0.25);
            border-radius: 0;
        }
        .badge-new {
            position: absolute;
            top: 12px;
            left: 12px;
            background-color: var(--color-green);
            color: #fff;
            font-size: 0.75rem;
            font-weight: 700;
            padding: 4px 12px;
            border-radius: 50px;
            z-index: 2;
        }
        .badge-fav {
            position: absolute;
            top: 12px;
            right: 12px;
            background-color: rgba(255, 255, 255, 0.92);
            color: #D94E4E;
            font-size: 0.8rem;
            font-weight: 700;
            padding: 4px 12px;
            border-radius: 50px;
            z-index: 2;
            box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        }
        .recipe-meta {
            font-size: 0.82rem;
            color: var(--color-text-muted);
        }
        .recipe-title {
            font-weight: 700;
            font-size: 1.12rem;
            color: var(--color-brown);
            text-decoration: none;
            display: -webkit-box;
            -webkit-line-clamp: 2;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        .recipe-title:hover {
            color: var(--color-terracotta);
        }

        /* Footer */
        .footer-custom {
            background-color: var(--color-cream);
            border-top: 1px solid rgba(184, 107, 61, 0.15);
            padding: 50px 0 25px;
            color: var(--color-brown);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <!-- HEADER / NAVIGATION -->
        <nav class="navbar navbar-expand-lg navbar-custom sticky-top">
            <div class="container">
                <a class="navbar-brand brand-logo" href="TrangChu.aspx">
                    <i class="bi bi-compass-fill me-1"></i>TasteOf<span>Mekong</span>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="mainNav">
                    <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" href="TrangChu.aspx">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="MonAn.aspx">Khám phá công thức</a></li>
                        <li class="nav-item"><a class="nav-link" href="DiaPhuong.aspx">Đặc sản địa phương</a></li>
                        <li class="nav-item"><a class="nav-link" href="MonAnYeuThich.aspx">Món đã lưu</a></li>
                    </ul>
                    <div class="d-flex gap-2">
                        <a href="DangNhap.aspx" class="btn btn-outline-terracotta btn-sm px-3">Đăng nhập</a>
                        <a href="DangKy.aspx" class="btn btn-terracotta btn-sm px-3">Đăng ký</a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- 1. GIỚI THIỆU TASTEOFMEKONG (HERO SECTION) -->
        <section class="hero-section">
            <div class="container">
                <div class="row align-items-center g-5">
                    <div class="col-lg-6">
                        <div class="hero-badge">
                            <i class="bi bi-stars me-1"></i> Tinh hoa ẩm thực Đồng bằng sông Cửu Long
                        </div>
                        <h1 class="hero-title mb-3">
                            Khám Phá Hương Vị Đậm Đà <span>Ẩm Thực Miền Tây</span>
                        </h1>
                        <p class="lead mb-4" style="color: var(--color-text-muted); font-size: 1.05rem;">
                            <strong>TasteOfMekong</strong> là kho lưu trữ và chia sẻ công thức nấu ăn đặc trưng của 13 tỉnh thành miền Tây Nam Bộ. Từ những bữa cơm dân dã đồng quê đến đặc sản trứ danh từng địa phương, tất cả đều được hướng dẫn chi tiết, dễ thực hiện ngay tại gian bếp nhà bạn.
                        </p>

                        <!-- Thanh tìm kiếm nhanh -->
                        <div class="search-bar-hero mb-4">
                            <asp:TextBox ID="txtTimKiemNhanh" runat="server" CssClass="form-control" placeholder="Tìm tên món ăn (VD: Cá kho tộ, Bánh xèo, Lẩu mắm)..."></asp:TextBox>
                            <asp:Button ID="btnTimKiemNhanh" runat="server" Text="Tìm công thức" CssClass="btn btn-terracotta text-nowrap" OnClick="btnTimKiemNhanh_Click" />
                        </div>

                        <!-- Thống kê nhanh -->
                        <div class="d-flex gap-4 pt-2">
                            <div>
                                <h4 class="fw-bold mb-0" style="color: var(--color-terracotta);">100+</h4>
                                <small class="text-muted">Công thức chuẩn vị</small>
                            </div>
                            <div class="vr"></div>
                            <div>
                                <h4 class="fw-bold mb-0" style="color: var(--color-green);">13</h4>
                                <small class="text-muted">Tỉnh thành miền Tây</small>
                            </div>
                            <div class="vr"></div>
                            <div>
                                <h4 class="fw-bold mb-0" style="color: var(--color-terracotta);">5</h4>
                                <small class="text-muted">Nhóm món đặc trưng</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <!-- KHUNG CHỨA ẢNH HERO ĐỂ TRỐNG MẶC ĐỊNH -->
                        <div class="img-placeholder-box hero-img-frame">
                            <i class="bi bi-image"></i>
                            <span>Khung ảnh giới thiệu TasteOfMekong (600x400px)<br />Bạn tự chèn thẻ &lt;img src="..." /&gt; tại đây</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- 2. BANNER MÓN ĂN NỔI BẬT -->
        <section class="section-padding pt-3">
            <div class="container">
                <div class="d-flex justify-content-between align-items-end mb-4">
                    <div>
                        <div class="section-subtitle">Gợi ý hôm nay</div>
                        <h2 class="section-heading mb-0">Món Ăn Nổi Bật</h2>
                    </div>
                </div>

                <!-- Carousel Banner Món Nổi Bật -->
                <div id="featuredCarousel" class="carousel slide featured-banner-card" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <!-- Slide 1 -->
                        <div class="carousel-item active">
                            <div class="row g-0 align-items-center">
                                <div class="col-lg-6">
                                    <!-- KHUNG CHỨA ẢNH BANNER ĐỂ TRỐNG MẶC ĐỊNH -->
                                    <div class="img-placeholder-box banner-img-frame">
                                        <i class="bi bi-card-image"></i>
                                        <span>Khung ảnh Banner Món Nổi Bật 1<br />(Tỷ lệ 16:10 - Tự thêm hình)</span>
                                    </div>
                                </div>
                                <div class="col-lg-6 p-4 p-lg-5">
                                    <div class="d-flex align-items-center gap-2 mb-3">
                                        <span class="tag-province"><i class="bi bi-geo-alt-fill"></i> Đặc sản Cần Thơ</span>
                                        <span class="badge rounded-pill" style="background-color: var(--color-green);">Món chính</span>
                                    </div>
                                    <h3 class="fw-bold mb-3" style="font-size: 1.85rem;">Lẩu Mắm Miền Tây Đậm Đà Hương Vị Sông Nước</h3>
                                    <p class="mb-4" style="color: var(--color-text-muted);">
                                        Sự hòa quyện tinh tế giữa mắm cá linh, mắm cá sặc nấu cùng nước dừa tươi, ăn kèm hơn 20 loại rau đồng đặc trưng như bông súng, điên điển, rau đắng đất...
                                    </p>
                                    <div class="d-flex flex-wrap gap-4 mb-4 recipe-meta">
                                        <span><i class="bi bi-clock me-1 text-warning"></i> <strong>60 phút</strong></span>
                                        <span><i class="bi bi-bar-chart me-1 text-success"></i> Độ khó: <strong>Trung bình</strong></span>
                                        <span><i class="bi bi-heart-fill me-1 text-danger"></i> <strong>245 lượt thích</strong></span>
                                    </div>
                                    <a href="ChiTietMonAn.aspx?id=1" class="btn btn-terracotta">
                                        Xem công thức chi tiết <i class="bi bi-arrow-right ms-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Slide 2 -->
                        <div class="carousel-item">
                            <div class="row g-0 align-items-center">
                                <div class="col-lg-6">
                                    <!-- KHUNG CHỨA ẢNH BANNER ĐỂ TRỐNG MẶC ĐỊNH -->
                                    <div class="img-placeholder-box banner-img-frame">
                                        <i class="bi bi-card-image"></i>
                                        <span>Khung ảnh Banner Món Nổi Bật 2<br />(Tỷ lệ 16:10 - Tự thêm hình)</span>
                                    </div>
                                </div>
                                <div class="col-lg-6 p-4 p-lg-5">
                                    <div class="d-flex align-items-center gap-2 mb-3">
                                        <span class="tag-province"><i class="bi bi-geo-alt-fill"></i> Đặc sản Đồng Tháp</span>
                                        <span class="badge rounded-pill" style="background-color: var(--color-green);">Món ăn vặt</span>
                                    </div>
                                    <h3 class="fw-bold mb-3" style="font-size: 1.85rem;">Bánh Xèo Miền Tây Giòn Rụm Nhân Tép Đồng Bông Điên Điển</h3>
                                    <p class="mb-4" style="color: var(--color-text-muted);">
                                        Vỏ bánh vàng ươm từ bột gạo pha nước cốt dừa và nghệ tươi, đổ trên chảo gang nóng hổi tạo độ giòn rụm đặc trưng, cuốn cùng rau rừng và nước mắm chua ngọt.
                                    </p>
                                    <div class="d-flex flex-wrap gap-4 mb-4 recipe-meta">
                                        <span><i class="bi bi-clock me-1 text-warning"></i> <strong>45 phút</strong></span>
                                        <span><i class="bi bi-bar-chart me-1 text-success"></i> Độ khó: <strong>Dễ</strong></span>
                                        <span><i class="bi bi-heart-fill me-1 text-danger"></i> <strong>310 lượt thích</strong></span>
                                    </div>
                                    <a href="ChiTietMonAn.aspx?id=2" class="btn btn-terracotta">
                                        Xem công thức chi tiết <i class="bi bi-arrow-right ms-1"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Nút điều hướng Banner -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#featuredCarousel" data-bs-slide="prev" style="width: 5%;">
                        <span class="carousel-control-prev-icon bg-dark rounded-circle p-2" aria-hidden="true"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#featuredCarousel" data-bs-slide="next" style="width: 5%;">
                        <span class="carousel-control-next-icon bg-dark rounded-circle p-2" aria-hidden="true"></span>
                    </button>
                </div>
            </div>
        </section>

        <!-- 3. DANH MỤC MÓN ĂN -->
        <section class="section-padding" style="background-color: var(--color-cream-light);">
            <div class="container">
                <div class="text-center mb-5">
                    <div class="section-subtitle">Phân loại ẩm thực</div>
                    <h2 class="section-heading">Danh Mục Món Ăn</h2>
                    <p class="text-muted mx-auto" style="max-width: 600px;">
                        Chọn nhóm món ăn bạn đang muốn tìm kiếm để khám phá hàng loạt công thức chuẩn vị miền Tây
                    </p>
                </div>

                <!-- Danh sách 5 nhóm món chính theo đề tài (Có thể bind Repeater từ bảng DanhMuc) -->
                <div class="row row-cols-2 row-cols-md-3 row-cols-lg-5 g-4">
                    <div class="col">
                        <a href="MonAn.aspx?madm=1" class="category-card">
                            <div class="category-icon-box"><i class="bi bi-fire"></i></div>
                            <h5 class="fw-bold mb-1">Món Chính</h5>
                            <small class="text-muted">Cá kho tộ, lẩu mắm, bánh xèo</small>
                        </a>
                    </div>
                    <div class="col">
                        <a href="MonAn.aspx?madm=2" class="category-card">
                            <div class="category-icon-box"><i class="bi bi-cup-hot"></i></div>
                            <h5 class="fw-bold mb-1">Món Nước</h5>
                            <small class="text-muted">Hủ tiếu, bún cá, bún mắm</small>
                        </a>
                    </div>
                    <div class="col">
                        <a href="MonAn.aspx?madm=3" class="category-card">
                            <div class="category-icon-box"><i class="bi bi-basket2"></i></div>
                            <h5 class="fw-bold mb-1">Món Ăn Vặt</h5>
                            <small class="text-muted">Bánh cống, bánh giá, bánh bò</small>
                        </a>
                    </div>
                    <div class="col">
                        <a href="MonAn.aspx?madm=4" class="category-card">
                            <div class="category-icon-box"><i class="bi bi-flower1"></i></div>
                            <h5 class="fw-bold mb-1">Tráng Miệng</h5>
                            <small class="text-muted">Chè bưởi, bánh dân gian</small>
                        </a>
                    </div>
                    <div class="col">
                        <a href="MonAn.aspx?madm=5" class="category-card">
                            <div class="category-icon-box"><i class="bi bi-award"></i></div>
                            <h5 class="fw-bold mb-1">Đặc Sản Quê</h5>
                            <small class="text-muted">Nem Lai Vung, bánh pía...</small>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <!-- 4. MÓN ĂN MỚI CẬP NHẬT -->
        <section class="section-padding">
            <div class="container">
                <div class="d-flex justify-content-between align-items-end mb-4">
                    <div>
                        <div class="section-subtitle">Vừa lên sóng</div>
                        <h2 class="section-heading mb-0">Món Ăn Mới Cập Nhật</h2>
                    </div>
                    <a href="MonAn.aspx?sort=newest" class="btn btn-outline-terracotta btn-sm">
                        Xem tất cả <i class="bi bi-chevron-right"></i>
                    </a>
                </div>

                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                    <!-- Repeater bind dữ liệu từ bảng MonAn (ORDER BY NgayDang DESC) -->
                    <asp:Repeater ID="rptMonMoi" runat="server">
                        <ItemTemplate>
                            <div class="col">
                                <div class="recipe-card">
                                    <div class="position-relative">
                                        <span class="badge-new">Mới</span>
                                        <!-- KHUNG CHỨA ẢNH MÓN ĂN ĐỂ TRỐNG MẶC ĐỊNH -->
                                        <div class="img-placeholder-box recipe-img-frame">
                                            <i class="bi bi-image"></i>
                                            <span>Ảnh món ăn (400x250)<br /><%# Eval("TenMonAn") %></span>
                                            <%-- Khi có ảnh thật bạn mở comment dòng dưới:
                                            <img src='<%# Eval("HinhAnh") %>' alt='<%# Eval("TenMonAn") %>' /> 
                                            --%>
                                        </div>
                                    </div>
                                    <div class="p-3 d-flex flex-column flex-grow-1">
                                        <div class="d-flex justify-content-between align-items-center mb-2 recipe-meta">
                                            <span style="color: var(--color-terracotta); font-weight: 600;">
                                                <i class="bi bi-geo-alt"></i> <%# Eval("TenDiaPhuong") %>
                                            </span>
                                            <span><i class="bi bi-clock"></i> <%# Eval("ThoiGianNau") %> phút</span>
                                        </div>
                                        <a href='ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>' class="recipe-title mb-2">
                                            <%# Eval("TenMonAn") %>
                                        </a>
                                        <p class="small text-muted mb-3 flex-grow-1" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;">
                                            <%# Eval("MoTa") %>
                                        </p>
                                        <div class="pt-2 border-top d-flex justify-content-between align-items-center">
                                            <span class="badge bg-light text-dark border"><%# Eval("TenDanhMuc") %></span>
                                            <a href='ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>' class="text-decoration-none fw-bold small" style="color: var(--color-terracotta);">
                                                Xem cách làm &rarr;
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <!-- 5. MÓN ĂN ĐƯỢC YÊU THÍCH -->
        <section class="section-padding" style="background-color: var(--color-cream-light);">
            <div class="container">
                <div class="d-flex justify-content-between align-items-end mb-4">
                    <div>
                        <div class="section-subtitle">Cộng đồng bình chọn</div>
                        <h2 class="section-heading mb-0">Món Ăn Được Yêu Thích</h2>
                    </div>
                    <a href="MonAn.aspx?sort=popular" class="btn btn-outline-terracotta btn-sm">
                        Xem bảng xếp hạng <i class="bi bi-chevron-right"></i>
                    </a>
                </div>

                <div class="row row-cols-1 row-cols-md-2 row-cols-lg-4 g-4">
                    <!-- Repeater bind dữ liệu từ bảng MonAn JOIN YeuThich / DanhGia -->
                    <asp:Repeater ID="rptMonYeuThich" runat="server">
                        <ItemTemplate>
                            <div class="col">
                                <div class="recipe-card">
                                    <div class="position-relative">
                                        <span class="badge-fav">
                                            <i class="bi bi-heart-fill"></i> <%# Eval("LuotThich") %>
                                        </span>
                                        <!-- KHUNG CHỨA ẢNH MÓN ĂN ĐỂ TRỐNG MẶC ĐỊNH -->
                                        <div class="img-placeholder-box recipe-img-frame">
                                            <i class="bi bi-image"></i>
                                            <span>Ảnh món ăn (400x250)<br /><%# Eval("TenMonAn") %></span>
                                            <%-- Khi có ảnh thật bạn mở comment dòng dưới:
                                            <img src='<%# Eval("HinhAnh") %>' alt='<%# Eval("TenMonAn") %>' /> 
                                            --%>
                                        </div>
                                    </div>
                                    <div class="p-3 d-flex flex-column flex-grow-1">
                                        <div class="d-flex justify-content-between align-items-center mb-2 recipe-meta">
                                            <span style="color: var(--color-green); font-weight: 600;">
                                                <i class="bi bi-geo-alt"></i> <%# Eval("TenDiaPhuong") %>
                                            </span>
                                            <span class="text-warning fw-bold">
                                                <i class="bi bi-star-fill"></i> <%# Eval("DiemDanhGia") %>
                                            </span>
                                        </div>
                                        <a href='ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>' class="recipe-title mb-2">
                                            <%# Eval("TenMonAn") %>
                                        </a>
                                        <p class="small text-muted mb-3 flex-grow-1" style="display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden;">
                                            <%# Eval("MoTa") %>
                                        </p>
                                        <div class="pt-2 border-top d-flex justify-content-between align-items-center">
                                            <span class="small text-muted"><i class="bi bi-clock"></i> <%# Eval("ThoiGianNau") %> phút</span>
                                            <a href='ChiTietMonAn.aspx?id=<%# Eval("MaMonAn") %>' class="text-decoration-none fw-bold small" style="color: var(--color-terracotta);">
                                                Xem công thức &rarr;
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <!-- FOOTER -->
        <footer class="footer-custom">
            <div class="container">
                <div class="row g-4">
                    <div class="col-lg-5">
                        <a class="brand-logo text-decoration-none d-inline-block mb-2" href="TrangChu.aspx">
                            <i class="bi bi-compass-fill me-1"></i>TasteOf<span>Mekong</span>
                        </a>
                        <p class="small text-muted mb-0">
                            Website lưu trữ và chia sẻ công thức ẩm thực truyền thống các tỉnh thành Đồng bằng sông Cửu Long. Lan tỏa hương vị quê hương đến mọi gian bếp Việt.
                        </p>
                    </div>
                    <div class="col-lg-3 col-6">
                        <h6 class="fw-bold mb-3">Khám phá</h6>
                        <ul class="list-unstyled small d-flex flex-column gap-2">
                            <li><a href="MonAn.aspx" class="text-decoration-none text-muted">Tất cả công thức</a></li>
                            <li><a href="DiaPhuong.aspx" class="text-decoration-none text-muted">Đặc sản 13 tỉnh thành</a></li>
                            <li><a href="MonAnYeuThich.aspx" class="text-decoration-none text-muted">Bộ sưu tập đã lưu</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-4 col-6">
                        <h6 class="fw-bold mb-3">Danh mục phổ biến</h6>
                        <div class="d-flex flex-wrap gap-2">
                            <a href="MonAn.aspx?madm=1" class="badge bg-white text-dark border text-decoration-none p-2">Món chính</a>
                            <a href="MonAn.aspx?madm=2" class="badge bg-white text-dark border text-decoration-none p-2">Món nước</a>
                            <a href="MonAn.aspx?madm=3" class="badge bg-white text-dark border text-decoration-none p-2">Món ăn vặt</a>
                            <a href="MonAn.aspx?madm=5" class="badge bg-white text-dark border text-decoration-none p-2">Đặc sản địa phương</a>
                        </div>
                    </div>
                </div>
                <hr class="my-4" style="border-color: rgba(184, 107, 61, 0.2);" />
                <div class="text-center small text-muted">
                    &copy; 2026 TasteOfMekong - Kho Công Thức Ẩm Thực Miền Tây.
                </div>
            </div>
        </footer>

    </form>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
