require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7401809Trigger = class("Q7401809Trigger", GadgetActorProxy)
Q7401809Trigger.defaultAlias = "Q7401809Trigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q7401809Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q7401809Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCommonPolygonTrigger(1, "BigWorld_JinLin_Barrel", 0, false, self.TriggerIn, self.TriggerOut)
end

function Q7401809Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7401809)
end

function Q7401809Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q7401809Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q7401809Trigger:TriggerOut()
    print("TriggerOut")
end

return Q7401809Trigger
