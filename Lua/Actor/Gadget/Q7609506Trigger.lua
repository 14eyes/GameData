require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609506Trigger = class("Q7609506Trigger", GadgetActorProxy)
Q7609506Trigger.defaultAlias = "Q7609506Trigger"
local Q76095ClientConfig = require("Quest/Client/Q76095ClientConfig")

local this
local subIDs = Q76095ClientConfig.SubIDs
local datas = Q76095ClientConfig.Datas
local npcs = Q76095ClientConfig.Npcs
local points = Q76095ClientConfig.Points

function Q7609506Trigger:OnPostDataPrepare()
    print("Q7609506Trigger - OnPostDataPrepare")
    this = self
end

function Q7609506Trigger:OnPostComponentPrepare()
    print("Q7609506Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76095)
end

function Q7609506Trigger:TriggerIn()
    print("Q7609506Trigger - TriggerIn")
    actorMgr:GetActor("76095"):GetQuestNpcActor(npcs.Npc22272.alias, 76095):RunToTask({x = 118.735, y = 173.127, z = 415.985}, function(arg1)
        actorUtils.FinishQuestID(false, 7609506)
        this:DestroySelf()
    end, nil, nil)
end

function Q7609506Trigger:PreTriggerIn()
    print("Q7609506Trigger - PreTriggerIn")
end

function Q7609506Trigger:LightUpTriggerIn()
    print("Q7609506Trigger - LightUpTriggerIn")
end

function Q7609506Trigger:TriggerOut()
    print("Q7609506Trigger - TriggerOut")
end

return Q7609506Trigger
