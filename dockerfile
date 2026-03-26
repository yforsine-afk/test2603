FROM nginx
#ใช้ image ของ nginx จาก dockerhub(base os + web server)
COPY index.html /usr/share/nginx/html
#เอาไฟล์ index ไปเเทนที่ web default ของ nginx
EXPOSE 8080
#Contanier เปิด port 8080 
CMD ["nginx", "-g", "daemon off;"]
#nginx start, nginx ไม่ไป background, รันค้างอยู่หน้า terminal (foreground)

