function cost=cost_ITAE(k)
    assignin('base','k',k);
    t= evalin('base', 't');
    sim('elevator_ITAE',t);
    cost=ITAE(length(ITAE));
end