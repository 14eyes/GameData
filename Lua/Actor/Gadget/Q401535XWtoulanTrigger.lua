require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401535XWtoulanTrigger = class("Q401535XWtoulanTrigger", GadgetActorProxy)
Q401535XWtoulanTrigger.defaultAlias = "Q401535XWtoulanTrigger"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401535XWtoulanTrigger:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401535XWtoulanTrigger] OnPostDataPrepare")
    this = self
end

function Q401535XWtoulanTrigger:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401535XWtoulanTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401535XWtoulanTrigger:TriggerIn()
    print("[MainId: 4015][Trigger: Q401535XWtoulanTrigger] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4015")
        actor:CreateQuestNpcById(401535, npcs.Npc13516Data.id, 0)
        actor:RequestInteraction(npcs.Npc13516Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401535XWtoulanTrigger:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401535XWtoulanTrigger] PreTriggerIn")
end

function Q401535XWtoulanTrigger:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401535XWtoulanTrigger] LightUpTriggerIn")
end

function Q401535XWtoulanTrigger:TriggerOut()
    print("[MainId: 4015][Trigger: Q401535XWtoulanTrigger] TriggerOut")
end

return Q401535XWtoulanTrigger
