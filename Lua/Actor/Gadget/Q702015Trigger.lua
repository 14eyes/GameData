require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q702015Trigger = class("Q702015Trigger", GadgetActorProxy)
Q702015Trigger.defaultAlias = "Q702015Trigger"
local Q7020ClientConfig = require("Quest/Client/Q7020ClientConfig")

local this
local subIDs = Q7020ClientConfig.SubIDs
local datas = Q7020ClientConfig.Datas
local npcs = Q7020ClientConfig.Npcs
local points = Q7020ClientConfig.Points

function Q702015Trigger:OnPostDataPrepare()
    print("Q702015Trigger - OnPostDataPrepare")
    this = self
end

function Q702015Trigger:OnPostComponentPrepare()
    print("Q702015Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7020)
end

function Q702015Trigger:TriggerIn()
    print("Q702015Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {702015})
    this:DestroySelf()
end

function Q702015Trigger:PreTriggerIn()
    print("Q702015Trigger - PreTriggerIn")
end

function Q702015Trigger:LightUpTriggerIn()
    print("Q702015Trigger - LightUpTriggerIn")
end

function Q702015Trigger:TriggerOut()
    print("Q702015Trigger - TriggerOut")
end

return Q702015Trigger
