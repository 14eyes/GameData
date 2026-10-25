require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303118Trigger = class("Q303118Trigger", GadgetActorProxy)
Q303118Trigger.defaultAlias = "Q303118Trigger"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303118Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303118Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q303118Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3031")
        actor:CreateQuestNpcById(303118, npcs.Npc12947Data.id, 2)
        actor:RequestInteraction(npcs.Npc12947Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q303118Trigger:TriggerOut()
    print("TriggerOut")
end

return Q303118Trigger
