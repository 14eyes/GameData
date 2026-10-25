require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302019FollowFinish = class("Q302019FollowFinish", GadgetActorProxy)
Q302019FollowFinish.defaultAlias = "Q302019FollowFinish"
local Q3020ClientConfig = require("Quest/Client/Q3020ClientConfig")

local subIDs = Q3020ClientConfig.SubIDs
local npcs = Q3020ClientConfig.Npcs
local datas = Q3020ClientConfig.Datas

function Q302019FollowFinish:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302019FollowFinish:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302019FollowFinish:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302019)
    self:DestroySelf()
end

function Q302019FollowFinish:TriggerOut()
    print("TriggerOut")
end

return Q302019FollowFinish
