require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603501Trigger = class("Q603501Trigger", GadgetActorProxy)
Q603501Trigger.defaultAlias = "Q603501Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603501Trigger:OnPostDataPrepare()
    print("Q603501Trigger - OnPostDataPrepare")
    this = self
end

function Q603501Trigger:OnPostComponentPrepare()
    print("Q603501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603501Trigger:TriggerIn()
    print("Q603501Trigger - TriggerIn")
    actorMgr:GetActor("6035"):TransmitPlayerWithQuestIdByData(603501, 1, datas.TransmitData_CommonBlack, nil, function(arg1)
        actorMgr:GetActor("6035"):QuestNarratorTask(datas.NarratorWithId_603501, nil)
    end, nil)

    this:DestroySelf()
end

function Q603501Trigger:PreTriggerIn()
    print("Q603501Trigger - PreTriggerIn")
end

function Q603501Trigger:LightUpTriggerIn()
    print("Q603501Trigger - LightUpTriggerIn")
end

function Q603501Trigger:TriggerOut()
    print("Q603501Trigger - TriggerOut")
end

return Q603501Trigger
