require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74074Trigger_Entertalk = class("Q74074Trigger_Entertalk", GadgetActorProxy)
Q74074Trigger_Entertalk.defaultAlias = "Q74074Trigger_Entertalk"
local Q74074ClientConfig = require("Quest/Client/Q74074ClientConfig")

local this
local subIDs = Q74074ClientConfig.SubIDs
local npcs = Q74074ClientConfig.Npcs
local points = Q74074ClientConfig.Points
local datas = Q74074ClientConfig.Datas

function Q74074Trigger_Entertalk:OnPostDataPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Entertalk] OnPostDataPrepare")
    this = self
end

function Q74074Trigger_Entertalk:OnPostComponentPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Entertalk] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 20, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74074Trigger_Entertalk:TriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Entertalk] TriggerIn")
    actorUtils.FinishQuestID(false, 7407401)
    actorUtils.FinishQuestID(false, 7407402)
    this:DestroySelf()
end

function Q74074Trigger_Entertalk:PreTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Entertalk] PreTriggerIn")
end

function Q74074Trigger_Entertalk:LightUpTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Entertalk] LightUpTriggerIn")
end

function Q74074Trigger_Entertalk:TriggerOut()
    print("[MainId: 74074][Trigger: Q74074Trigger_Entertalk] TriggerOut")
end

return Q74074Trigger_Entertalk
