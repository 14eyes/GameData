require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600918Trigger_Enter = class("Q600918Trigger_Enter", GadgetActorProxy)
Q600918Trigger_Enter.defaultAlias = "Q600918Trigger_Enter"
local Q6009ClientConfig = require("Quest/Client/Q6009ClientConfig")

local this
local subIDs = Q6009ClientConfig.SubIDs
local datas = Q6009ClientConfig.Datas
local npcs = Q6009ClientConfig.Npcs
local points = Q6009ClientConfig.Points

function Q600918Trigger_Enter:OnPostDataPrepare()
    print("Q600918Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q600918Trigger_Enter:OnPostComponentPrepare()
    print("Q600918Trigger_Enter - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6009)
end

function Q600918Trigger_Enter:TriggerIn()
    print("Q600918Trigger_Enter - TriggerIn")
    actorUtils.FinishQuestID(false, 600918)
    this:DestroySelf()
end

function Q600918Trigger_Enter:PreTriggerIn()
    print("Q600918Trigger_Enter - PreTriggerIn")
end

function Q600918Trigger_Enter:LightUpTriggerIn()
    print("Q600918Trigger_Enter - LightUpTriggerIn")
end

function Q600918Trigger_Enter:TriggerOut()
    print("Q600918Trigger_Enter - TriggerOut")
end

return Q600918Trigger_Enter
