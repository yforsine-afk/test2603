FROM nginx:stable-alpine
#ใช้ image ของ nginx จาก dockerhub(base os + web server)
COPY index.html /usr/share/nginx/html/index.html
#เอาไฟล์ index ไปเเทนที่ web default ของ nginx
EXPOSE 80
#Contanier เปิด port 80
CMD ["nginx", "-g", "daemon off;"]
#nginx start, nginx ไม่ไป background, รันค้างอยู่หน้า terminal (foreground)