require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74074Trigger = class("Q74074Trigger", GadgetActorProxy)
Q74074Trigger.defaultAlias = "Q74074Trigger"
local Q74074ClientConfig = require("Quest/Client/Q74074ClientConfig")

local this
local subIDs = Q74074ClientConfig.SubIDs
local npcs = Q74074ClientConfig.Npcs
local points = Q74074ClientConfig.Points
local datas = Q74074ClientConfig.Datas

function Q74074Trigger:OnPostDataPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger] OnPostDataPrepare")
    this = self
end

function Q74074Trigger:OnPostComponentPrepare()
    print("[MainId: 74074][Trigger: Q74074Trigger] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 5, 25, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74074Trigger:TriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger] TriggerIn")
    actorMgr:GetActor("74074"):NarratorOnlyTaskByData(datas.NarratorWithId2, function(arg1)
        local actor = actorMgr:GetActor("74074")
        actorUtils.FinishQuestID(false, 7407402)
        this:DestroySelf()
    end)
end

function Q74074Trigger:PreTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger] PreTriggerIn")
end

function Q74074Trigger:LightUpTriggerIn()
    print("[MainId: 74074][Trigger: Q74074Trigger] LightUpTriggerIn")
end

function Q74074Trigger:TriggerOut()
    print("[MainId: 74074][Trigger: Q74074Trigger] TriggerOut")
end

return Q74074Trigger
