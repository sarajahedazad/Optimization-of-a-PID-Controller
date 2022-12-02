function cost=cost_ISE(k)
    assignin('base','k',k);
    t= evalin('base', 't');
    sim('elevator_ISE',t);
    cost=ISE(length(ISE));
end