require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008104Trigger = class("Q4008104Trigger", GadgetActorProxy)
Q4008104Trigger.defaultAlias = "Q4008104Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008104Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008104Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(60, 50, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008104Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008104)
    self:DestroySelf()
end

function Q4008104Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008104Trigger
