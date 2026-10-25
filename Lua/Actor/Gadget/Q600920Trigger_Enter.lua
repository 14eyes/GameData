require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600920Trigger_Enter = class("Q600920Trigger_Enter", GadgetActorProxy)
Q600920Trigger_Enter.defaultAlias = "Q600920Trigger_Enter"
local Q6009ClientConfig = require("Quest/Client/Q6009ClientConfig")

local this
local subIDs = Q6009ClientConfig.SubIDs
local datas = Q6009ClientConfig.Datas
local npcs = Q6009ClientConfig.Npcs
local points = Q6009ClientConfig.Points

function Q600920Trigger_Enter:OnPostDataPrepare()
    print("Q600920Trigger_Enter - OnPostDataPrepare")
    this = self
end

function Q600920Trigger_Enter:OnPostComponentPrepare()
    print("Q600920Trigger_Enter - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6009)
end

function Q600920Trigger_Enter:TriggerIn()
    print("Q600920Trigger_Enter - TriggerIn")
    actorUtils.FinishQuestID(false, 600920)
    this:DestroySelf()
end

function Q600920Trigger_Enter:PreTriggerIn()
    print("Q600920Trigger_Enter - PreTriggerIn")
end

function Q600920Trigger_Enter:LightUpTriggerIn()
    print("Q600920Trigger_Enter - LightUpTriggerIn")
end

function Q600920Trigger_Enter:TriggerOut()
    print("Q600920Trigger_Enter - TriggerOut")
end

return Q600920Trigger_Enter
