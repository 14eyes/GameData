require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523033Trigger = class("Q7523033Trigger", GadgetActorProxy)
Q7523033Trigger.defaultAlias = "Q7523033Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523033Trigger:OnPostDataPrepare()
    print("Q7523033Trigger - OnPostDataPrepare")
    this = self
end

function Q7523033Trigger:OnPostComponentPrepare()
    print("Q7523033Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(180, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523033Trigger:TriggerIn()
    print("Q7523033Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523033)
    this:DestroySelf()
end

function Q7523033Trigger:PreTriggerIn()
    print("Q7523033Trigger - PreTriggerIn")
end

function Q7523033Trigger:LightUpTriggerIn()
    print("Q7523033Trigger - LightUpTriggerIn")
end

function Q7523033Trigger:TriggerOut()
    print("Q7523033Trigger - TriggerOut")
end

return Q7523033Trigger
