require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4008107Trigger = class("Q4008107Trigger", GadgetActorProxy)
Q4008107Trigger.defaultAlias = "Q4008107Trigger"
local Q40081ClientConfig = require("Quest/Client/Q40081ClientConfig")

local subIDs = Q40081ClientConfig.SubIDs
local npcs = Q40081ClientConfig.Npcs
local datas = Q40081ClientConfig.Datas

function Q4008107Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4008107Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(60, 60, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4008107Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4008107)
    self:DestroySelf()
end

function Q4008107Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4008107Trigger
