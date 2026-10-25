require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710410Trigger = class("Q7710410Trigger", GadgetActorProxy)
Q7710410Trigger.defaultAlias = "Q7710410Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710410Trigger:OnPostDataPrepare()
    print("Q7710410Trigger - OnPostDataPrepare")
    this = self
end

function Q7710410Trigger:OnPostComponentPrepare()
    print("Q7710410Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710410Trigger:TriggerIn()
    print("Q7710410Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710410)
    this:DestroySelf()
end

function Q7710410Trigger:PreTriggerIn()
    print("Q7710410Trigger - PreTriggerIn")
end

function Q7710410Trigger:LightUpTriggerIn()
    print("Q7710410Trigger - LightUpTriggerIn")
end

function Q7710410Trigger:TriggerOut()
    print("Q7710410Trigger - TriggerOut")
end

return Q7710410Trigger
