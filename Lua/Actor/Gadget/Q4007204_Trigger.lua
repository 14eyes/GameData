require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007204_Trigger = class("Q4007204_Trigger", GadgetActorProxy)
Q4007204_Trigger.defaultAlias = "Q4007204_Trigger"
local Q40072ClientConfig = require("Quest/Client/Q40072ClientConfig")

local subIDs = Q40072ClientConfig.SubIDs
local npcs = Q40072ClientConfig.Npcs
local datas = Q40072ClientConfig.Datas

function Q4007204_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007204_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(27.46733, 20.74646, 11.16854, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007204_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40072")
    actor:CreateQuestNpcById(4007204, npcs.Npc1032Data.id, 1)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4007204_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007204_Trigger
