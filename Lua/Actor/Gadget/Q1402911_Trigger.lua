require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402911_Trigger = class("Q1402911_Trigger", GadgetActorProxy)
Q1402911_Trigger.defaultAlias = "Q1402911_Trigger"
local Q14029ClientConfig = require("Quest/Client/Q14029ClientConfig")

local this
local subIDs = Q14029ClientConfig.SubIDs
local datas = Q14029ClientConfig.Datas
local npcs = Q14029ClientConfig.Npcs
local points = Q14029ClientConfig.Points

function Q1402911_Trigger:OnPostDataPrepare()
    print("Q1402911_Trigger - OnPostDataPrepare")
    this = self
end

function Q1402911_Trigger:OnPostComponentPrepare()
    print("Q1402911_Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14029)
end

function Q1402911_Trigger:TriggerIn()
    print("Q1402911_Trigger - TriggerIn")
    actorMgr:GetActor("14029"):CreateQuestNpcById(1402911, 14039, 0)
    actorMgr:GetActor("14029"):RequestInteraction(npcs.Npc14039.alias, "", true)
    this:DestroySelf()
end

function Q1402911_Trigger:PreTriggerIn()
    print("Q1402911_Trigger - PreTriggerIn")
end

function Q1402911_Trigger:LightUpTriggerIn()
    print("Q1402911_Trigger - LightUpTriggerIn")
    actorMgr:GetActor("14029"):ShowBlackScreenWithDialogText(0, 1, 0, nil, nil, nil, 0, false, true)
end

function Q1402911_Trigger:TriggerOut()
    print("Q1402911_Trigger - TriggerOut")
end

return Q1402911_Trigger
