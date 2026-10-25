require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504430Trigger = class("Q1504430Trigger", GadgetActorProxy)
Q1504430Trigger.defaultAlias = "Q1504430Trigger"
local Q15044ClientConfig = require("Quest/Client/Q15044ClientConfig")

local this
local subIDs = Q15044ClientConfig.SubIDs
local datas = Q15044ClientConfig.Datas
local npcs = Q15044ClientConfig.Npcs
local points = Q15044ClientConfig.Points

function Q1504430Trigger:OnPostDataPrepare()
    print("Q1504430Trigger - OnPostDataPrepare")
    this = self
end

function Q1504430Trigger:OnPostComponentPrepare()
    print("Q1504430Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15044)
end

function Q1504430Trigger:TriggerIn()
    print("Q1504430Trigger - TriggerIn")
    actorMgr:GetActor("15044"):PlayCutsceneIndex(150441701, function(arg1)
        actorUtils.FinishQuestID(false, 1504430)
        actorMgr:GetActor("15044"):ExitSceneLookCamera()
        this:DestroySelf()
    end, function(arg1)
        actorMgr:GetActor("15044"):EnterSceneLookCameraByParam(datas.SceneLookCameraParams)
    end, nil, false)
end

function Q1504430Trigger:PreTriggerIn()
    print("Q1504430Trigger - PreTriggerIn")
end

function Q1504430Trigger:LightUpTriggerIn()
    print("Q1504430Trigger - LightUpTriggerIn")
end

function Q1504430Trigger:TriggerOut()
    print("Q1504430Trigger - TriggerOut")
end

return Q1504430Trigger
