require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007005_Trigger = class("Q4007005_Trigger", GadgetActorProxy)
Q4007005_Trigger.defaultAlias = "Q4007005_Trigger"
local Q40070ClientConfig = require("Quest/Client/Q40070ClientConfig")

local subIDs = Q40070ClientConfig.SubIDs
local npcs = Q40070ClientConfig.Npcs
local datas = Q40070ClientConfig.Datas

function Q4007005_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007005_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(40, 10, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007005_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40070"):RequestInteraction(npcs.Npc12623Data.alias)
    self:DestroySelf()
end

function Q4007005_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007005_Trigger
