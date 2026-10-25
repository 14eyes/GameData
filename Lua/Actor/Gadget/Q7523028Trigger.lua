require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523028Trigger = class("Q7523028Trigger", GadgetActorProxy)
Q7523028Trigger.defaultAlias = "Q7523028Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523028Trigger:OnPostDataPrepare()
    print("Q7523028Trigger - OnPostDataPrepare")
    this = self
end

function Q7523028Trigger:OnPostComponentPrepare()
    print("Q7523028Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523028Trigger:TriggerIn()
    print("Q7523028Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523028)
    this:DestroySelf()
end

function Q7523028Trigger:PreTriggerIn()
    print("Q7523028Trigger - PreTriggerIn")
end

function Q7523028Trigger:LightUpTriggerIn()
    print("Q7523028Trigger - LightUpTriggerIn")
end

function Q7523028Trigger:TriggerOut()
    print("Q7523028Trigger - TriggerOut")
end

return Q7523028Trigger
