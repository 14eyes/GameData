require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q75501trigger = class("Q75501trigger", GadgetActorProxy)
Q75501trigger.defaultAlias = "Q75501trigger"
local Q75501ClientConfig = require("Quest/Client/Q75501ClientConfig")

local this
local subIDs = Q75501ClientConfig.SubIDs
local datas = Q75501ClientConfig.Datas
local points = Q75501ClientConfig.Points

function Q75501trigger:OnPostDataPrepare()
    print("Q75501trigger - OnPostDataPrepare")
    this = self
end

function Q75501trigger:OnPostComponentPrepare()
    print("Q75501trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(11.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75501)
end

function Q75501trigger:TriggerIn()
    print("Q75501trigger - TriggerIn")
    actorMgr:GetActor("75501"):EnterSceneLookCamera(points.Q75500ZDLpoint.pos, 0, 2, true, false)
    actorMgr:GetActor("75501"):QuestNarratorTask(datas.NarratorWithId_7550199, nil)
    this:DestroySelf()
end

function Q75501trigger:PreTriggerIn()
    print("Q75501trigger - PreTriggerIn")
end

function Q75501trigger:LightUpTriggerIn()
    print("Q75501trigger - LightUpTriggerIn")
end

function Q75501trigger:TriggerOut()
    print("Q75501trigger - TriggerOut")
end

return Q75501trigger
