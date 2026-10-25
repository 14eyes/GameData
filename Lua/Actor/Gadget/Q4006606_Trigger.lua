require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006606_Trigger = class("Q4006606_Trigger", GadgetActorProxy)
Q4006606_Trigger.defaultAlias = "Q4006606_Trigger"
local Q40066ClientConfig = require("Quest/Client/Q40066ClientConfig")

local subIDs = Q40066ClientConfig.SubIDs
local npcs = Q40066ClientConfig.Npcs
local datas = Q40066ClientConfig.Datas

function Q4006606_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006606_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(22, 34.03788, 26.01046, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006606_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40066"):RequestInteraction(npcs.Npc12611Data.alias)
    self:DestroySelf()
end

function Q4006606_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006606_Trigger
