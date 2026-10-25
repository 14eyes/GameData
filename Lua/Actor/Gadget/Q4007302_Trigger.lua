require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007302_Trigger = class("Q4007302_Trigger", GadgetActorProxy)
Q4007302_Trigger.defaultAlias = "Q4007302_Trigger"
local Q40073ClientConfig = require("Quest/Client/Q40073ClientConfig")

local subIDs = Q40073ClientConfig.SubIDs
local npcs = Q40073ClientConfig.Npcs
local datas = Q40073ClientConfig.Datas

function Q4007302_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007302_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(23.5, 15, 8, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007302_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40073"):RequestInteraction(npcs.Npc12630Data.alias)
    self:DestroySelf()
end

function Q4007302_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007302_Trigger
