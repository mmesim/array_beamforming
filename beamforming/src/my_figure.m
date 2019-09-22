function []=my_figure(a,Sx,Sy,S,baz)
%2-D color plot
%Amplitues Vs Sx,Sy
%--------------------------------------------------------------------------
%create a mesh plot
x=a(:,1); y=a(:,2); z=a(:,3);
[xx,yy]=meshgrid(min(x):0.1:max(x), min(y):0.1:max(y));
zz=griddata(x,y,z,xx,yy,'v4');
%-----------------------------------------------------
%Maximum Sx Sy
[~,ind]=max(a(:,3));
figure
surf(xx,yy,zz,'LineStyle','none')
view([0 90])
colormap(jet)
xlabel('S_x (s/^o)')
ylabel('S_y (s/^o)')
set(gca,'FontSize',14)
colorbar
hold on
%plot: Sx, Sy, amplitude, marker size, marker type, color, color
h=scatter3(a(ind,1),a(ind,2),a(ind,3),150,'h','MarkerEdgeColor','k','MarkerFaceColor','y');

title(sprintf('S_x:%5.2f (s/^o) S_y:%5.2f (s/^o) \n |S|=%5.2f (s/^o) Baz=%5.2f^o',Sx,Sy,S,baz))

end