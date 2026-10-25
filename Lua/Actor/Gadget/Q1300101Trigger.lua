require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300101Trigger = class("Q1300101Trigger", GadgetActorProxy)
Q1300101Trigger.defaultAlias = "Q1300101Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300101Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300101Trigger] OnPostDataPrepare")
    this = self
end

function Q1300101Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300101Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300101Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300101Trigger] TriggerIn")
    actorMgr:GetActor("13001"):RequestInteraction(npcs.Npc12603Data.alias)
    this:DestroySelf()
end

function Q1300101Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300101Trigger] TriggerOut")
end

return Q1300101Trigger
