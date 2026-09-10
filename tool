<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사내 소프트웨어 구독 관리</title>
    <style>
        :root {
            --bg-color: #f3f4f6;
            --card-bg: #ffffff;
            --text-main: #1f2937;
            --text-muted: #6b7280;
            --border-color: #e5e7eb;
            --primary: #4f46e5;
        }
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background-color: var(--bg-color);
            color: var(--text-main);
            margin: 0;
            padding: 40px 20px;
        }
        .header {
            max-width: 1200px;
            margin: 0 auto 30px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 28px;
            color: #111827;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 24px;
            max-width: 1200px;
            margin: 0 auto;
        }
        .card {
            background-color: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 12px;
            padding: 24px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }
        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid var(--border-color);
            padding-bottom: 12px;
            margin-bottom: 16px;
        }
        .card-title {
            font-size: 20px;
            font-weight: 600;
            margin: 0;
        }
        .badge {
            background-color: #e0e7ff;
            color: var(--primary);
            padding: 4px 12px;
            border-radius: 999px;
            font-size: 13px;
            font-weight: 600;
        }
        .info-group {
            margin-bottom: 12px;
            font-size: 14px;
            display: flex;
        }
        .info-label {
            font-weight: 600;
            color: var(--text-muted);
            width: 90px;
            flex-shrink: 0;
        }
        .user-list {
            margin-top: 20px;
            padding-top: 16px;
            border-top: 1px dashed var(--border-color);
        }
        .user-list-title {
            font-weight: 600;
            margin-bottom: 10px;
            font-size: 14px;
            color: var(--text-main);
        }
        .tags {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
        }
        .tag {
            background-color: #f1f5f9;
            border: 1px solid #cbd5e1;
            padding: 4px 10px;
            border-radius: 6px;
            font-size: 13px;
            color: #334155;
        }
        .highlight {
            color: #ef4444;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>🏢 사내 소프트웨어 구독 및 라이선스 관리</h1>
        <p style="color: #6b7280;">각 부서 및 팀원이 사용 중인 서비스의 결제 정보와 여유 자리를 확인하세요.</p>
    </div>

    <!-- 카드들이 생성될 영역 -->
    <div class="grid" id="app"></div>

    <script>
        /* 
         * [관리자용] 
         * 새로운 프로그램을 추가하거나 정보를 수정하려면 아래 'subscriptions' 배열의 내용을 수정하세요.
         * 화면은 자동으로 업데이트 됩니다.
         */
        const subscriptions = [
            {
                name: "Claude",
                plan: "Team Plan Pro Plus",
                totalSeats: 10,
                usedSeats: 8,
                manager: "홍길동 (개발 1팀)",
                card: "법인 신한카드 (끝자리 1234)",
                billingDate: "매월 5일",
                users: ["김철수", "이영희", "박지성", "손흥민", "이강인", "김민재", "황희찬", "조규성"]
            },
            {
                name: "ChatGPT",
                plan: "Plus / Team",
                totalSeats: 5,
                usedSeats: 5,
                manager: "김팀장 (기획팀)",
                card: "법인 국민카드 (끝자리 5678)",
                billingDate: "매월 15일",
                users: ["유재석", "강호동", "신동엽", "이수근", "전현무"]
            },
            {
                name: "Github",
                plan: "Enterprise",
                totalSeats: 20,
                usedSeats: 12,
                manager: "이개발 (CTO실)",
                card: "법인 현대카드 (끝자리 9012)",
                billingDate: "매년 1월 10일",
                users: ["개발팀 전체", "인프라팀 일부"]
            }
        ];

        // 화면 렌더링 로직
        const app = document.getElementById('app');

        subscriptions.forEach(sub => {
            const availableSeats = sub.totalSeats - sub.usedSeats;
            const seatStatus = availableSeats > 0 
                ? `<span style="color: #10b981; font-weight: bold;">${availableSeats}자리 남음</span>` 
                : `<span class="highlight">여유 없음</span>`;

            const cardHTML = `
                <div class="card">
                    <div class="card-header">
                        <h2 class="card-title">${sub.name}</h2>
                        <span class="badge">${sub.plan}</span>
                    </div>
                    
                    <div class="info-group">
                        <span class="info-label">라이선스</span>
                        <span>총 ${sub.totalSeats}명 중 <b>${sub.usedSeats}명</b> 사용 (${seatStatus})</span>
                    </div>
                    <div class="info-group">
                        <span class="info-label">결재 관리자</span>
                        <span>${sub.manager}</span>
                    </div>
                    <div class="info-group">
                        <span class="info-label">결제 카드</span>
                        <span>${sub.card}</span>
                    </div>
                    <div class="info-group">
                        <span class="info-label">결제일</span>
                        <span>${sub.billingDate}</span>
                    </div>

                    <div class="user-list">
                        <div class="user-list-title">👥 현재 사용 중인 팀원</div>
                        <div class="tags">
                            ${sub.users.map(user => `<span class="tag">${user}</span>`).join('')}
                        </div>
                    </div>
                </div>
            `;
            app.insertAdjacentHTML('beforeend', cardHTML);
        });
    </script>
</body>
</html>
