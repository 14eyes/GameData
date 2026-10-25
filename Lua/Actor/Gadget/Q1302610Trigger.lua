require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302610Trigger = class("Q1302610Trigger", GadgetActorProxy)
Q1302610Trigger.defaultAlias = "Q1302610Trigger"
local Q13026ClientConfig = require("Quest/Client/Q13026ClientConfig")

local this
local subIDs = Q13026ClientConfig.SubIDs
local npcs = Q13026ClientConfig.Npcs
local gadgets = Q13026ClientConfig.Gadgets
local datas = Q13026ClientConfig.Datas

function Q1302610Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302610Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302610Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13026"):TransmitPlayerWithDialogTextByQuestId(1302610, 1, datas.DialogsId, 5)
    this:DestroySelf()
end

function Q1302610Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302610Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302610Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1302610Trigger
