require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603601Trigger_1 = class("Q603601Trigger_1", GadgetActorProxy)
Q603601Trigger_1.defaultAlias = "Q603601Trigger_1"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603601Trigger_1:OnPostDataPrepare()
    print("Q603601Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q603601Trigger_1:OnPostComponentPrepare()
    print("Q603601Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603601Trigger_1:TriggerIn()
    print("Q603601Trigger_1 - TriggerIn")
end

function Q603601Trigger_1:PreTriggerIn()
    print("Q603601Trigger_1 - PreTriggerIn")
end

function Q603601Trigger_1:LightUpTriggerIn()
    print("Q603601Trigger_1 - LightUpTriggerIn")
    actorMgr:GetActor("6036"):CreateQuestNpcById(603601, 16975, 0, false, 0)
    actorMgr:GetActor("6036"):RequestInteraction(npcs.Npc16975.alias, "", true)
    this:DestroySelf()
end

function Q603601Trigger_1:TriggerOut()
    print("Q603601Trigger_1 - TriggerOut")
end

return Q603601Trigger_1
