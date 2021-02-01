%hw2 MATLAB code

%1 - find all bits of x1, x2 and 16,
%    where x1 > 16, and x2 <16

format long

bitRepresentationSixteen = num2bitchar(16);
bitRepresentationMachineEps = num2bitchar(eps(16));
x1Bit = num2bitchar(16+eps(16));
x2Bit = num2bitchar(16-eps(16));
x1Value = 16+eps(16);
x2Value = 16-eps(16);

fprintf('Q1\n')
fprintf('The smallest representable change from 16 is eps(16) As a direct consequence\n')
fprintf('this means x1 = 16+eps(16) and x2 = 16-eps(16), are the only two additional \n')
fprintf('real numbers (that can be represented) in the range [16-eps(16),16+eps(16)]\n\n')

fprintf('The binary representation of 16 is \n%s\n\n', bitRepresentationSixteen)
fprintf('The binary representation of x1 > 16 is \n%s\n\n', x1Bit)
fprintf('The binary representation of x2 < 16 is \n%s\n\n', x2Bit)
fprintf('The value of x1 is %.15f \n\n',x1Value)
fprintf('The value of x2 is %.15f \n\n',x2Value)
fprintf('Observe eps(16) == 16*eps. The following variable (multipleEPS) is set to the\nlogical condition eps(16) == 16*eps')
multipleEPS = eps(16) == 16*eps


%2 - rearrange 1.0000001 - \sqrt{1.0000002}
a = 1+10^-7;
b = 1+2*10^-7;

originalExpressionEvaluation = a - sqrt(b)

reworkedExpressionEvaluation = (a^2 - b)/(a + sqrt(b))