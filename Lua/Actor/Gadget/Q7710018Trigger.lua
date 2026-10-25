require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710018Trigger = class("Q7710018Trigger", GadgetActorProxy)
Q7710018Trigger.defaultAlias = "Q7710018Trigger"
local Q77100ClientConfig = require("Quest/Client/Q77100ClientConfig")

local this
local subIDs = Q77100ClientConfig.SubIDs
local datas = Q77100ClientConfig.Datas
local npcs = Q77100ClientConfig.Npcs
local points = Q77100ClientConfig.Points

function Q7710018Trigger:OnPostDataPrepare()
    print("Q7710018Trigger - OnPostDataPrepare")
    this = self
end

function Q7710018Trigger:OnPostComponentPrepare()
    print("Q7710018Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77100)
end

function Q7710018Trigger:TriggerIn()
    print("Q7710018Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710018)
    this:DestroySelf()
end

function Q7710018Trigger:PreTriggerIn()
    print("Q7710018Trigger - PreTriggerIn")
end

function Q7710018Trigger:LightUpTriggerIn()
    print("Q7710018Trigger - LightUpTriggerIn")
end

function Q7710018Trigger:TriggerOut()
    print("Q7710018Trigger - TriggerOut")
end

return Q7710018Trigger
