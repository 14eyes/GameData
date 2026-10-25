require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300116Trigger = class("Q1300116Trigger", GadgetActorProxy)
Q1300116Trigger.defaultAlias = "Q1300116Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300116Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300116Trigger] OnPostDataPrepare")
    this = self
end

function Q1300116Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300116Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300116Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300116Trigger] TriggerIn")
    actorMgr:GetActor("13001"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("13001"):RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q1300116Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300116Trigger] TriggerOut")
end

return Q1300116Trigger
