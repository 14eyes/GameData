require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007211_Trigger = class("Q4007211_Trigger", GadgetActorProxy)
Q4007211_Trigger.defaultAlias = "Q4007211_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007211_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007211_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(37.17, 28.98776, 12.45372, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007211_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007211)
    self:DestroySelf()
end

function Q4007211_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007211_Trigger
