require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400222Trigger = class("Q7400222Trigger", GadgetActorProxy)
Q7400222Trigger.defaultAlias = "Q7400222Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400222Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400222Trigger] OnPostDataPrepare")
    this = self
end

function Q7400222Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400222Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400222Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400222Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400222)
    this:DestroySelf()
end

function Q7400222Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400222Trigger] PreTriggerIn")
end

function Q7400222Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400222Trigger] LightUpTriggerIn")
end

function Q7400222Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400222Trigger] TriggerOut")
end

return Q7400222Trigger
