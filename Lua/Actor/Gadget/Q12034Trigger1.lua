require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12034Trigger1 = class("Q12034Trigger1", GadgetActorProxy)
Q12034Trigger1.defaultAlias = "Q12034Trigger1"
local Q12034ClientConfig = require("Quest/Client/Q12034ClientConfig")

local this
local subIDs = Q12034ClientConfig.SubIDs
local npcs = Q12034ClientConfig.Npcs
local datas = Q12034ClientConfig.Datas

function Q12034Trigger1:OnPostDataPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger1] OnPostDataPrepare")
    this = self
end

function Q12034Trigger1:OnPostComponentPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12034Trigger1:TriggerIn()
    print("[MainId: 12034][Trigger: Q12034Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 1203403)
    this:DestroySelf()
end

function Q12034Trigger1:TriggerOut()
    print("[MainId: 12034][Trigger: Q12034Trigger1] TriggerOut")
end

return Q12034Trigger1
