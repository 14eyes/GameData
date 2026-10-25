require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710322Trigger = class("Q7710322Trigger", GadgetActorProxy)
Q7710322Trigger.defaultAlias = "Q7710322Trigger"
local Q77103ClientConfig = require("Quest/Client/Q77103ClientConfig")

local this
local subIDs = Q77103ClientConfig.SubIDs
local datas = Q77103ClientConfig.Datas
local npcs = Q77103ClientConfig.Npcs
local points = Q77103ClientConfig.Points

function Q7710322Trigger:OnPostDataPrepare()
    print("Q7710322Trigger - OnPostDataPrepare")
    this = self
end

function Q7710322Trigger:OnPostComponentPrepare()
    print("Q7710322Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77103)
end

function Q7710322Trigger:TriggerIn()
    print("Q7710322Trigger - TriggerIn")
    actorMgr:GetActor("77103"):QuestNarratorTask(datas.NarratorWithId_3, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7710322})
        this:DestroySelf()
    end)
end

function Q7710322Trigger:PreTriggerIn()
    print("Q7710322Trigger - PreTriggerIn")
end

function Q7710322Trigger:LightUpTriggerIn()
    print("Q7710322Trigger - LightUpTriggerIn")
end

function Q7710322Trigger:TriggerOut()
    print("Q7710322Trigger - TriggerOut")
end

return Q7710322Trigger
