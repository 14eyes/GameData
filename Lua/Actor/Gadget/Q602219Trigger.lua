require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q602219Trigger = class("Q602219Trigger", GadgetActorProxy)
Q602219Trigger.defaultAlias = "Q602219Trigger"
local Q6022ClientConfig = require("Quest/Client/Q6022ClientConfig")

local this
local subIDs = Q6022ClientConfig.SubIDs
local datas = Q6022ClientConfig.Datas
local npcs = Q6022ClientConfig.Npcs
local points = Q6022ClientConfig.Points

function Q602219Trigger:OnPostDataPrepare()
    print("Q602219Trigger - OnPostDataPrepare")
    this = self
end

function Q602219Trigger:OnPostComponentPrepare()
    print("Q602219Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6022)
end

function Q602219Trigger:TriggerIn()
    print("Q602219Trigger - TriggerIn")
end

function Q602219Trigger:PreTriggerIn()
    print("Q602219Trigger - PreTriggerIn")
    actorUtils.FinishQuestID(false, 602219)
    this:DestroySelf()
end

function Q602219Trigger:LightUpTriggerIn()
    print("Q602219Trigger - LightUpTriggerIn")
end

function Q602219Trigger:TriggerOut()
    print("Q602219Trigger - TriggerOut")
end

return Q602219Trigger
