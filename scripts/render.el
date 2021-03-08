(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(package-install 'use-package)
(package-install 'htmlize)
(defvar fiery-blog-title "Les Frites")
(defvar fiery-blog-directory "./")
(use-package org-static-blog
  :custom
  (org-static-blog-publish-title fiery-blog-title)
  (org-static-blog-publish-url fiery-blog-url)
  (org-static-blog-publish-directory fiery-blog-directory)
  (org-static-blog-posts-directory (concat fiery-blog-directory "posts/"))
  (org-static-blog-drafts-directory (concat fiery-blog-directory "drafts/"))
  (org-static-blog-enable-tags t)
  (org-static-blog-use-preview t)
  (org-static-blog-preview-ellipsis
   "<p>......</p>")
  (org-static-blog-preview-link-p t)
  (org-export-with-toc nil)
  (org-export-with-section-numbers nil)
  (org-static-blog-page-header
   "<meta name=\"author\" content=\"fieryzig\">
<meta name=\"referrer\" content=\"no-referrer\">
<link href=\"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
")
  (org-static-blog-page-preamble (concat
   "<div class=\"header\">
<h1><a href=\"https://fieryzig.github.io\" class=\"title\">" fiery-blog-title "</a></h1>
<p class=\"text-muted\">fieryzig's blog</p>
<ul class=\"list-inline\">
<li class=\"list-inline-item\"><a href=\"https://fieryzig.github.io/about.html\">About</a></li>
<li class=\"list-inline-item\"><a href=\"https://fieryzig.github.io/tags.html\">Tags</a></li>
</ul>
</div>"))
  (org-static-blog-page-postamble ""))

(org-static-blog-publish)
