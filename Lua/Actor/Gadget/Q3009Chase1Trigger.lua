require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3009Chase1Trigger = class("Q3009Chase1Trigger", GadgetActorProxy)
Q3009Chase1Trigger.defaultAlias = "Q3009Chase1Trigger"
local Q3009ClientConfig = require("Quest/Client/Q3009ClientConfig")

local subIDs = Q3009ClientConfig.SubIDs
local npcs = Q3009ClientConfig.Npcs
local datas = Q3009ClientConfig.Datas

function Q3009Chase1Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q3009Chase1Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3009Chase1Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("3009")
    actor:CreateQuestNpcById(300902, npcs.Npc12912Data.id, 0)
    actor:RequestInteraction(npcs.Npc12912Data.alias)
    self:DestroySelf()
end

function Q3009Chase1Trigger:TriggerOut()
    print("TriggerOut")
end

return Q3009Chase1Trigger
