require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13031Trigger2 = class("Q13031Trigger2", GadgetActorProxy)
Q13031Trigger2.defaultAlias = "Q13031Trigger2"
local Q13031ClientConfig = require("Quest/Client/Q13031ClientConfig")

local this
local subIDs = Q13031ClientConfig.SubIDs
local npcs = Q13031ClientConfig.Npcs
local points = Q13031ClientConfig.Points
local datas = Q13031ClientConfig.Datas

function Q13031Trigger2:OnPostDataPrepare()
    print("[MainId: 13031][Trigger: Q13031Trigger2] OnPostDataPrepare")
    this = self
end

function Q13031Trigger2:OnPostComponentPrepare()
    print("[MainId: 13031][Trigger: Q13031Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q13031Trigger2:TriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 1303104)
    this:DestroySelf()
end

function Q13031Trigger2:PreTriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger2] PreTriggerIn")
end

function Q13031Trigger2:LightUpTriggerIn()
    print("[MainId: 13031][Trigger: Q13031Trigger2] LightUpTriggerIn")
end

function Q13031Trigger2:TriggerOut()
    print("[MainId: 13031][Trigger: Q13031Trigger2] TriggerOut")
end

return Q13031Trigger2
