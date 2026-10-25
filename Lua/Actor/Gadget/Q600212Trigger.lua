require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600212Trigger = class("Q600212Trigger", GadgetActorProxy)
Q600212Trigger.defaultAlias = "Q600212Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600212Trigger:OnPostDataPrepare()
    print("Q600212Trigger - OnPostDataPrepare")
    this = self
end

function Q600212Trigger:OnPostComponentPrepare()
    print("Q600212Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(22, 34, 44, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600212Trigger:TriggerIn()
    print("Q600212Trigger - TriggerIn")
    actorMgr:GetActor("6002"):CreateQuestNpcById(600212, npcs.Npc1315.id, 0, false, 0)
    actorMgr:GetActor("6002"):RequestInteraction(npcs.Npc1315.alias, "", true)
    this:DestroySelf()
end

function Q600212Trigger:PreTriggerIn()
    print("Q600212Trigger - PreTriggerIn")
end

function Q600212Trigger:LightUpTriggerIn()
    print("Q600212Trigger - LightUpTriggerIn")
end

function Q600212Trigger:TriggerOut()
    print("Q600212Trigger - TriggerOut")
end

return Q600212Trigger
