require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1914609Trigger = class("Q1914609Trigger", GadgetActorProxy)
Q1914609Trigger.defaultAlias = "Q1914609Trigger"
local Q19146ClientConfig = require("Quest/Client/Q19146ClientConfig")

local subIDs = Q19146ClientConfig.SubIDs
local npcs = Q19146ClientConfig.Npcs
local datas = Q19146ClientConfig.Datas

function Q1914609Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1914609Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(9.08, 18.46, 4.3, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1914609Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("19146")
    actor:CreateQuestNpcById(1914609, npcs.Coop_ShinobuData.id, 1)
    actor:RequestInteraction(npcs.Coop_ShinobuData.alias)
    self:DestroySelf()
end

function Q1914609Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1914609Trigger
