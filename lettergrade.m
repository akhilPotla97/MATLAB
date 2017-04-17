function grade = lettergrade(score)
%   function grade = lettergrade(score)
%   Input: score, the numerical grade the student has received
%   Output: grade, the letter that the student's score corresponds to

%   Checks which range the score falls in and returns appropiate grade
if score > 100 || score < 0
    grade = 'This grade is not possible';
    disp(grade)
    return;
elseif score >= 90
    grade = 'A';
elseif score >= 80
    grade = 'B';
elseif score >= 70
    grade = 'C';
elseif score >= 60
    grade = 'D';
else
    grade = 'E';
    
fprintf('Your grade is ')
disp(grade);

end

