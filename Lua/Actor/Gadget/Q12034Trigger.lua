require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12034Trigger = class("Q12034Trigger", GadgetActorProxy)
Q12034Trigger.defaultAlias = "Q12034Trigger"
local Q12034ClientConfig = require("Quest/Client/Q12034ClientConfig")

local this
local subIDs = Q12034ClientConfig.SubIDs
local npcs = Q12034ClientConfig.Npcs
local datas = Q12034ClientConfig.Datas

function Q12034Trigger:OnPostDataPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger] OnPostDataPrepare")
    this = self
end

function Q12034Trigger:OnPostComponentPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12034Trigger:TriggerIn()
    print("[MainId: 12034][Trigger: Q12034Trigger] TriggerIn")
    actorMgr:GetActor("12034"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("12034"):RequestInteraction(npcs.Npc12486Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q12034Trigger:TriggerOut()
    print("[MainId: 12034][Trigger: Q12034Trigger] TriggerOut")
end

return Q12034Trigger
