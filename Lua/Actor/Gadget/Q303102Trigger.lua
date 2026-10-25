require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303102Trigger = class("Q303102Trigger", GadgetActorProxy)
Q303102Trigger.defaultAlias = "Q303102Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303102Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303102Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303102Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3031")
        actor:CreateQuestNpcById(303102, npcs.Npc12931Data.id, 3)
        actor:RequestInteraction(npcs.Npc12931Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q303102Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303102Trigger
