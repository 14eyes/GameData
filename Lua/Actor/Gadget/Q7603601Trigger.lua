require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7603601Trigger = class("Q7603601Trigger", GadgetActorProxy)
Q7603601Trigger.defaultAlias = "Q7603601Trigger"
local Q76036ClientConfig = require("Quest/Client/Q76036ClientConfig")

local this
local subIDs = Q76036ClientConfig.SubIDs
local datas = Q76036ClientConfig.Datas
local npcs = Q76036ClientConfig.Npcs

function Q7603601Trigger:OnPostDataPrepare()
    print("Q7603601Trigger - OnPostDataPrepare")
    this = self
end

function Q7603601Trigger:OnPostComponentPrepare()
    print("Q7603601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80.93358, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76036)
end

function Q7603601Trigger:TriggerIn()
    print("Q7603601Trigger - TriggerIn")
    actorMgr:GetActor("76036"):QuestNarratorTask(datas.NarratorWithId_7603601, function(arg1)
        actorMgr:GetActor("76036"):DeployStoryByQuest(147603600)
    end)

    actorMgr:GetActor("76036"):CallDelayByQuest("delayLook", 6, function(arg1)
        actorMgr:GetActor("76036"):EnterSceneLookCamera({x = 2132.198, y = 108.6, z = 11193.89}, 0, 5, false, false)
    end)

    this:DestroySelf()
end

function Q7603601Trigger:PreTriggerIn()
    print("Q7603601Trigger - PreTriggerIn")
end

function Q7603601Trigger:LightUpTriggerIn()
    print("Q7603601Trigger - LightUpTriggerIn")
end

function Q7603601Trigger:TriggerOut()
    print("Q7603601Trigger - TriggerOut")
end

return Q7603601Trigger
