require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12034Trigger3 = class("Q12034Trigger3", GadgetActorProxy)
Q12034Trigger3.defaultAlias = "Q12034Trigger3"
local Q12034ClientConfig = require("Quest/Client/Q12034ClientConfig")

local this
local subIDs = Q12034ClientConfig.SubIDs
local npcs = Q12034ClientConfig.Npcs
local datas = Q12034ClientConfig.Datas

function Q12034Trigger3:OnPostDataPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger3] OnPostDataPrepare")
    this = self
end

function Q12034Trigger3:OnPostComponentPrepare()
    print("[MainId: 12034][Trigger: Q12034Trigger3] OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12034Trigger3:TriggerIn()
    print("[MainId: 12034][Trigger: Q12034Trigger3] TriggerIn")
end

function Q12034Trigger3:TriggerOut()
    print("[MainId: 12034][Trigger: Q12034Trigger3] TriggerOut")
    actorUtils.FinishQuestID(true, 1203413)
    this:DestroySelf()
end

return Q12034Trigger3
