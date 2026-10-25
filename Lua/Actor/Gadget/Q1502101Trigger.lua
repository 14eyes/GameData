require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502101Trigger = class("Q1502101Trigger", GadgetActorProxy)
Q1502101Trigger.defaultAlias = "Q1502101Trigger"
local Q15021ClientConfig = require("Quest/Client/Q15021ClientConfig")

local this
local subIDs = Q15021ClientConfig.SubIDs
local datas = Q15021ClientConfig.Datas
local npcs = Q15021ClientConfig.Npcs
local points = Q15021ClientConfig.Points

function Q1502101Trigger:OnPostDataPrepare()
    print("Q1502101Trigger - OnPostDataPrepare")
    this = self
end

function Q1502101Trigger:OnPostComponentPrepare()
    print("Q1502101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(66, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15021)
end

function Q1502101Trigger:TriggerIn()
    print("Q1502101Trigger - TriggerIn")
    actorMgr:GetActor("15021"):QuestNarratorTask(datas.NarratorWithId_1502104, nil)
    this:DestroySelf()
end

function Q1502101Trigger:PreTriggerIn()
    print("Q1502101Trigger - PreTriggerIn")
end

function Q1502101Trigger:LightUpTriggerIn()
    print("Q1502101Trigger - LightUpTriggerIn")
end

function Q1502101Trigger:TriggerOut()
    print("Q1502101Trigger - TriggerOut")
end

return Q1502101Trigger
