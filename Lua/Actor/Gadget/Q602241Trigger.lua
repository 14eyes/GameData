require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602241Trigger = class("Q602241Trigger", GadgetActorProxy)
Q602241Trigger.defaultAlias = "Q602241Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602241Trigger:OnPostDataPrepare()
    print("Q602241Trigger - OnPostDataPrepare")
    this = self
end

function Q602241Trigger:OnPostComponentPrepare()
    print("Q602241Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602241Trigger:TriggerIn()
    print("Q602241Trigger - TriggerIn")
end

function Q602241Trigger:PreTriggerIn()
    print("Q602241Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602241)
    this:DestroySelf()
end

function Q602241Trigger:LightUpTriggerIn()
    print("Q602241Trigger - LightUpTriggerIn")
end

function Q602241Trigger:TriggerOut()
    print("Q602241Trigger - TriggerOut")
end

return Q602241Trigger
