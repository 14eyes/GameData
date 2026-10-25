require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600432Trigger = class("Q7600432Trigger", GadgetActorProxy)
Q7600432Trigger.defaultAlias = "Q7600432Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600432Trigger:OnPostDataPrepare()
    print("Q7600432Trigger - OnPostDataPrepare")
    this = self
end

function Q7600432Trigger:OnPostComponentPrepare()
    print("Q7600432Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600432Trigger:TriggerIn()
    print("Q7600432Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600432)
    this:DestroySelf()
end

function Q7600432Trigger:PreTriggerIn()
    print("Q7600432Trigger - PreTriggerIn")
end

function Q7600432Trigger:LightUpTriggerIn()
    print("Q7600432Trigger - LightUpTriggerIn")
end

function Q7600432Trigger:TriggerOut()
    print("Q7600432Trigger - TriggerOut")
end

return Q7600432Trigger
