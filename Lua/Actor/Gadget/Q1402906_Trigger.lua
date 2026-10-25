require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402906_Trigger = class("Q1402906_Trigger", GadgetActorProxy)
Q1402906_Trigger.defaultAlias = "Q1402906_Trigger"
local Q14029ClientConfig = require("Quest/Client/Q14029ClientConfig")

local this
local subIDs = Q14029ClientConfig.SubIDs
local datas = Q14029ClientConfig.Datas
local npcs = Q14029ClientConfig.Npcs
local points = Q14029ClientConfig.Points

function Q1402906_Trigger:OnPostDataPrepare()
    print("Q1402906_Trigger - OnPostDataPrepare")
    this = self
end

function Q1402906_Trigger:OnPostComponentPrepare()
    print("Q1402906_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8.850754, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14029)
end

function Q1402906_Trigger:TriggerIn()
    print("Q1402906_Trigger - TriggerIn")
    actorMgr:GetActor("14029"):CreateQuestNpcById(1402906, npcs.Npc14047.id, 0, false, 0)
    actorMgr:GetActor("14029"):RequestInteraction(npcs.Npc14047.alias, "", true)
    this:DestroySelf()
end

function Q1402906_Trigger:PreTriggerIn()
    print("Q1402906_Trigger - PreTriggerIn")
end

function Q1402906_Trigger:LightUpTriggerIn()
    print("Q1402906_Trigger - LightUpTriggerIn")
end

function Q1402906_Trigger:TriggerOut()
    print("Q1402906_Trigger - TriggerOut")
end

return Q1402906_Trigger
