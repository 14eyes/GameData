require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600431Trigger = class("Q7600431Trigger", GadgetActorProxy)
Q7600431Trigger.defaultAlias = "Q7600431Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600431Trigger:OnPostDataPrepare()
    print("Q7600431Trigger - OnPostDataPrepare")
    this = self
end

function Q7600431Trigger:OnPostComponentPrepare()
    print("Q7600431Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600431Trigger:TriggerIn()
    print("Q7600431Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600431)
    this:DestroySelf()
end

function Q7600431Trigger:PreTriggerIn()
    print("Q7600431Trigger - PreTriggerIn")
end

function Q7600431Trigger:LightUpTriggerIn()
    print("Q7600431Trigger - LightUpTriggerIn")
end

function Q7600431Trigger:TriggerOut()
    print("Q7600431Trigger - TriggerOut")
end

return Q7600431Trigger
