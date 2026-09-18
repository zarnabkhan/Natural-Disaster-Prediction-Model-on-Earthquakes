function [TP, FP, TN, FN, sens, spec, ppv, npv, Acc, MCC, RScore] = Contingency_Table(actual, predicted)

actual = actual(:);
predicted = predicted(:);

TP = sum(actual == 1 & predicted == 1);
FP = sum(actual == 0 & predicted == 1);
TN = sum(actual == 0 & predicted == 0);
FN = sum(actual == 1 & predicted == 0);

if (TP + FN) == 0
    sens = 0;
else
    sens = TP / (TP + FN);
end

if (TN + FP) == 0
    spec = 0;
else
    spec = TN / (TN + FP);
end

if (TP + FP) == 0
    ppv = 0;
else
    ppv = TP / (TP + FP);
end

if (TN + FN) == 0
    npv = 0;
else
    npv = TN / (TN + FN);
end

total = TP + FP + TN + FN;
if total == 0
    Acc = 0;
else
    Acc = (TP + TN) / total;
end

mcc_den = sqrt((TP + FP) * (TP + FN) * (TN + FP) * (TN + FN));
if mcc_den == 0
    MCC = 0;
else
    MCC = (TP * TN - FP * FN) / mcc_den;
end

r_den = (TP + FN) * (FP + TN);
if r_den == 0
    RScore = 0;
else
    RScore = (TP * TN - FP * FN) / r_den;
end

end
