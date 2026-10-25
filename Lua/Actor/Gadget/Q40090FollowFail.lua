require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090FollowFail = class("Q40090FollowFail", GadgetActorProxy)
Q40090FollowFail.defaultAlias = "Q40090FollowFail"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090FollowFail:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090FollowFail:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40090FollowFail:TriggerIn()
    print("TriggerIn")
end

function Q40090FollowFail:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40090FollowFail:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40090FollowFail:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 4009003)
    actorUtils.FinishQuestID(true, 4009021)
    actorUtils.FinishQuestID(true, 4009030)
    this:DestroySelf()
end

return Q40090FollowFail
