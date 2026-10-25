require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60016Trigger = class("Q60016Trigger", GadgetActorProxy)
Q60016Trigger.defaultAlias = "Q60016Trigger"
local Q600ClientConfig = require("Quest/Client/Q600ClientConfig")

local this
local subIDs = Q600ClientConfig.SubIDs
local datas = Q600ClientConfig.Datas
local npcs = Q600ClientConfig.Npcs
local points = Q600ClientConfig.Points

function Q60016Trigger:OnPostDataPrepare()
    print("Q60016Trigger - OnPostDataPrepare")
    this = self
end

function Q60016Trigger:OnPostComponentPrepare()
    print("Q60016Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 600)
end

function Q60016Trigger:TriggerIn()
    print("Q60016Trigger - TriggerIn")
    actorMgr:GetActor("600"):QuestNarratorTask(datas.NarratorWithId_60003, nil)
    actorMgr:GetActor("600"):CallDelayByQuest("delaynarrator", 2, function(arg1)
        actorMgr:GetActor("600"):EnterSceneLookCamera({x = 1316.295, y = 358, z = -937.663}, 0, 3, false, false)
    end)

    this:DestroySelf()
end

function Q60016Trigger:PreTriggerIn()
    print("Q60016Trigger - PreTriggerIn")
end

function Q60016Trigger:LightUpTriggerIn()
    print("Q60016Trigger - LightUpTriggerIn")
end

function Q60016Trigger:TriggerOut()
    print("Q60016Trigger - TriggerOut")
end

return Q60016Trigger
