require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400912_TriggerIn = class("Q400912_TriggerIn", GadgetActorProxy)
Q400912_TriggerIn.defaultAlias = "Q400912_TriggerIn"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400912_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400912_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400912_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400912_TriggerIn] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(25, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400912_TriggerIn:TriggerIn()
    print("[MainId: 4009][Trigger: Q400912_TriggerIn] TriggerIn")
    actorMgr:GetActor("4009"):TransmitPlayerByQuestId(400912, 1)
    this:DestroySelf()
end

function Q400912_TriggerIn:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400912_TriggerIn] PreTriggerIn")
end

function Q400912_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400912_TriggerIn] LightUpTriggerIn")
end

function Q400912_TriggerIn:TriggerOut()
    print("[MainId: 4009][Trigger: Q400912_TriggerIn] TriggerOut")
end

return Q400912_TriggerIn
