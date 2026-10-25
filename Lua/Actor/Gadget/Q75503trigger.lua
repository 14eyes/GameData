require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75503trigger = class("Q75503trigger", GadgetActorProxy)
Q75503trigger.defaultAlias = "Q75503trigger"
local Q75503ClientConfig = require("Quest/Client/Q75503ClientConfig")

local this
local subIDs = Q75503ClientConfig.SubIDs
local datas = Q75503ClientConfig.Datas
local points = Q75503ClientConfig.Points

function Q75503trigger:OnPostDataPrepare()
    print("Q75503trigger - OnPostDataPrepare")
    this = self
end

function Q75503trigger:OnPostComponentPrepare()
    print("Q75503trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75503)
end

function Q75503trigger:TriggerIn()
    print("Q75503trigger - TriggerIn")
    actorMgr:GetActor("75503"):EnterSceneLookCamera(points.Q75500YLLpoint.pos, 0, 2, true, false)
    actorMgr:GetActor("75503"):QuestNarratorTask(datas.NarratorWithId_7550399, nil)
    this:DestroySelf()
end

function Q75503trigger:PreTriggerIn()
    print("Q75503trigger - PreTriggerIn")
end

function Q75503trigger:LightUpTriggerIn()
    print("Q75503trigger - LightUpTriggerIn")
end

function Q75503trigger:TriggerOut()
    print("Q75503trigger - TriggerOut")
end

return Q75503trigger
