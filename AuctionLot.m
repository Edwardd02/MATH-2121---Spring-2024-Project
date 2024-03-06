classdef AuctionLot
    properties (Access = private)
        lotID string
        startingBid double
        currentBid double
        minIncrement double
        leadingBidder double 
    end
    
    methods
        % Constructor method to create a new product
        function obj = AuctionLot(lotID, startingBid, minIncrement)
            obj.lotID = lotID;
            obj.startingBid = startingBid;
            obj.currentBid = startingBid; 
            % Initial current bid is the starting bid
            obj.minIncrement = minIncrement;
            obj.leadingBidder = -1; 
            % Initialized with a dummy bidder
        end
        
        % Method to update the current bid
        % function obj = updateBid(obj, newBid, bidder)
        %     if newBid > (obj.currentBid * (1 + obj.minIncrement))
        %         error('New bid must be higher than the current bid.');
        %     else
        %         obj.currentBid = newBid;
        %         obj.leadingBidder = bidder;
        %     end
        % end
        
        function description = toString(obj)
            % This function now returns a string instead of modifying the object or directly displaying.
            description = ['Lot ID: ', num2str(obj.lotID), ...
                ', Starting Bid: ', num2str(obj.startingBid), ...
                ', Current Bid: ', num2str(obj.currentBid), ...
                ', Leading Bidder ID:', num2str(obj.leadingBidder)];
            disp(description);  % If you want to print it directly as well
        end

        function currentBid = getCurrentBid(obj)
            currentBid = obj.currentBid;
        end

        function leadingBidder = getLeadingBidder(obj)
            leadingBidder = obj.leadingBidder;
        end
    end
end
