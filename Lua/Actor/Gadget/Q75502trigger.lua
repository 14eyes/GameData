require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75502trigger = class("Q75502trigger", GadgetActorProxy)
Q75502trigger.defaultAlias = "Q75502trigger"
local Q75502ClientConfig = require("Quest/Client/Q75502ClientConfig")

local this
local subIDs = Q75502ClientConfig.SubIDs
local datas = Q75502ClientConfig.Datas
local points = Q75502ClientConfig.Points

function Q75502trigger:OnPostDataPrepare()
    print("Q75502trigger - OnPostDataPrepare")
    this = self
end

function Q75502trigger:OnPostComponentPrepare()
    print("Q75502trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75502)
end

function Q75502trigger:TriggerIn()
    print("Q75502trigger - TriggerIn")
    actorMgr:GetActor("75502"):EnterSceneLookCamera(points.Q75500JNQpoint.pos, 0, 2, true, false)
    actorMgr:GetActor("75502"):QuestNarratorTask(datas.NarratorWithId_7550299, nil)
    this:DestroySelf()
end

function Q75502trigger:PreTriggerIn()
    print("Q75502trigger - PreTriggerIn")
end

function Q75502trigger:LightUpTriggerIn()
    print("Q75502trigger - LightUpTriggerIn")
end

function Q75502trigger:TriggerOut()
    print("Q75502trigger - TriggerOut")
end

return Q75502trigger
