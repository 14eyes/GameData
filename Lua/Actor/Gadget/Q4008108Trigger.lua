require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008108Trigger = class("Q4008108Trigger", GadgetActorProxy)
Q4008108Trigger.defaultAlias = "Q4008108Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008108Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008108Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(65, 60, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008108Trigger:TriggerIn()
    print("TriggerIn")
end

function Q4008108Trigger:TriggerOut()
    print("TriggerOut")
    actorUtils.FinishQuestID(true, 4008108)
    self:DestroySelf()
end

return Q4008108Trigger
