require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614401Trigger = class("Q7614401Trigger", GadgetActorProxy)
Q7614401Trigger.defaultAlias = "Q7614401Trigger"
local Q76144ClientConfig = require("Quest/Client/Q76144ClientConfig")

local this
local subIDs = Q76144ClientConfig.SubIDs
local datas = Q76144ClientConfig.Datas
local points = Q76144ClientConfig.Points

function Q7614401Trigger:OnPostDataPrepare()
    print("Q7614401Trigger - OnPostDataPrepare")
    this = self
end

function Q7614401Trigger:OnPostComponentPrepare()
    print("Q7614401Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76144)
end

function Q7614401Trigger:TriggerIn()
    print("Q7614401Trigger - TriggerIn")
    actorMgr:GetActor("76144"):QuestNarratorTask(datas.NarratorWithId_7614401, nil)
    actorUtils.FinishQuestID(false, 7614401)
    this:DestroySelf()
end

function Q7614401Trigger:PreTriggerIn()
    print("Q7614401Trigger - PreTriggerIn")
end

function Q7614401Trigger:LightUpTriggerIn()
    print("Q7614401Trigger - LightUpTriggerIn")
end

function Q7614401Trigger:TriggerOut()
    print("Q7614401Trigger - TriggerOut")
end

return Q7614401Trigger
