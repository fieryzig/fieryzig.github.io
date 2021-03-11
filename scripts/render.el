(set-language-environment "UTF-8")
(setq make-backup-files nil)
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(package-install 'org-static-blog)
(package-install 'htmlize)

(setq fiery-blog-title "Les Frites")
(setq fiery-blog-url "https://fieryzig.github.io")

(setq org-static-blog-publish-title fiery-blog-title)
(setq org-static-blog-publish-url fiery-blog-url)
(setq org-static-blog-publish-directory "./")
(setq org-static-blog-posts-directory "posts/")
(setq org-static-blog-drafts-directory "drafts/")
(setq org-static-blog-enable-tags t)
(setq org-static-blog-use-preview t)
(setq org-static-blog-preview-ellipsis
      "<p>......</p>")
(setq org-static-blog-preview-link-p t)
(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)
(setq org-static-blog-page-header
      "<meta name=\"author\" content=\"fieryzig\">
<meta name=\"referrer\" content=\"no-referrer\">
<link href=\"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
<script src='//unpkg.com/valine/dist/Valine.min.js'></script>
")
(setq org-static-blog-page-preamble (concat
                                     "<div class=\"header\">
<h1><a href=\"https://fieryzig.github.io\" class=\"title\">" fiery-blog-title "</a></h1>
<p class=\"text-muted\">fieryzig's blog</p>
<ul class=\"list-inline\">
<li class=\"list-inline-item\"><a href=\"https://fieryzig.github.io/about.html\">About</a></li>
<li class=\"list-inline-item\"><a href=\"https://fieryzig.github.io/tags.html\">Tags</a></li>
</ul>
</div>"))
(setq org-static-blog-page-postamble "")

(org-static-blog-publish)
