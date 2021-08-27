FROM debian:10.1

RUN apt-get update && apt-get install --yes --no-install-recommends \
	texlive-fonts-recommended \
	texlive-generic-recommended \
	texlive-latex-extra \
	texlive-fonts-extra \
	dvipng \
	texlive-latex-recommended \
	texlive-base \
	texlive-pictures \d
	texlive-lang-cyrillic \
	texlive-science \
	cm-super \
	texlive-generic-extra \
	texlive-bibtex-extra \
	texlive-lang-english \
	texlive-
	

COPY my-cv /my-cv
COPY entrypoint.sh /entrypoint.sh
WORKDIR /my-cv

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]