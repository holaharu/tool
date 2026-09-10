<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Company Software Hub</title>
<style>
:root{
  --bg:#f6f7fb; --card:#fff; --text:#20242d; --muted:#727887;
  --line:#e7e9ef; --accent:#5b5ce2; --green:#18a66a; --orange:#e58a25;
  --shadow:0 8px 30px rgba(31,35,45,.07);
}
*{box-sizing:border-box}
body{margin:0;font-family:-apple-system,BlinkMacSystemFont,"Segoe UI","Noto Sans KR",sans-serif;background:var(--bg);color:var(--text)}
header{background:#171923;color:#fff;padding:30px 42px;position:sticky;top:0;z-index:10}
.header-inner{max-width:1200px;margin:auto;display:flex;justify-content:space-between;align-items:center;gap:20px}
h1{margin:0;font-size:25px}.subtitle{color:#aeb3c2;font-size:13px;margin-top:5px}
.search{width:300px;padding:11px 14px;border:1px solid #383c4b;border-radius:10px;background:#242733;color:#fff;outline:none}
main{max-width:1200px;margin:30px auto;padding:0 20px}
.summary{display:grid;grid-template-columns:repeat(4,1fr);gap:15px;margin-bottom:30px}
.stat{background:var(--card);border:1px solid var(--line);border-radius:15px;padding:20px;box-shadow:var(--shadow)}
.stat .label{font-size:13px;color:var(--muted)} .stat .num{font-size:28px;font-weight:750;margin-top:7px}
.section{margin:36px 0}
.section-title{display:flex;align-items:end;justify-content:space-between;margin-bottom:14px}
.section-title h2{margin:0;font-size:21px}.section-title span{font-size:12px;color:var(--muted)}
.cards{display:grid;grid-template-columns:repeat(2,1fr);gap:18px}
.card{background:var(--card);border:1px solid var(--line);border-radius:16px;padding:22px;box-shadow:var(--shadow)}
.card-head{display:flex;justify-content:space-between;align-items:start;margin-bottom:17px}
.product{font-size:19px;font-weight:750}.tag{font-size:11px;padding:5px 8px;border-radius:99px;background:#eef0ff;color:#4d50ca;font-weight:650}
.grid{display:grid;grid-template-columns:repeat(2,1fr);gap:13px}
.item{border-top:1px solid var(--line);padding-top:11px}
.item .k{font-size:11px;color:var(--muted);margin-bottom:4px}.item .v{font-size:14px;font-weight:600}
.people{display:flex;gap:7px;flex-wrap:wrap}.person{background:#f1f2f6;border-radius:8px;padding:6px 9px;font-size:12px}
table{width:100%;border-collapse:collapse;background:var(--card);border:1px solid var(--line);border-radius:14px;overflow:hidden;box-shadow:var(--shadow)}
th,td{text-align:left;padding:13px 15px;border-bottom:1px solid var(--line);font-size:13px}
th{background:#fafafd;color:var(--muted);font-size:11px}tr:last-child td{border-bottom:0}
.status{display:inline-block;padding:4px 8px;border-radius:99px;font-size:11px;font-weight:700}.active{background:#e8f8f0;color:#138353}.pending{background:#fff3df;color:#b46b13}
.notice{padding:15px 17px;background:#fff9e9;border:1px solid #f4df9e;border-radius:12px;font-size:13px;color:#6e591d;margin-top:18px}
footer{text-align:center;color:var(--muted);font-size:11px;padding:30px}
@media(max-width:800px){.summary{grid-template-columns:repeat(2,1fr)}.cards{grid-template-columns:1fr}.search{width:190px}}
@media(max-width:520px){header{padding:22px}.header-inner{align-items:flex-start;flex-direction:column}.search{width:100%}.summary{grid-template-columns:1fr 1fr}}
</style>
</head>
<body>
<header>
  <div class="header-inner">
    <div><h1>Company Software Hub</h1><div class="subtitle">회사에서 사용 중인 SaaS · 프로그램 · 계정 · 결제 관리</div></div>
    <input class="search" id="search" placeholder="프로그램 / 담당자 검색">
  </div>
</header>

<main>
  <div class="summary">
    <div class="stat"><div class="label">관리 프로그램</div><div class="num">4</div></div>
    <div class="stat"><div class="label">관리 계정 / 라이선스</div><div class="num">12</div></div>
    <div class="stat"><div class="label">결제 예정</div><div class="num">3</div></div>
    <div class="stat"><div class="label">관리 담당자</div><div class="num">4</div></div>
  </div>

  <div class="section searchable">
    <div class="section-title"><h2>AI / 업무 도구</h2><span>계정 · 플랜 · 결제 · 사용자를 한 곳에서</span></div>
    <div class="cards">

      <article class="card" data-search="claude 클로드 anthropic">
        <div class="card-head"><div class="product">Claude</div><span class="tag">AI</span></div>
        <div class="grid">
          <div class="item"><div class="k">플랜</div><div class="v">Team / Pro Plus</div></div>
          <div class="item"><div class="k">보유 좌석</div><div class="v">예: 5 seats</div></div>
          <div class="item"><div class="k">결제 관리자</div><div class="v">홍길동</div></div>
          <div class="item"><div class="k">결제 카드</div><div class="v">법인카드 **** 1234</div></div>
          <div class="item"><div class="k">결제일</div><div class="v">매월 15일</div></div>
          <div class="item"><div class="k">월 예상 비용</div><div class="v">₩000,000</div></div>
        </div>
        <div class="item" style="margin-top:14px"><div class="k">사용자</div><div class="people"><span class="person">김OO</span><span class="person">이OO</span><span class="person">박OO</span></div></div>
      </article>

      <article class="card" data-search="chatgpt gpt openai">
        <div class="card-head"><div class="product">ChatGPT</div><span class="tag">AI</span></div>
        <div class="grid">
          <div class="item"><div class="k">플랜</div><div class="v">예: Business / Plus</div></div>
          <div class="item"><div class="k">보유 좌석</div><div class="v">예: 8 seats</div></div>
          <div class="item"><div class="k">결제 관리자</div><div class="v">홍길동</div></div>
          <div class="item"><div class="k">결제 카드</div><div class="v">법인카드 **** 5678</div></div>
          <div class="item"><div class="k">결제일</div><div class="v">매월 20일</div></div>
          <div class="item"><div class="k">월 예상 비용</div><div class="v">₩000,000</div></div>
        </div>
        <div class="item" style="margin-top:14px"><div class="k">사용자</div><div class="people"><span class="person">김OO</span><span class="person">최OO</span><span class="person">정OO</span></div></div>
      </article>
    </div>
  </div>

  <div class="section searchable">
    <div class="section-title"><h2>Office / 문서</h2><span>문서 작성 · 스프레드시트 · 라이선스</span></div>
    <div class="cards">
      <article class="card" data-search="excel microsoft 엑셀 office">
        <div class="card-head"><div class="product">Microsoft Excel / Microsoft 365</div><span class="tag">Office</span></div>
        <div class="grid">
          <div class="item"><div class="k">라이선스</div><div class="v">예: Business Standard</div></div>
          <div class="item"><div class="k">라이선스 수</div><div class="v">예: 10</div></div>
          <div class="item"><div class="k">관리자</div><div class="v">김OO</div></div>
          <div class="item"><div class="k">결제일</div><div class="v">매월 1일</div></div>
          <div class="item"><div class="k">결제 수단</div><div class="v">법인카드 **** 0000</div></div>
          <div class="item"><div class="k">비고</div><div class="v">계정 추가 필요 시 관리자 문의</div></div>
        </div>
      </article>

      <article class="card" data-search="한컴 한글 한컴오피스 hancom">
        <div class="card-head"><div class="product">한컴오피스</div><span class="tag">Office</span></div>
        <div class="grid">
          <div class="item"><div class="k">제품</div><div class="v">한글 / 한셀 / 한쇼</div></div>
          <div class="item"><div class="k">라이선스 수</div><div class="v">예: 15</div></div>
          <div class="item"><div class="k">관리자</div><div class="v">이OO</div></div>
          <div class="item"><div class="k">갱신일</div><div class="v">2027-03-01</div></div>
          <div class="item"><div class="k">결제 수단</div><div class="v">법인카드 **** 0000</div></div>
          <div class="item"><div class="k">비고</div><div class="v">PC 교체 시 라이선스 확인</div></div>
        </div>
      </article>
    </div>
  </div>

  <div class="section searchable">
    <div class="section-title"><h2>사용자 / 계정 현황</h2><span>실제 사내 사용자 정보를 입력하세요</span></div>
    <table>
      <thead><tr><th>프로그램</th><th>사용자</th><th>부서</th><th>권한</th><th>상태</th></tr></thead>
      <tbody>
        <tr><td>Claude</td><td>김OO</td><td>기획팀</td><td>Member</td><td><span class="status active">사용중</span></td></tr>
        <tr><td>Claude</td><td>이OO</td><td>개발팀</td><td>Member</td><td><span class="status active">사용중</span></td></tr>
        <tr><td>ChatGPT</td><td>박OO</td><td>마케팅팀</td><td>Member</td><td><span class="status active">사용중</span></td></tr>
        <tr><td>Microsoft 365</td><td>최OO</td><td>경영지원</td><td>Admin</td><td><span class="status active">사용중</span></td></tr>
        <tr><td>한컴오피스</td><td>정OO</td><td>경영지원</td><td>사용자</td><td><span class="status pending">확인필요</span></td></tr>
      </tbody>
    </table>
    <div class="notice">⚠️ 이 페이지에는 실제 카드번호 전체, 비밀번호, API Key, 개인 인증정보를 입력하지 마세요. 카드번호는 마지막 4자리 정도만 표시하는 것을 권장합니다.</div>
  </div>
</main>
<footer>Company Software Hub · GitHub Pages용 정적 웹페이지</footer>

<script>
const search = document.getElementById('search');
search.addEventListener('input', () => {
  const q = search.value.toLowerCase().trim();
  document.querySelectorAll('.searchable').forEach(section => {
    const items = section.querySelectorAll('[data-search], tbody tr');
    items.forEach(el => {
      const text = (el.dataset.search || el.innerText || '').toLowerCase();
      el.style.display = !q || text.includes(q) ? '' : 'none';
    });
  });
});
</script>
</body>
</html>
