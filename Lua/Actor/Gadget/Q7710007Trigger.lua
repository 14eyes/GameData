require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710007Trigger = class("Q7710007Trigger", GadgetActorProxy)
Q7710007Trigger.defaultAlias = "Q7710007Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710007Trigger:OnPostDataPrepare()
    print("Q7710007Trigger - OnPostDataPrepare")
    this = self
end

function Q7710007Trigger:OnPostComponentPrepare()
    print("Q7710007Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710007Trigger:TriggerIn()
    print("Q7710007Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710007)
    this:DestroySelf()
end

function Q7710007Trigger:PreTriggerIn()
    print("Q7710007Trigger - PreTriggerIn")
end

function Q7710007Trigger:LightUpTriggerIn()
    print("Q7710007Trigger - LightUpTriggerIn")
end

function Q7710007Trigger:TriggerOut()
    print("Q7710007Trigger - TriggerOut")
end

return Q7710007Trigger
