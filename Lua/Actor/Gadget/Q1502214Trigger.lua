require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502214Trigger = class("Q1502214Trigger", GadgetActorProxy)
Q1502214Trigger.defaultAlias = "Q1502214Trigger"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502214Trigger:OnPostDataPrepare()
    print("Q1502214Trigger - OnPostDataPrepare")
    this = self
end

function Q1502214Trigger:OnPostComponentPrepare()
    print("Q1502214Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(35, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502214Trigger:TriggerIn()
    print("Q1502214Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502214)
    this:DestroySelf()
end

function Q1502214Trigger:PreTriggerIn()
    print("Q1502214Trigger - PreTriggerIn")
end

function Q1502214Trigger:LightUpTriggerIn()
    print("Q1502214Trigger - LightUpTriggerIn")
end

function Q1502214Trigger:TriggerOut()
    print("Q1502214Trigger - TriggerOut")
end

return Q1502214Trigger
