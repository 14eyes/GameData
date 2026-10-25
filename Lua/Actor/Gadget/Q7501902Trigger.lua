require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7501902Trigger = class("Q7501902Trigger", GadgetActorProxy)
Q7501902Trigger.defaultAlias = "Q7501902Trigger"
local Q75019ClientConfig = require("Quest/Client/Q75019ClientConfig")

local this
local subIDs = Q75019ClientConfig.SubIDs
local npcs = Q75019ClientConfig.Npcs
local datas = Q75019ClientConfig.Datas

function Q7501902Trigger:OnPostDataPrepare()
    print("[MainId: 75019][Trigger: Q7501902Trigger] OnPostDataPrepare")
    this = self
end

function Q7501902Trigger:OnPostComponentPrepare()
    print("[MainId: 75019][Trigger: Q7501902Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(57.22497, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75019)
end

function Q7501902Trigger:TriggerIn()
    print("[MainId: 75019][Trigger: Q7501902Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7501902)
    this:DestroySelf()
end

function Q7501902Trigger:PreTriggerIn()
    print("[MainId: 75019][Trigger: Q7501902Trigger] PreTriggerIn")
end

function Q7501902Trigger:LightUpTriggerIn()
    print("[MainId: 75019][Trigger: Q7501902Trigger] LightUpTriggerIn")
end

function Q7501902Trigger:TriggerOut()
    print("[MainId: 75019][Trigger: Q7501902Trigger] TriggerOut")
end

return Q7501902Trigger
