require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74074Trigger_Godown = class("Q74074Trigger_Godown", GadgetActorProxy)
Q74074Trigger_Godown.defaultAlias = "Q74074Trigger_Godown"
local Q74074ClientConfig = require("Quest/Client/Q74074ClientConfig")

local this
local subIDs = Q74074ClientConfig.SubIDs
local npcs = Q74074ClientConfig.Npcs
local points = Q74074ClientConfig.Points
local datas = Q74074ClientConfig.Datas

function Q74074Trigger_Godown:OnPostDataPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Godown] OnPostDataPrepare")
    this = self
end

function Q74074Trigger_Godown:OnPostComponentPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger_Godown] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 10, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74074Trigger_Godown:TriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Godown] TriggerIn")
    actorUtils.FinishQuestID(false, 7407407)
    this:DestroySelf()
end

function Q74074Trigger_Godown:PreTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Godown] PreTriggerIn")
end

function Q74074Trigger_Godown:LightUpTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger_Godown] LightUpTriggerIn")
end

function Q74074Trigger_Godown:TriggerOut()
    print("[MainId: 74074][Trigger: Q74074Trigger_Godown] TriggerOut")
end

return Q74074Trigger_Godown
