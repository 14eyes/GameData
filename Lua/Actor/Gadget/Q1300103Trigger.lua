require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300103Trigger = class("Q1300103Trigger", GadgetActorProxy)
Q1300103Trigger.defaultAlias = "Q1300103Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300103Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300103Trigger] OnPostDataPrepare")
    this = self
end

function Q1300103Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300103Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300103Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300103Trigger] TriggerIn")
    actorMgr:GetActor("13001"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13001")
        actor:CreateQuestNpcById(1300103, npcs.Npc1050Data.id, 1)
        actor:RequestInteraction(npcs.Npc1050Data.alias)
    end, nil, nil, "", false, true)
end

function Q1300103Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300103Trigger] TriggerOut")
end

return Q1300103Trigger
