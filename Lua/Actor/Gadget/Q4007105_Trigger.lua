require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007105_Trigger = class("Q4007105_Trigger", GadgetActorProxy)
Q4007105_Trigger.defaultAlias = "Q4007105_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local datas = Q40071ClientConfig.Datas

function Q4007105_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007105_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(13.155, 5, 7.182589, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007105_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007105)
    self:DestroySelf()
end

function Q4007105_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007105_Trigger
