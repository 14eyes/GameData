require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523019Trigger = class("Q7523019Trigger", GadgetActorProxy)
Q7523019Trigger.defaultAlias = "Q7523019Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523019Trigger:OnPostDataPrepare()
    print("Q7523019Trigger - OnPostDataPrepare")
    this = self
end

function Q7523019Trigger:OnPostComponentPrepare()
    print("Q7523019Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523019Trigger:TriggerIn()
    print("Q7523019Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523019)
    this:DestroySelf()
end

function Q7523019Trigger:PreTriggerIn()
    print("Q7523019Trigger - PreTriggerIn")
end

function Q7523019Trigger:LightUpTriggerIn()
    print("Q7523019Trigger - LightUpTriggerIn")
end

function Q7523019Trigger:TriggerOut()
    print("Q7523019Trigger - TriggerOut")
end

return Q7523019Trigger
