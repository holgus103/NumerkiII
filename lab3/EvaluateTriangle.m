function S = EvaluateTriangle(A, B, C, f)
    M = [
            1 1 1
            A(1) B(1) C(1)
            A(2) B(2) C(2)
        ];
    P = abs(det(M))/2;
    P01 = (A + B)/2;
    P02 = (A + C)/2;
    P12 = (B + C)/2;
    sum = 0;
    v = [P01, P02, P12];
    for i = 1:3
        x = v((i - 1)*2 + 1);
        y = v((i - 1)*2 + 2);
        sum = sum + eval(f);
    end
    S = P * sum / 3;
end

