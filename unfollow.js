/* 点击批量管理 */
$(".btn_link.S_txt1").click();
/* 勾选全部 */
$$('.member_li').forEach(l => l.click());
/* 点击取消关注 */
$('.W_btn_a[node-type="cancelFollowBtn"]').click();
/* 点击确认按钮 */
$('[node-type="ok"]').click();
