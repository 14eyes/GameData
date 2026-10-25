require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502805Trigger = class("Q502805Trigger", GadgetActorProxy)
Q502805Trigger.defaultAlias = "Q502805Trigger"
local Q5028ClientConfig = require("Quest/Client/Q5028ClientConfig")

local this
local subIDs = Q5028ClientConfig.SubIDs
local datas = Q5028ClientConfig.Datas
local npcs = Q5028ClientConfig.Npcs
local points = Q5028ClientConfig.Points

function Q502805Trigger:OnPostDataPrepare()
    print("Q502805Trigger - OnPostDataPrepare")
    this = self
end

function Q502805Trigger:OnPostComponentPrepare()
    print("Q502805Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5028)
end

function Q502805Trigger:TriggerIn()
    print("Q502805Trigger - TriggerIn")
    actorMgr:GetActor("5028"):CallDelayByQuest("1", 15, function(arg1)
        actorUtils.FinishQuestID(false, 502805)
        this:DestroySelf()
    end)
end

function Q502805Trigger:PreTriggerIn()
    print("Q502805Trigger - PreTriggerIn")
end

function Q502805Trigger:LightUpTriggerIn()
    print("Q502805Trigger - LightUpTriggerIn")
end

function Q502805Trigger:TriggerOut()
    print("Q502805Trigger - TriggerOut")
end

return Q502805Trigger
