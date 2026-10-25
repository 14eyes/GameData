require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q60017Trigger = class("Q60017Trigger", GadgetActorProxy)
Q60017Trigger.defaultAlias = "Q60017Trigger"
local Q600ClientConfig = require("Quest/Client/Q600ClientConfig")

local this
local subIDs = Q600ClientConfig.SubIDs
local datas = Q600ClientConfig.Datas
local npcs = Q600ClientConfig.Npcs
local points = Q600ClientConfig.Points

function Q60017Trigger:OnPostDataPrepare()
    print("Q60017Trigger - OnPostDataPrepare")
    this = self
end

function Q60017Trigger:OnPostComponentPrepare()
    print("Q60017Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 600)
end

function Q60017Trigger:TriggerIn()
    print("Q60017Trigger - TriggerIn")
    actorUtils.ShowQuestSpecHint("AQ600_01", function(arg1)
        actorUtils.FinishQuestID(false, 60017)
    end, function(arg1)
        actorUtils.FinishQuestID(true, 60017)
    end)

    this:DestroySelf()
end

function Q60017Trigger:PreTriggerIn()
    print("Q60017Trigger - PreTriggerIn")
end

function Q60017Trigger:LightUpTriggerIn()
    print("Q60017Trigger - LightUpTriggerIn")
end

function Q60017Trigger:TriggerOut()
    print("Q60017Trigger - TriggerOut")
end

return Q60017Trigger
