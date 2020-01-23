crumb :root do
  link "トップページ", root_path
end

# マイページ
crumb :mypages do
  link "マイページ", mypage_path(current_user.id)
end


# ユーザ個別ページへのパンくずリスト
crumb :mypage1 do |mypage|
  link "本人情報", edit_address_path(current_user.id)
  parent :mypages
end

crumb :mypage2 do |mypage|
  link "本人情報の登録", edit_user_path(current_user.id)
  parent :mypages
end

crumb :mypage3 do |mypage|
  link "プロフィール編集", edit_mypage_path(current_user.id)
  parent :mypages
end






# crumb :address do |mypag|
#   link mypage.title, issue
#   parent :mypages
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).