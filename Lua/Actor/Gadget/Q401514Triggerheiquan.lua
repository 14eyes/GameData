require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401514Triggerheiquan = class("Q401514Triggerheiquan", GadgetActorProxy)
Q401514Triggerheiquan.defaultAlias = "Q401514Triggerheiquan"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401514Triggerheiquan:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401514Triggerheiquan] OnPostDataPrepare")
    this = self
end

function Q401514Triggerheiquan:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401514Triggerheiquan] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(4, 2, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401514Triggerheiquan:TriggerIn()
    print("[MainId: 4015][Trigger: Q401514Triggerheiquan] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("4015"):RequestInteraction(npcs.Npc13514Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401514Triggerheiquan:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401514Triggerheiquan] PreTriggerIn")
end

function Q401514Triggerheiquan:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401514Triggerheiquan] LightUpTriggerIn")
end

function Q401514Triggerheiquan:TriggerOut()
    print("[MainId: 4015][Trigger: Q401514Triggerheiquan] TriggerOut")
end

return Q401514Triggerheiquan
