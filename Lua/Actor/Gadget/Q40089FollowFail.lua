require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089FollowFail = class("Q40089FollowFail", GadgetActorProxy)
Q40089FollowFail.defaultAlias = "Q40089FollowFail"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089FollowFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089FollowFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089FollowFail:TriggerIn()
    print("TriggerIn")
end

function Q40089FollowFail:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 4008915)
    actorUtils.FinishQuestID(true, 4008916)
    actorUtils.FinishQuestID(true, 4008917)
    this:DestroySelf()
end

return Q40089FollowFail
