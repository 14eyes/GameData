require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302916Trigger = class("Q302916Trigger", GadgetActorProxy)
Q302916Trigger.defaultAlias = "Q302916Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302916Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302916Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302916Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3029")
        actor:CreateQuestNpcById(302916, npcs.Npc12988Data.id, 3)
        actor:CreateQuestNpcById(302916, npcs.Npc12987Data.id, 4)
        actor:RequestInteraction(npcs.Npc12988Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q302916Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302916Trigger
