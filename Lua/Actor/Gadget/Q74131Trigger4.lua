require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74131Trigger4 = class("Q74131Trigger4", GadgetActorProxy)
Q74131Trigger4.defaultAlias = "Q74131Trigger4"
local Q74131ClientConfig = require("Quest/Client/Q74131ClientConfig")

local this
local subIDs = Q74131ClientConfig.SubIDs
local npcs = Q74131ClientConfig.Npcs
local points = Q74131ClientConfig.Points
local datas = Q74131ClientConfig.Datas

function Q74131Trigger4:OnPostDataPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger4] OnPostDataPrepare")
    this = self
end

function Q74131Trigger4:OnPostComponentPrepare()
    print("[MainId: 74131][Trigger: Q74131Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74131Trigger4:TriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger4] TriggerIn")
    actorUtils.FinishQuestID(false, 7413137)
    this:DestroySelf()
end

function Q74131Trigger4:PreTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger4] PreTriggerIn")
end

function Q74131Trigger4:LightUpTriggerIn()
    print("[MainId: 74131][Trigger: Q74131Trigger4] LightUpTriggerIn")
end

function Q74131Trigger4:TriggerOut()
    print("[MainId: 74131][Trigger: Q74131Trigger4] TriggerOut")
end

return Q74131Trigger4
