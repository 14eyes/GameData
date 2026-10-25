require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007209_Trigger = class("Q4007209_Trigger", GadgetActorProxy)
Q4007209_Trigger.defaultAlias = "Q4007209_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007209_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007209_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(50, 50, 29.40121, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007209_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007209)
    self:DestroySelf()
end

function Q4007209_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007209_Trigger
