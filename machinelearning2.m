m=151;
alpha1=0.01 ;

 x1=[ones(151,1), age2(1:151,:),sex2(1:151,:),cp2(1:151,:),trestbps2(1:151,:),chol3(1:151,:),fbs2(1:151,:),restecg2(1:151,:),thalach2(1:151,:),exang2(1:151,:),oldpeak2(1:151,:),slope2(1:151,1),ca2(1:151,:),thal2(1:151,:)];
n=length(x1(1,:));
 xcv1=[ones(51,1),age2(152:202,:),sex2(152:202,:),cp2(152:202,:),trestbps2(152:202,:),chol3(152:202,:),fbs2(152:202,:),restecg2(152:202,:),thalach2(152:202,:),exang2(152:202,:),oldpeak2(152:202,:),slope2(152:202,:),ca2(152:202,:),thal2(152:202,:)]; 
 ncv=length(xcv1(1,:));
newtheta1=zeros(n,1);
x1=normalizedata(x1,n);
xcv1=normalizedata(xcv1,ncv);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J1=costlog(x1,Y,newtheta1)
[newtheta1,J_history1]=GradientDescentAlgorithm2(x1,Y,newtheta1,alpha1,J1);
 JFINAL=costlog(xcv1,Ycv,newtheta1)
 xtest=[ones(48,1),age2(203:250,:),sex2(203:250,:),cp2(203:250,:),trestbps2(203:250,:),chol3(203:250,:),fbs2(203:250,:),restecg2(203:250,:),thalach2(203:250,:),exang2(203:250,:),oldpeak2(203:250,:),slope2(203:250,:),ca2(203:250,:),thal2(203:250,:)];
 ntest=length(xtest(1,:));
xtest=normalizedata(xtest,ntest);
Ytest=target2(203:250,:)/mean(target2(203:250 ,:));
JFINALtest=costlog(xtest,Ytest,newtheta1)




alpha2=0.01;
B=[age2(1:151,:),sex2(1:151,:),cp2(1:151,:)];
V=[trestbps2(1:151,:),chol3(1:151,:),fbs2(1:151,:),restecg2(1:151,:),thalach2(1:151,:),exang2(1:151,:),oldpeak2(1:151,:),slope2(1:151,1),ca2(1:151,:),thal2(1:151,:)];
Bcv1=[age2(152:202,:),sex2(152:202,:),cp2(152:202,:)];
Vcv1=[trestbps2(152:202,:),chol3(152:202,:),fbs2(152:202,:),restecg2(152:202,:),thalach2(152:202,:),exang2(152:202,:),oldpeak2(152:202,:),slope2(152:202,:),ca2(152:202,:),thal2(152:202,:)];
x2=[ones(151,1),B,B.^2,V];
n2=length(x2(1,:));
newtheta2=zeros(n2,1);
x2=normalizedata(x2,n2);
xcv2=[ones(51,1),Bcv1,Bcv1.^2,Vcv1];
ncv2=length(x2(1,:));
xcv2=normalizedata(xcv2,ncv2);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J2=costlog(x2,Y,newtheta2)
[newtheta2,J_history2]=GradientDescentAlgorithm2(x2,Y,newtheta2,alpha2,J2);
JFINAL2=costlog(xcv2,Ycv,newtheta2)
% plot(1:length(J_history2) , J_history2 , '-b');


x22=[ones(151,1),B,B.^2,B.^3,B.^4,V];
n22=length(x22(1,:));
newtheta22=zeros(n22,1);
x22=normalizedata(x22,n22);
xcv22=[ones(51,1),Bcv1,Bcv1.^2,Bcv1.^3,Bcv1.^4,Vcv1];
ncv22=length(x22(1,:));
xcv22=normalizedata(xcv22,ncv22);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J22=costlog(x22,Y,newtheta22)
[newtheta22,J_history22]=GradientDescentAlgorithm2(x22,Y,newtheta22,alpha2,J22);
JFINAL22=costlog(xcv22,Ycv,newtheta22)
x23=[ones(151,1),B,B.^2,B.^3,B.^4,B.^5,B.^6,B.^7,B.^8,V];
n23=length(x23(1,:));
newtheta23=zeros(n23,1);
x23=normalizedata(x23,n23);
xcv23=[ones(51,1),Bcv1,Bcv1.^2,Bcv1.^3,Bcv1.^4,Bcv1.^5,Bcv1.^6,Bcv1.^7,Bcv1.^8,Vcv1];
ncv23=length(x23(1,:));
xcv23=normalizedata(xcv23,ncv23);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J23=costlog(x23,Y,newtheta23)
[newtheta23,J_history23]=GradientDescentAlgorithm2(x23,Y,newtheta23,alpha2,J23);
JFINAL23=costlog(xcv23,Ycv,newtheta23)
Btest=[age2(203:250,:),sex2(203:250,:),cp2(203:250,:)];
Vtest=[trestbps2(203:250,:),chol3(203:250,:),fbs2(203:250,:),restecg2(203:250,:),thalach2(203:250,:),exang2(203:250,:),oldpeak2(203:250,:),slope2(203:250,:),ca2(203:250,:),thal2(203:250,:)];


