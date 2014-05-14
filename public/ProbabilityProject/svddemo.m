%SVDDEMO Demonstration of SVD compression. 

%   Copyright (c) 2011 by Robert M. Nickel
%   $Revision: 1.0 $
%   $Date: 19-Nov-2011 $

%   File History/Comments:
%   created   19-Nov-2011 13:22:57
%             on MATLAB 7.11.0.584 (R2010b) for MACI64
%   modified  (N/A)

% read the image
%A=imread('Class_of_2011.bmp'); plotform=210; 
A=imread('lion.bmp'); plotform=120;

% divide up into RGB values
A1=double(A(:,:,1)); A2=double(A(:,:,2)); A3=double(A(:,:,3));

% extract the image diemnsions
M=size(A1,1); N=size(A1,2); K=min(size(A1));

% compute the SVD in each of the RGB values
[U1,S1,V1]=svd(double(A1));
[U2,S2,V2]=svd(double(A2));
[U3,S3,V3]=svd(double(A3));

% initialize the reconstruction
AQ1=zeros(size(A1)); AQ2=AQ1; AQ3=AQ1;
AP1=zeros(size(A1)); AP2=AP1; AP3=AP1;

% define the quit flag
QF=0; TotPix=length(A1(:));

% define the stop-point fractions
SPF=[ 10000 20 10 5 3 2 0 ]; spf=1;

% loop through the dimensions
for k=1:K;
    % compute the equivalent number of sent pixels
    NuPix=k*(M+N+1); if NuPix<prod(size(A1));
        % assign the pixelated version
        AP1(1:NuPix)=A1(1:NuPix);
        AP2(1:NuPix)=A2(1:NuPix);
        AP3(1:NuPix)=A3(1:NuPix);
    else
        AP1=A1; AP2=A2; AP3=A3; QF=1;
    end
    % add in the next SVD component
    AQ1=AQ1+S1(k,k)*U1(:,k)*V1(:,k)';
    AQ2=AQ2+S2(k,k)*U2(:,k)*V2(:,k)';
    AQ3=AQ3+S3(k,k)*U3(:,k)*V3(:,k)';
    % reconstruct the RGB value for the SVD image
    AQ=uint8(cat(3,round(AQ1),round(AQ2),round(AQ3)));
    % reconstruct the RGB value for the pixelated image
    AP=uint8(cat(3,fix(AP1),fix(AP2),fix(AP3)));
    % compute the percentage
    Perc=round(1000*NuPix/TotPix)/10;
    % display the pixelated image
    subplot(plotform+1);
    image(AP); axis square; box on; axis image
    set(gca,'XTick',[],'YTick',[]);
    title('Pixel-by-Pixel Transmission');
    xlabel(['Data Sent: ',num2str(Perc),'%']);
    % display the SVD image
    if ~QF; subplot(plotform+2); image(AQ);
        axis square; box on; axis image;
        set(gca,'XTick',[],'YTick',[]);
        % wait for key to be pressed
        title('SVD-Based Transmission');
        xlabel(['Data Sent: ',num2str(Perc),'%']);
    end
    drawnow; if QF; break; end
    % check if stop-point fraction is reached
    if NuPix>=TotPix/SPF(spf); pause; spf=spf+1; end
end

% correct the numbers sent for the pixel-by-pixel cases
subplot(plotform+1); xlabel(['Data Sent: 100%']);
