require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300111Trigger = class("Q1300111Trigger", GadgetActorProxy)
Q1300111Trigger.defaultAlias = "Q1300111Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300111Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300111Trigger] OnPostDataPrepare")
    this = self
end

function Q1300111Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300111Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300111Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300111Trigger] TriggerIn")
    actorMgr:GetActor("13001"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("13001"):RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1300111Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300111Trigger] TriggerOut")
end

return Q1300111Trigger
