require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501236Trigger = class("Q501236Trigger", GadgetActorProxy)
Q501236Trigger.defaultAlias = "Q501236Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501236Trigger:OnPostDataPrepare()
    print("Q501236Trigger - OnPostDataPrepare")
    this = self
end

function Q501236Trigger:OnPostComponentPrepare()
    print("Q501236Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501236Trigger:TriggerIn()
    print("Q501236Trigger - TriggerIn")
    actorMgr:GetActor("5012"):CallDelayByQuest("501236", 1, function(arg1)
        actorMgr:GetActor("5012"):RequestInteraction(npcs.Npc1092.alias, "", true)
    end)

    this:DestroySelf()
end

function Q501236Trigger:PreTriggerIn()
    print("Q501236Trigger - PreTriggerIn")
end

function Q501236Trigger:LightUpTriggerIn()
    print("Q501236Trigger - LightUpTriggerIn")
end

function Q501236Trigger:TriggerOut()
    print("Q501236Trigger - TriggerOut")
end

return Q501236Trigger
