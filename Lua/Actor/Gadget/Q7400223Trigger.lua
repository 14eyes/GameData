require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400223Trigger = class("Q7400223Trigger", GadgetActorProxy)
Q7400223Trigger.defaultAlias = "Q7400223Trigger"
local Q74002ClientConfig = require("Quest/Client/Q74002ClientConfig")

local this
local subIDs = Q74002ClientConfig.SubIDs
local npcs = Q74002ClientConfig.Npcs
local points = Q74002ClientConfig.Points
local datas = Q74002ClientConfig.Datas

function Q7400223Trigger:OnPostDataPrepare()
    print("[MainId: 74002][Trigger: Q7400223Trigger] OnPostDataPrepare")
    this = self
end

function Q7400223Trigger:OnPostComponentPrepare()
    print("[MainId: 74002][Trigger: Q7400223Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7400223Trigger:TriggerIn()
    print("[MainId: 74002][Trigger: Q7400223Trigger] TriggerIn")
    actorUtils.FinishQuestID(false, 7400223)
    this:DestroySelf()
end

function Q7400223Trigger:PreTriggerIn()
    print("[MainId: 74002][Trigger: Q7400223Trigger] PreTriggerIn")
end

function Q7400223Trigger:LightUpTriggerIn()
    print("[MainId: 74002][Trigger: Q7400223Trigger] LightUpTriggerIn")
end

function Q7400223Trigger:TriggerOut()
    print("[MainId: 74002][Trigger: Q7400223Trigger] TriggerOut")
end

return Q7400223Trigger
