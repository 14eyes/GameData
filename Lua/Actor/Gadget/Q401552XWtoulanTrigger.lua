require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401552XWtoulanTrigger = class("Q401552XWtoulanTrigger", GadgetActorProxy)
Q401552XWtoulanTrigger.defaultAlias = "Q401552XWtoulanTrigger"
local Q4015ClientConfig = require("Quest/Client/Q4015ClientConfig")

local this
local subIDs = Q4015ClientConfig.SubIDs
local npcs = Q4015ClientConfig.Npcs
local points = Q4015ClientConfig.Points
local datas = Q4015ClientConfig.Datas

function Q401552XWtoulanTrigger:OnPostDataPrepare()
    print("[MainId: 4015][Trigger: Q401552XWtoulanTrigger] OnPostDataPrepare")
    this = self
end

function Q401552XWtoulanTrigger:OnPostComponentPrepare()
    print("[MainId: 4015][Trigger: Q401552XWtoulanTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401552XWtoulanTrigger:TriggerIn()
    print("[MainId: 4015][Trigger: Q401552XWtoulanTrigger] TriggerIn")
    actorMgr:GetActor("4015"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4015")
        actor:CreateQuestNpcById(401552, npcs.Npc13516Data.id, 0)
        actor:RequestInteraction(npcs.Npc13516Data.alias)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q401552XWtoulanTrigger:PreTriggerIn()
    print("[MainId: 4015][Trigger: Q401552XWtoulanTrigger] PreTriggerIn")
end

function Q401552XWtoulanTrigger:LightUpTriggerIn()
    print("[MainId: 4015][Trigger: Q401552XWtoulanTrigger] LightUpTriggerIn")
end

function Q401552XWtoulanTrigger:TriggerOut()
    print("[MainId: 4015][Trigger: Q401552XWtoulanTrigger] TriggerOut")
end

return Q401552XWtoulanTrigger
