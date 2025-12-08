FROM nginx:alpine

# Copy the HTML file and sample data to the nginx default directory
COPY EnglishSpeechPractice.html /usr/share/nginx/html/index.html
COPY sampleData /usr/share/nginx/html/sampleData/

# Copy any other necessary files
COPY README.md /usr/share/nginx/html/
COPY LICENSE /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Nginx starts automatically when the container runs