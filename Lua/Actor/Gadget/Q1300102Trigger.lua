require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1300102Trigger = class("Q1300102Trigger", GadgetActorProxy)
Q1300102Trigger.defaultAlias = "Q1300102Trigger"
local Q13001ClientConfig = require("Quest/Client/Q13001ClientConfig")

local this
local subIDs = Q13001ClientConfig.SubIDs
local npcs = Q13001ClientConfig.Npcs
local datas = Q13001ClientConfig.Datas

function Q1300102Trigger:OnPostDataPrepare()
    print("[MainId: 13001][Trigger: Q1300102Trigger] OnPostDataPrepare")
    this = self
end

function Q1300102Trigger:OnPostComponentPrepare()
    print("[MainId: 13001][Trigger: Q1300102Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1300102Trigger:TriggerIn()
    print("[MainId: 13001][Trigger: Q1300102Trigger] TriggerIn")
    actorMgr:GetActor("13001"):RequestInteraction(npcs.Npc12642Data.alias)
    this:DestroySelf()
end

function Q1300102Trigger:TriggerOut()
    print("[MainId: 13001][Trigger: Q1300102Trigger] TriggerOut")
end

return Q1300102Trigger
