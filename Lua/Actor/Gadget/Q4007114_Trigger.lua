require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007114_Trigger = class("Q4007114_Trigger", GadgetActorProxy)
Q4007114_Trigger.defaultAlias = "Q4007114_Trigger"
local Q40071ClientConfig = require("Quest/Client/Q40071ClientConfig")

local subIDs = Q40071ClientConfig.SubIDs
local npcs = Q40071ClientConfig.Npcs
local gadgets = Q40071ClientConfig.Gadgets
local datas = Q40071ClientConfig.Datas

function Q4007114_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007114_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(16.54633, 14.05419, 5.755691, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007114_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40071"):RequestInteraction(npcs.Npc12627Data.alias)
    self:DestroySelf()
end

function Q4007114_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007114_Trigger
