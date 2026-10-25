require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13008Trigger1 = class("Q13008Trigger1", GadgetActorProxy)
Q13008Trigger1.defaultAlias = "Q13008Trigger1"
local Q13008ClientConfig = require("Quest/Client/Q13008ClientConfig")

local this
local subIDs = Q13008ClientConfig.SubIDs
local npcs = Q13008ClientConfig.Npcs
local datas = Q13008ClientConfig.Datas

function Q13008Trigger1:OnPostDataPrepare()
    print("[MainId: 13008][Trigger: Q13008Trigger1] OnPostDataPrepare")
    this = self
end

function Q13008Trigger1:OnPostComponentPrepare()
    print("[MainId: 13008][Trigger: Q13008Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(16, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13008Trigger1:TriggerIn()
    print("[MainId: 13008][Trigger: Q13008Trigger1] TriggerIn")
    actorMgr:GetActor("13008"):RequestInteraction(npcs.Npc1054Data.alias)
    this:DestroySelf()
end

function Q13008Trigger1:TriggerOut()
    print("[MainId: 13008][Trigger: Q13008Trigger1] TriggerOut")
end

return Q13008Trigger1
