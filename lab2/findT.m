function [T] = findT(nums)

a = nums(1);
for i=2:1:length(nums)
    if nums(i) == a
        T = i-1;
        break;
    end
end

disp('������ �����');
disp(T);
end

