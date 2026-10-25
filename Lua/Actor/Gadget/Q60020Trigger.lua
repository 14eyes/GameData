require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60020Trigger = class("Q60020Trigger", GadgetActorProxy)
Q60020Trigger.defaultAlias = "Q60020Trigger"
local Q600ClientConfig = require("Quest/Client/Q600ClientConfig")

local this
local subIDs = Q600ClientConfig.SubIDs
local datas = Q600ClientConfig.Datas
local npcs = Q600ClientConfig.Npcs
local points = Q600ClientConfig.Points

function Q60020Trigger:OnPostDataPrepare()
    print("Q60020Trigger - OnPostDataPrepare")
    this = self
end

function Q60020Trigger:OnPostComponentPrepare()
    print("Q60020Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 600)
end

function Q60020Trigger:TriggerIn()
    print("Q60020Trigger - TriggerIn")
    actorUtils.ShowQuestSpecHint("AQ600_01", function(arg1)
        actorUtils.FinishQuestID(false, 60020)
    end, function(arg1)
        actorUtils.FinishQuestID(true, 60020)
    end)

    this:DestroySelf()
end

function Q60020Trigger:PreTriggerIn()
    print("Q60020Trigger - PreTriggerIn")
end

function Q60020Trigger:LightUpTriggerIn()
    print("Q60020Trigger - LightUpTriggerIn")
end

function Q60020Trigger:TriggerOut()
    print("Q60020Trigger - TriggerOut")
end

return Q60020Trigger
