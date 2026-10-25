require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612501Trigger_LookAt = class("Q7612501Trigger_LookAt", GadgetActorProxy)
Q7612501Trigger_LookAt.defaultAlias = "Q7612501Trigger_LookAt"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612501Trigger_LookAt:OnPostDataPrepare()
    print("Q7612501Trigger_LookAt - OnPostDataPrepare")
    this = self
end

function Q7612501Trigger_LookAt:OnPostComponentPrepare()
    print("Q7612501Trigger_LookAt - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612501Trigger_LookAt:TriggerIn()
    print("Q7612501Trigger_LookAt - TriggerIn")
    actorMgr:GetActor("76125"):EnterSceneLookCamera({x = 2132.747, y = 112.135, z = 11205.46}, 0, 2.5, false, false)
    actorMgr:GetActor("76125"):QuestNarratorTask(datas.NarratorWithId_7612501, nil)
    actorUtils.FinishQuestID(false, 7612501)
    this:DestroySelf()
end

function Q7612501Trigger_LookAt:PreTriggerIn()
    print("Q7612501Trigger_LookAt - PreTriggerIn")
end

function Q7612501Trigger_LookAt:LightUpTriggerIn()
    print("Q7612501Trigger_LookAt - LightUpTriggerIn")
end

function Q7612501Trigger_LookAt:TriggerOut()
    print("Q7612501Trigger_LookAt - TriggerOut")
end

return Q7612501Trigger_LookAt
