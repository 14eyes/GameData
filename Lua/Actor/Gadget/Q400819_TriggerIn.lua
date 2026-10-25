require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400819_TriggerIn = class("Q400819_TriggerIn", GadgetActorProxy)
Q400819_TriggerIn.defaultAlias = "Q400819_TriggerIn"
local Q4008ClientConfig = require("Quest/Client/Q4008ClientConfig")

local this
local subIDs = Q4008ClientConfig.SubIDs
local npcs = Q4008ClientConfig.Npcs
local points = Q4008ClientConfig.Points
local datas = Q4008ClientConfig.Datas

function Q400819_TriggerIn:OnPostDataPrepare()
    print("[MainId: 4008][Trigger: Q400819_TriggerIn] OnPostDataPrepare")
    this = self
end

function Q400819_TriggerIn:OnPostComponentPrepare()
    print("[MainId: 4008][Trigger: Q400819_TriggerIn] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 20, 15, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400819_TriggerIn:TriggerIn()
    print("[MainId: 4008][Trigger: Q400819_TriggerIn] TriggerIn")
    actorUtils.FinishQuestID(false, 400822)
    actorMgr:GetActor("4008"):RequestInteraction(npcs.Npc13477Data.alias)
    this:DestroySelf()
end

function Q400819_TriggerIn:PreTriggerIn()
    print("[MainId: 4008][Trigger: Q400819_TriggerIn] PreTriggerIn")
end

function Q400819_TriggerIn:LightUpTriggerIn()
    print("[MainId: 4008][Trigger: Q400819_TriggerIn] LightUpTriggerIn")
end

function Q400819_TriggerIn:TriggerOut()
    print("[MainId: 4008][Trigger: Q400819_TriggerIn] TriggerOut")
end

return Q400819_TriggerIn
