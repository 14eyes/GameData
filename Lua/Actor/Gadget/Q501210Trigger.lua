require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q501210Trigger = class("Q501210Trigger", GadgetActorProxy)
Q501210Trigger.defaultAlias = "Q501210Trigger"
local Q5012ClientConfig = require("Quest/Client/Q5012ClientConfig")

local this
local subIDs = Q5012ClientConfig.SubIDs
local datas = Q5012ClientConfig.Datas
local npcs = Q5012ClientConfig.Npcs
local points = Q5012ClientConfig.Points

function Q501210Trigger:OnPostDataPrepare()
    print("Q501210Trigger - OnPostDataPrepare")
    this = self
end

function Q501210Trigger:OnPostComponentPrepare()
    print("Q501210Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5012)
end

function Q501210Trigger:TriggerIn()
    print("Q501210Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 501210)
    this:DestroySelf()
end

function Q501210Trigger:PreTriggerIn()
    print("Q501210Trigger - PreTriggerIn")
end

function Q501210Trigger:LightUpTriggerIn()
    print("Q501210Trigger - LightUpTriggerIn")
end

function Q501210Trigger:TriggerOut()
    print("Q501210Trigger - TriggerOut")
end

return Q501210Trigger
