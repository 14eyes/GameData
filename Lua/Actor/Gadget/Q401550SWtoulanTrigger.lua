require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401550SWtoulanTrigger = class("Q401550SWtoulanTrigger", GadgetActorProxy)
Q401550SWtoulanTrigger.defaultAlias = "Q401550SWtoulanTrigger"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401550SWtoulanTrigger:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401550SWtoulanTrigger] OnPostDataPrepare")
    this = self
end

function Q401550SWtoulanTrigger:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401550SWtoulanTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401550SWtoulanTrigger:TriggerIn()
    print("[MainId: 4015][Trigger: Q401550SWtoulanTrigger] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4015")
        actor:CreateQuestNpcById(401550, npcs.Npc13512Data.id, 0)
        actor:RequestInteraction(npcs.Npc13512Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401550SWtoulanTrigger:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401550SWtoulanTrigger] PreTriggerIn")
end

function Q401550SWtoulanTrigger:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401550SWtoulanTrigger] LightUpTriggerIn")
end

function Q401550SWtoulanTrigger:TriggerOut()
    print("[MainId: 4015][Trigger: Q401550SWtoulanTrigger] TriggerOut")
end

return Q401550SWtoulanTrigger
