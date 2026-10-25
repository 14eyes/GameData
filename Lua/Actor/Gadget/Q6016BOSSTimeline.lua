require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q6016BOSSTimeline = class("Q6016BOSSTimeline", GadgetActorProxy)
Q6016BOSSTimeline.defaultAlias = "Q6016BOSSTimeline"
local Q6016ClientConfig = require("Quest/Client/Q6016ClientConfig")

local this
local subIDs = Q6016ClientConfig.SubIDs
local datas = Q6016ClientConfig.Datas
local npcs = Q6016ClientConfig.Npcs
local points = Q6016ClientConfig.Points

function Q6016BOSSTimeline:OnPostDataPrepare()
    print("Q6016BOSSTimeline - OnPostDataPrepare")
    this = self
end

function Q6016BOSSTimeline:OnPostComponentPrepare()
    print("Q6016BOSSTimeline - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6016)
end

function Q6016BOSSTimeline:TriggerIn()
    print("Q6016BOSSTimeline - TriggerIn")
    actorMgr:GetActor("6016"):PlayCutsceneIndex(60162001, function(arg1)
        actorMgr:GetActor("6016"):QuestNarratorTask(datas.Q6016BOSSKaiche02, nil)
        this:DestroySelf()
    end, nil, nil, true)
end

function Q6016BOSSTimeline:PreTriggerIn()
    print("Q6016BOSSTimeline - PreTriggerIn")
end

function Q6016BOSSTimeline:LightUpTriggerIn()
    print("Q6016BOSSTimeline - LightUpTriggerIn")
end

function Q6016BOSSTimeline:TriggerOut()
    print("Q6016BOSSTimeline - TriggerOut")
end

return Q6016BOSSTimeline
