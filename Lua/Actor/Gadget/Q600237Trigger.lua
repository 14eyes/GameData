require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600237Trigger = class("Q600237Trigger", GadgetActorProxy)
Q600237Trigger.defaultAlias = "Q600237Trigger"
local Q6002ClientConfig = require("Quest/Client/Q6002ClientConfig")

local this
local subIDs = Q6002ClientConfig.SubIDs
local datas = Q6002ClientConfig.Datas
local npcs = Q6002ClientConfig.Npcs
local points = Q6002ClientConfig.Points

function Q600237Trigger:OnPostDataPrepare()
    print("Q600237Trigger - OnPostDataPrepare")
    this = self
end

function Q600237Trigger:OnPostComponentPrepare()
    print("Q600237Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(8.987072, 6.607564, 5.3621225, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6002)
end

function Q600237Trigger:TriggerIn()
    print("Q600237Trigger - TriggerIn")
    actorMgr:GetActor("6002"):CreateQuestNpcById(600237, npcs.Npc15381.id, 0, false, 0)
    actorMgr:GetActor("6002"):RequestInteraction(npcs.Npc15381.alias, "", true)
    this:DestroySelf()
end

function Q600237Trigger:PreTriggerIn()
    print("Q600237Trigger - PreTriggerIn")
end

function Q600237Trigger:LightUpTriggerIn()
    print("Q600237Trigger - LightUpTriggerIn")
end

function Q600237Trigger:TriggerOut()
    print("Q600237Trigger - TriggerOut")
end

return Q600237Trigger
