require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302909Trigger = class("Q302909Trigger", GadgetActorProxy)
Q302909Trigger.defaultAlias = "Q302909Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302909Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302909Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302909Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3029")
        actor:CreateQuestNpcById(302909, npcs.Npc10013Data.id, 1)
        actor:RequestInteraction(npcs.Npc10013Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q302909Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302909Trigger
