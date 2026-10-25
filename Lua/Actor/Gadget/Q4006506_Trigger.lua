require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006506_Trigger = class("Q4006506_Trigger", GadgetActorProxy)
Q4006506_Trigger.defaultAlias = "Q4006506_Trigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local datas = Q40065ClientConfig.Datas

function Q4006506_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006506_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(47.95647, 35.16321, 27.65184, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006506_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40065")
    actor:CreateQuestNpcById(4006506, npcs.Npc1042Data.id, 1)
    actor:RequestInteraction(npcs.Npc1042Data.alias)
    self:DestroySelf()
end

function Q4006506_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006506_Trigger
