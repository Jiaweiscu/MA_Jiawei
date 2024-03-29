% Test for Langchange right
S = xlsread('..Data\Ergebnisse-1023.xls','Ergebnisse-1023','A:A');
R = xlsread('..Data\Reference_Signale.xls','Reference_Signale','A4:A800');
% M: the length of sequence Q Sampling data
% N: the length of sequence C Reference signal
M = length(Q);
N = length(C);

windLen = N; % Window length
start_id = 1;
end_id = N;


nrOfLoop = floor(M/N); % Number of loops

for i = 1:nrOfLoop
   S = xlsread('..Data\Ergebnisse-1023.xls','Ergebnisse-1023','start_id:end_id');
   R = xlsread('..Data\Reference_Signale.xls','Reference_Signale','A4:A800');
   d  = dtw(S,R,w);
   start_id = start_id + windLen;
   end_id = end_id + windLen;
   
   
end