require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74075Trigger_Entertalk = class("Q74075Trigger_Entertalk", GadgetActorProxy)
Q74075Trigger_Entertalk.defaultAlias = "Q74075Trigger_Entertalk"
local Q74075ClientConfig = require("Quest/Client/Q74075ClientConfig")

local this
local subIDs = Q74075ClientConfig.SubIDs
local npcs = Q74075ClientConfig.Npcs
local points = Q74075ClientConfig.Points
local datas = Q74075ClientConfig.Datas

function Q74075Trigger_Entertalk:OnPostDataPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Entertalk] OnPostDataPrepare")
    this = self
end

function Q74075Trigger_Entertalk:OnPostComponentPrepare()
    print("[MainId: 74075][Trigger: Q74075Trigger_Entertalk] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 36, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74075Trigger_Entertalk:TriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Entertalk] TriggerIn")
    actorUtils.FinishQuestID(false, 7407501)
    actorUtils.FinishQuestID(false, 7407502)
    this:DestroySelf()
end

function Q74075Trigger_Entertalk:PreTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Entertalk] PreTriggerIn")
end

function Q74075Trigger_Entertalk:LightUpTriggerIn()
    print("[MainId: 74075][Trigger: Q74075Trigger_Entertalk] LightUpTriggerIn")
end

function Q74075Trigger_Entertalk:TriggerOut()
    print("[MainId: 74075][Trigger: Q74075Trigger_Entertalk] TriggerOut")
end

return Q74075Trigger_Entertalk
