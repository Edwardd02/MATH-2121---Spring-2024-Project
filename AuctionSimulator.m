classdef AuctionSimulator
    properties (Access = private)
        arrAuctionLots % Array of Product objects
        arrBidders % Array of Bidder objects
        MaxRounds % Maximum number of bidding rounds
    end
    
    methods
        % Constructor method to initialize the simulation
        function obj = AuctionSimulator(arrAuctionLots, arrBidders, maxRounds)
            obj.arrAuctionLots = arrAuctionLots;
            obj.arrBidders = arrBidders;
            obj.MaxRounds = maxRounds;
        end
        
        % Method to run the simulation
        function run(obj) 
            for lot = 1:length(obj.arrAuctionLots) % loop through Lots
                for round = 1:obj.MaxRounds % loop through rounds
                    disp(['Round ' num2str(round) ':']); % Display round
                    for i = 1:length(obj.arrBidders) % loop through bidders
                        % placeBid(obj,
                        % currentBid,leadingBidderID)
                        obj.arrBidders(i).placeBid(...
                            obj.arrAuctionLots(lot).getCurrentBid,...
                            obj.arrAuctionLots(lot).getLeadingBidder);
                        
                        if obj.arrBidders(i).getCurrentBid > obj.arrAuctionLots(lot).getCurrentBid
                            obj.arrAuctionLots(lot).setCurrentBid(currentBidderBid);
                            obj.arrAuctionLots(lot).setLeadingBidder(obj.arrBidders(i).getID);
                        end
                    end
                end
            end
        end
    end
end

