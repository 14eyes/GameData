require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007116_Trigger = class("Q4007116_Trigger", GadgetActorProxy)
Q4007116_Trigger.defaultAlias = "Q4007116_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local gadgets = Q40071ClientConfig.Gadgets
local datas = Q40071ClientConfig.Datas

function Q4007116_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007116_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007116_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007116)
    self:DestroySelf()
end

function Q4007116_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007116_Trigger