xtest2=[ones(48,1),Btest,Btest.^2,Vtest];
ntest2=length(xtest2(1,:));
xtest2=normalizedata(xtest2,ntest2);
Ytest2=target2(203:250,:)/mean(target2(203:250,:));
JFINALtest2=costlog(xtest2,Ytest2,newtheta2)



alpha3=0.01;
B2=[trestbps2(1:151,:),chol3(1:151,:),fbs2(1:151,:)];
V2=[age2(1:151,:),sex2(1:151,:),cp2(1:151,:),trestbps2(1:151,:),chol3(1:151,:),fbs2(1:151,:),restecg2(1:151,:),thalach2(1:151,:),exang2(1:151,:),oldpeak2(1:151,:),slope2(1:151,1),ca2(1:151,:),thal2(1:151,:)];
Bcv2=[trestbps2(152:202,:),chol3(152:202,:),fbs2(152:202,:)];
Vcv2=[age2(152:202,:),sex2(152:202,:),cp2(152:202,:),trestbps2(152:202,:),chol3(152:202,:),fbs2(152:202,:),restecg2(152:202,:),thalach2(152:202,:),exang2(152:202,:),oldpeak2(152:202,:),slope2(152:202,:),ca2(152:202,:),thal2(152:202,:)];
x3=[ones(151,1),B2,B2.^2,V2];
n3=length(x3(1,:));
newtheta3=zeros(n3,1);
x3=normalizedata(x3,n3);
xcv3=[ones(51,1),Bcv2,Bcv2.^2,Vcv2];
ncv3=length(x3(1,:));
xcv3=normalizedata(xcv3,ncv3);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J3=costlog(x3,Y,newtheta3)
[newtheta3,J_history3]=GradientDescentAlgorithm2(x3,Y,newtheta3,alpha3,J3);
JFINAL3=costlog(xcv3,Ycv,newtheta3)
plot(1:length(J_history3) , J_history3 , '-b');


x32=[ones(151,1),B2,B2.^2,B2.^3,B2.^4,V2];
n32=length(x32(1,:));
newtheta32=zeros(n32,1);
x32=normalizedata(x32,n32);
xcv32=[ones(51,1),Bcv2,Bcv2.^2,Bcv2.^3,Bcv2.^4,Vcv2];
ncv32=length(x32(1,:));
xcv32=normalizedata(xcv32,ncv32);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J32=costlog(x32,Y,newtheta32)
[newtheta32,J_history32]=GradientDescentAlgorithm2(x32,Y,newtheta32,alpha2,J32);
JFINAL32=costlog(xcv32,Ycv,newtheta32)
x33=[ones(151,1),B2,B.^2,B2.^3,B2.^4,B2.^5,B2.^6,B2.^7,B2.^8,V2];
n33=length(x33(1,:));
newtheta33=zeros(n33,1);
x33=normalizedata(x33,n33);
xcv33=[ones(51,1),Bcv2,Bcv2.^2,Bcv2.^3,Bcv2.^4,Bcv2.^5,Bcv2.^6,Bcv2.^7,Bcv2.^8,Vcv2];
ncv33=length(x33(1,:));
xcv33=normalizedata(xcv33,ncv33);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J33=costlog(x33,Y,newtheta33)
[newtheta33,J_history33]=GradientDescentAlgorithm2(x33,Y,newtheta33,alpha2,J33);
JFINAL33=costlog(xcv33,Ycv,newtheta33)



