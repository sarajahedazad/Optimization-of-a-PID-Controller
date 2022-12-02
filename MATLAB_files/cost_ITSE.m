function cost=cost_ITSE(k)
    assignin('base','k',k);
    t= evalin('base', 't');
    sim('elevator_ITSE',t);
    cost=ITSE(length(ITSE));
end