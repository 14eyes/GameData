require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13031Trigger1 = class("Q13031Trigger1", GadgetActorProxy)
Q13031Trigger1.defaultAlias = "Q13031Trigger1"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q13031Trigger1:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q13031Trigger1] OnPostDataPrepare")
    this = self
end

function Q13031Trigger1:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q13031Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13031Trigger1:TriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger1] TriggerIn")
    actorUtils.FinishQuestID(false, 1303103)
    this:DestroySelf()
end

function Q13031Trigger1:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger1] PreTriggerIn")
end

function Q13031Trigger1:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger1] LightUpTriggerIn")
end

function Q13031Trigger1:TriggerOut()
    print("[MainId: 13031][Trigger: Q13031Trigger1] TriggerOut")
end

return Q13031Trigger1
