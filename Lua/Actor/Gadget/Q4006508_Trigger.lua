require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006508_Trigger = class("Q4006508_Trigger", GadgetActorProxy)
Q4006508_Trigger.defaultAlias = "Q4006508_Trigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local gadgets = Q40065ClientConfig.Gadgets
local datas = Q40065ClientConfig.Datas

function Q4006508_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006508_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(29.69056, 28.85332, 21.12899, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006508_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40065")
    actor:CreateQuestNpcById(4006508, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006508_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006508_Trigger
