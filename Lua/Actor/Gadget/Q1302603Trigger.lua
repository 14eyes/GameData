require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302603Trigger = class("Q1302603Trigger", GadgetActorProxy)
Q1302603Trigger.defaultAlias = "Q1302603Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local gadgets = Q13026ClientConfig.Gadgets
local datas = Q13026ClientConfig.Datas

function Q1302603Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302603Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302603Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13026"):RequestInteraction(npcs.Npc1052Data.alias)
    this:DestroySelf()
end

function Q1302603Trigger:PreTriggerIn()
    print("PreTriggerIn")
    actorMgr:GetActor("13026"):CreateQuestNpcById(1302603, npcs.Npc1052Data.id, 1)
end

function Q1302603Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("13026"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q1302603Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302603Trigger
