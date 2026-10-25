require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400910_TriggerIn = class("Q400910_TriggerIn", GadgetActorProxy)
Q400910_TriggerIn.defaultAlias = "Q400910_TriggerIn"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400910_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400910_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400910_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400910_TriggerIn] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400910_TriggerIn:TriggerIn()
    print("[MainId: 4009][Trigger: Q400910_TriggerIn] TriggerIn")
    actorUtils.FinishQuestID(false, 400910)
    this:DestroySelf()
end

function Q400910_TriggerIn:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400910_TriggerIn] PreTriggerIn")
end

function Q400910_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400910_TriggerIn] LightUpTriggerIn")
end

function Q400910_TriggerIn:TriggerOut()
    print("[MainId: 4009][Trigger: Q400910_TriggerIn] TriggerOut")
end

return Q400910_TriggerIn
