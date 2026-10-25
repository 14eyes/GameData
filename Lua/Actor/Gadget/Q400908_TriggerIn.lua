require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400908_TriggerIn = class("Q400908_TriggerIn", GadgetActorProxy)
Q400908_TriggerIn.defaultAlias = "Q400908_TriggerIn"
local Q4009ClientConfig = require("Quest/Client/Q4009ClientConfig")

local this
local subIDs = Q4009ClientConfig.SubIDs
local npcs = Q4009ClientConfig.Npcs
local points = Q4009ClientConfig.Points
local datas = Q4009ClientConfig.Datas

function Q400908_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4009][Trigger: Q400908_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400908_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4009][Trigger: Q400908_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 20, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400908_TriggerIn:TriggerIn()
    print("[MainId: 4009][Trigger: Q400908_TriggerIn] TriggerIn")
    actorMgr:GetActor("4009"):RequestInteraction(npcs.Npc13477Data.alias)
    this:DestroySelf()
end

function Q400908_TriggerIn:PreTriggerIn()
    print("[MainId: 4009][Trigger: Q400908_TriggerIn] PreTriggerIn")
end

function Q400908_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4009][Trigger: Q400908_TriggerIn] LightUpTriggerIn")
end

function Q400908_TriggerIn:TriggerOut()
    print("[MainId: 4009][Trigger: Q400908_TriggerIn] TriggerOut")
end

return Q400908_TriggerIn
