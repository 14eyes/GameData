require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q25018Trigger2 = class("Q25018Trigger2", GadgetActorProxy)
Q25018Trigger2.defaultAlias = "Q25018Trigger2"
local Q25018ClientConfig = require("Quest/Client/Q25018ClientConfig")

local this
local subIDs = Q25018ClientConfig.SubIDs
local npcs = Q25018ClientConfig.Npcs
local points = Q25018ClientConfig.Points
local datas = Q25018ClientConfig.Datas

function Q25018Trigger2:OnPostDataPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger2] OnPostDataPrepare")
    this = self
end

function Q25018Trigger2:OnPostComponentPrepare()
    print("[MainId: 25018][Trigger: Q25018Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 25018)
end

function Q25018Trigger2:TriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger2] TriggerIn")
    actorMgr:GetActor("25018"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("25018")
        actor:CreateQuestNpcById(2501816, npcs.Npc5084Data.id, 0, false, 0)
        actor:CreateQuestNpcById(2501816, npcs.Npc5083Data.id, 0, false, 0)
        actor:RequestInteraction(npcs.Npc5084Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q25018Trigger2:PreTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger2] PreTriggerIn")
end

function Q25018Trigger2:LightUpTriggerIn()
    print("[MainId: 25018][Trigger: Q25018Trigger2] LightUpTriggerIn")
end

function Q25018Trigger2:TriggerOut()
    print("[MainId: 25018][Trigger: Q25018Trigger2] TriggerOut")
end

return Q25018Trigger2
