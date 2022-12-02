function cost=cost_IAE(k)
    assignin('base','k',k);
    t= evalin('base', 't');
    sim('elevator_IAE',t);
    cost=IAE(length(IAE));
end