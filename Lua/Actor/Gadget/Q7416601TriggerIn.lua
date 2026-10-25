require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7416601TriggerIn = class("Q7416601TriggerIn", GadgetActorProxy)
Q7416601TriggerIn.defaultAlias = "Q7416601TriggerIn"
local Q74166ClientConfig = require("Quest/Client/Q74166ClientConfig")

local this
local subIDs = Q74166ClientConfig.SubIDs
local npcs = Q74166ClientConfig.Npcs
local points = Q74166ClientConfig.Points
local datas = Q74166ClientConfig.Datas

function Q7416601TriggerIn:OnPostDataPrepare()
    print("[MainId: 74166][Trigger: Q7416601TriggerIn] OnPostDataPrepare")
    this = self
end

function Q7416601TriggerIn:OnPostComponentPrepare()
    print("[MainId: 74166][Trigger: Q7416601TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7416601TriggerIn:TriggerIn()
    print("[MainId: 74166][Trigger: Q7416601TriggerIn] TriggerIn")
    actorUtils.FinishQuestID(false, 7416601)
    this:DestroySelf()
end

function Q7416601TriggerIn:PreTriggerIn()
    print("[MainId: 74166][Trigger: Q7416601TriggerIn] PreTriggerIn")
end

function Q7416601TriggerIn:LightUpTriggerIn()
    print("[MainId: 74166][Trigger: Q7416601TriggerIn] LightUpTriggerIn")
end

function Q7416601TriggerIn:TriggerOut()
    print("[MainId: 74166][Trigger: Q7416601TriggerIn] TriggerOut")
end

return Q7416601TriggerIn
