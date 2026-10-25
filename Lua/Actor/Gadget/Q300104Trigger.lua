require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q300104Trigger = class("Q300104Trigger", GadgetActorProxy)
Q300104Trigger.defaultAlias = "Q300104Trigger"
local Q3001ClientConfig = require("Quest/Client/Q3001ClientConfig")

local subIDs = Q3001ClientConfig.SubIDs
local npcs = Q3001ClientConfig.Npcs
local datas = Q3001ClientConfig.Datas

function Q300104Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q300104Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(5, 5, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q300104Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 300104)
    self:DestroySelf()
end

function Q300104Trigger:TriggerOut()
    print("TriggerOut")
end

return Q300104Trigger
