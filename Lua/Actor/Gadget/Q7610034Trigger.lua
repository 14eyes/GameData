require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610034Trigger = class("Q7610034Trigger", GadgetActorProxy)
Q7610034Trigger.defaultAlias = "Q7610034Trigger"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610034Trigger:OnPostDataPrepare()
    print("Q7610034Trigger - OnPostDataPrepare")
    this = self
end

function Q7610034Trigger:OnPostComponentPrepare()
    print("Q7610034Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610034Trigger:TriggerIn()
    print("Q7610034Trigger - TriggerIn")
    actorMgr:GetActor("76100"):CallDelayByQuest("4", 4, function(arg1)
        actorUtils.FinishQuestID(false, 7610034)
        this:DestroySelf()
    end)
end

function Q7610034Trigger:PreTriggerIn()
    print("Q7610034Trigger - PreTriggerIn")
end

function Q7610034Trigger:LightUpTriggerIn()
    print("Q7610034Trigger - LightUpTriggerIn")
end

function Q7610034Trigger:TriggerOut()
    print("Q7610034Trigger - TriggerOut")
end

return Q7610034Trigger
