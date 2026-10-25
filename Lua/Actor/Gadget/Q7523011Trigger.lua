require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7523011Trigger = class("Q7523011Trigger", GadgetActorProxy)
Q7523011Trigger.defaultAlias = "Q7523011Trigger"
local Q75230ClientConfig = require("Quest/Client/Q75230ClientConfig")

local this
local subIDs = Q75230ClientConfig.SubIDs
local datas = Q75230ClientConfig.Datas
local npcs = Q75230ClientConfig.Npcs
local points = Q75230ClientConfig.Points

function Q7523011Trigger:OnPostDataPrepare()
    print("Q7523011Trigger - OnPostDataPrepare")
    this = self
end

function Q7523011Trigger:OnPostComponentPrepare()
    print("Q7523011Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75230)
end

function Q7523011Trigger:TriggerIn()
    print("Q7523011Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7523011)
    this:DestroySelf()
end

function Q7523011Trigger:PreTriggerIn()
    print("Q7523011Trigger - PreTriggerIn")
end

function Q7523011Trigger:LightUpTriggerIn()
    print("Q7523011Trigger - LightUpTriggerIn")
end

function Q7523011Trigger:TriggerOut()
    print("Q7523011Trigger - TriggerOut")
end

return Q7523011Trigger
