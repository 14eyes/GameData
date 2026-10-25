require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25018Trigger = class("Q25018Trigger", GadgetActorProxy)
Q25018Trigger.defaultAlias = "Q25018Trigger"
local Q25018ClientConfig = require("Quest/Client/Q25018ClientConfig")

local this
local subIDs = Q25018ClientConfig.SubIDs
local npcs = Q25018ClientConfig.Npcs
local points = Q25018ClientConfig.Points
local datas = Q25018ClientConfig.Datas

function Q25018Trigger:OnPostDataPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger] OnPostDataPrepare")
    this = self
end

function Q25018Trigger:OnPostComponentPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25018)
end

function Q25018Trigger:TriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger] TriggerIn")
    actorMgr:GetActor("25018"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("25018")
        actor:CreateQuestNpcById(2501805, npcs.Npc5084Data.id, 0, false, 0)
        actor:CreateQuestNpcById(2501805, npcs.Npc5083Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc5084Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q25018Trigger:PreTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger] PreTriggerIn")
end

function Q25018Trigger:LightUpTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger] LightUpTriggerIn")
end

function Q25018Trigger:TriggerOut()
    print("[MainId: 25018][Trigger: Q25018Trigger] TriggerOut")
end

return Q25018Trigger
