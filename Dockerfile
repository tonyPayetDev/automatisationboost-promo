FROM nginx:alpine
COPY renders/video.mp4 /usr/share/nginx/html/
COPY video-player.html /usr/share/nginx/html/index.html
COPY DESIGN.md /usr/share/nginx/html/
COPY STORYBOARD.md /usr/share/nginx/html/
COPY SCRIPT.md /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
