require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13008Trigger = class("Q13008Trigger", GadgetActorProxy)
Q13008Trigger.defaultAlias = "Q13008Trigger"
local Q13008ClientConfig = require("Quest/Client/Q13008ClientConfig")

local this
local subIDs = Q13008ClientConfig.SubIDs
local npcs = Q13008ClientConfig.Npcs
local datas = Q13008ClientConfig.Datas

function Q13008Trigger:OnPostDataPrepare()
    print("[MainId: 13008][Trigger: Q13008Trigger] OnPostDataPrepare")
    this = self
end

function Q13008Trigger:OnPostComponentPrepare()
    print("[MainId: 13008][Trigger: Q13008Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13008Trigger:TriggerIn()
    print("[MainId: 13008][Trigger: Q13008Trigger] TriggerIn")
    actorMgr:GetActor("13008"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        actorMgr:GetActor("13008"):RequestInteraction(npcs.Npc12771Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q13008Trigger:TriggerOut()
    print("[MainId: 13008][Trigger: Q13008Trigger] TriggerOut")
end

return Q13008Trigger
