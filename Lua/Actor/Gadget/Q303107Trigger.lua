require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303107Trigger = class("Q303107Trigger", GadgetActorProxy)
Q303107Trigger.defaultAlias = "Q303107Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303107Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303107Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303107Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3031")
        actor:CreateQuestNpcById(303107, npcs.Npc12947Data.id, 2)
        actor:RequestInteraction(npcs.Npc12947Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q303107Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303107Trigger
