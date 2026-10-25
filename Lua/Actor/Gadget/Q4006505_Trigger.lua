require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006505_Trigger = class("Q4006505_Trigger", GadgetActorProxy)
Q4006505_Trigger.defaultAlias = "Q4006505_Trigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local gadgets = Q40065ClientConfig.Gadgets
local datas = Q40065ClientConfig.Datas

function Q4006505_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006505_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006505_Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("40065")
    actor:CreateQuestNpcById(4006505, npcs.Npc1032Data.id, 1)
    actor:RequestInteraction(npcs.Npc1032Data.alias)
    self:DestroySelf()
end

function Q4006505_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006505_Trigger