alpha4=0.01;
B3=[restecg2(1:151,:),thalach2(1:151,:),exang2(1:151,:)];
V3=[age2(1:151,:),sex2(1:151,:),cp2(1:151,:),trestbps2(1:151,:),chol3(1:151,:),fbs2(1:151,:),oldpeak2(1:151,:),slope2(1:151,1),ca2(1:151,:),thal2(1:151,:)];
Bcv3=[restecg2(152:202,:),thalach2(152:202,:),exang2(152:202,:)];
Vcv3=[age2(152:202,:),sex2(152:202,:),cp2(152:202,:),trestbps2(152:202,:),chol3(152:202,:),fbs2(152:202,:),oldpeak2(152:202,:),slope2(152:202,:),ca2(152:202,:),thal2(152:202,:)];
x4=[ones(151,1),B3,B3.^2,V3];
n4=length(x4(1,:));
newtheta4=zeros(n4,1);
x4=normalizedata(x4,n4);
xcv4=[ones(51,1),Bcv3,Bcv3.^2,Vcv3];
ncv4=length(xcv4(1,:));
xcv4=normalizedata(xcv4,ncv4);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J4=costlog(x4,Y,newtheta4)
[newtheta4,J_history4]=GradientDescentAlgorithm2(x4,Y,newtheta4,alpha4,J4);
JFINAL4=costlog(xcv4,Ycv,newtheta4)
% Btest3=[yr_built(17292:21613,:),yr_renovated(17292:21613,:),zipcode(17292:21613,:),lat(17292:21613,:),long(17292:21613,:),sqft_living15(17292:21613,:),sqft_lot15(17292:21613,:)];
%  Vtest3=[ bedrooms(17292:21613,:),bathrooms(17292:21613,:),sqft_living(17292:21613,:),sqft_lot(17292:21613,:),floors(17292:21613,:),waterfront(17292:21613,:),view1(17292:21613,:),condition(17292:21613,:),grade(17292:21613,:),sqft_above(17292:21613,:),sqft_basement(17292:21613,:)];
% xtest4=[ones(4322,1),Btest3,Btest3.^2,Vtest3];
% ntest4=length(xtest4(1,:));
% xtest4=normalizedata(xtest4,ntest4);
% Ytest4=price(17292:21613,:)/mean(price(17292:21613,:));
% JFINALtest4=cost(xtest4,Ytest4,newtheta4)

 x42=[ones(151,1),B3,B3.^2,B3.^3,B3.^4,V3];
n42=length(x42(1,:));
newtheta42=zeros(n42,1);
x42=normalizedata(x42,n42);
xcv42=[ones(51,1),Bcv3,Bcv3.^2,Bcv3.^3,Bcv3.^4,Vcv3];
ncv42=length(xcv42(1,:));
xcv42=normalizedata(xcv42,ncv42);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J42=costlog(x42,Y,newtheta42)
[newtheta42,J_history42]=GradientDescentAlgorithm2(x42,Y,newtheta42,alpha4,J42);
JFINAL42=costlog(xcv42,Ycv,newtheta42)
 x43=[ones(151,1),B3,B3.^2,B3.^3,B3.^4,B3.^5,B3.^6,B3.^7,B3.^8,V3];
n43=length(x43(1,:));
newtheta43=zeros(n43,1);
x43=normalizedata(x43,n43);
xcv43=[ones(51,1),Bcv3,Bcv3.^2,Bcv3.^3,Bcv3.^4,Bcv3.^5,Bcv3.^6,Bcv3.^7,Bcv3.^8,Vcv3];
ncv43=length(xcv42(1,:));
xcv43=normalizedata(xcv43,ncv43);
Y=target2(1:151,:)/mean(target2(1:151,:));
Ycv=target2(152:202,:)/mean(target2(152:202,:));
J43=costlog(x43,Y,newtheta43)
[newtheta43,J_history43]=GradientDescentAlgorithm2(x43,Y,newtheta43,alpha4,J43);
JFINAL43=costlog(xcv43,Ycv,newtheta43)
Btest3=[restecg2(203:250,:),thalach2(203:250,:),exang2(203:250,:)];
Vtest3=[age2(203:250,:),sex2(203:250,:),cp2(203:250,:),trestbps2(203:250,:),chol3(203:250,:),fbs2(203:250,:),oldpeak2(203:250,:),slope2(203:250,:),ca2(203:250,:),thal2(203:250,:)];
xtest4=[ones(48,1),Btest3,Btest3.^2,Btest3.^3,Btest3.^4,Btest3.^5,Btest3.^6,Btest3.^7,Btest3.^8,Vtest3];
ntest4=length(xtest4(1,:));
xtest4=normalizedata(xtest4,ntest4);
Ytest4=target2(203:250,:)/mean(target2(203:250,:));
JFINALtest4=costlog(xtest4,Ytest4,newtheta43)

JFINAL22
