require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302013FollowFinish = class("Q302013FollowFinish", GadgetActorProxy)
Q302013FollowFinish.defaultAlias = "Q302013FollowFinish"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q302013FollowFinish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302013FollowFinish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302013FollowFinish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302013)
    self:DestroySelf()
end

function Q302013FollowFinish:TriggerOut()
    print("TriggerOut")
end

return Q302013FollowFinish
