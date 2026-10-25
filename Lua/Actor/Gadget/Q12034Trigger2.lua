require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12034Trigger2 = class("Q12034Trigger2", GadgetActorProxy)
Q12034Trigger2.defaultAlias = "Q12034Trigger2"
local Q12034ClientConfig = require("Quest/Client/Q12034ClientConfig")

local this
local subIDs = Q12034ClientConfig.SubIDs
local npcs = Q12034ClientConfig.Npcs
local datas = Q12034ClientConfig.Datas

function Q12034Trigger2:OnPostDataPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger2] OnPostDataPrepare")
    this = self
end

function Q12034Trigger2:OnPostComponentPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12034Trigger2:TriggerIn()
    print("[MainId: 12034][Trigger: Q12034Trigger2] TriggerIn")
    actorMgr:GetActor("12034"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("12034")
        actor:CreateQuestNpcById(1203412, npcs.Npc1047Data.id, 0)
        actor:RequestInteraction(npcs.Npc1047Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q12034Trigger2:TriggerOut()
    print("[MainId: 12034][Trigger: Q12034Trigger2] TriggerOut")
end

return Q12034Trigger2
