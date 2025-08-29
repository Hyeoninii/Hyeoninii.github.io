#!/usr/bin/env ruby
#
# Auto-set date and last_modified_at for posts based on Git history

Jekyll::Hooks.register :posts, :post_init do |post|
  # Git에서 파일의 첫 번째 커밋 날짜를 가져와서 date로 설정
  first_commit_date = `git log --reverse --pretty="%ad" --date=iso "#{post.path}" 2>/dev/null | head -1`
  
  if first_commit_date && !first_commit_date.strip.empty?
    post.data['date'] = first_commit_date.strip
  end
  
  # Git에서 파일의 마지막 커밋 날짜를 가져와서 last_modified_at으로 설정
  last_commit_date = `git log -1 --pretty="%ad" --date=iso "#{post.path}" 2>/dev/null`
  
  if last_commit_date && !last_commit_date.strip.empty?
    post.data['last_modified_at'] = last_commit_date.strip
  end
end
