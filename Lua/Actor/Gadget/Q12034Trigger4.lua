require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12034Trigger4 = class("Q12034Trigger4", GadgetActorProxy)
Q12034Trigger4.defaultAlias = "Q12034Trigger4"
local Q12034ClientConfig = require("Quest/Client/Q12034ClientConfig")

local this
local subIDs = Q12034ClientConfig.SubIDs
local npcs = Q12034ClientConfig.Npcs
local datas = Q12034ClientConfig.Datas

function Q12034Trigger4:OnPostDataPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger4] OnPostDataPrepare")
    this = self
end

function Q12034Trigger4:OnPostComponentPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger4] OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12034Trigger4:TriggerIn()
    print("[MainId: 12034][Trigger: Q12034Trigger4] TriggerIn")
    actorMgr:GetActor("12034"):RequestInteraction(npcs.Npc12492Data.alias)
    this:DestroySelf()
end

function Q12034Trigger4:TriggerOut()
    print("[MainId: 12034][Trigger: Q12034Trigger4] TriggerOut")
end

return Q12034Trigger4
