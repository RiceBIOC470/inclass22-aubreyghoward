%Inclass 22
clear all

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

expcase = [1,4,8];
ku = 0; kb = 6;
x = 0:0.1:10;
for ii = 1:3
    gx = (ku+kb*x.^expcase(ii))./(1+x.^expcase(ii))-x;
    plot(x,gx,'LineWidth',3);hold on;
end
xlabel('ku'); ylabel('g(x)'); set(gca,'FontSize',18);
legend('TF copy: 1', 'TF copy: 4', 'TF copy: 8');
plot([0 10],[0 0],'k','LineWidth',3); hold off;


%Adam Howard: With one transcription factor bound, the zero points of the
%graph(eg at equilibirum) are at Ku = zero and Ku around 5. As we increase
%the number of binding transcription factors (in the case with 4 and 8), we
%see that the equilibrium point is shifted out out to kU = 6. 


% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 
figure(2);
ku = 0; kb = 6;
x = 0:0.1:10;
gx = (ku+kb*x.^2)./(1+x.^2)-(x.^2);5 %NB: the repressor gets squared.
plot(x,gx,'LineWidth',3);hold on;
xlabel('x'); ylabel('g(x)'); set(gca,'FontSize',18);
plot([0 10],[0 0],'k','LineWidth',3); hold on;
legend('T-Repressor: 1','0 line'); hold off;


