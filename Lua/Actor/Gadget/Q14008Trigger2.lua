require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14008Trigger2 = class("Q14008Trigger2", GadgetActorProxy)
Q14008Trigger2.defaultAlias = "Q14008Trigger2"
local Q14008ClientConfig = require("Quest/Client/Q14008ClientConfig")

local this
local subIDs = Q14008ClientConfig.SubIDs
local npcs = Q14008ClientConfig.Npcs
local points = Q14008ClientConfig.Points
local datas = Q14008ClientConfig.Datas

function Q14008Trigger2:OnPostDataPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger2] OnPostDataPrepare")
    this = self
end

function Q14008Trigger2:OnPostComponentPrepare()
    print("[MainId: 14008][Trigger: Q14008Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14008Trigger2:TriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger2] TriggerIn")
    actorUtils.FinishQuestID(false, 1400811)
    this:DestroySelf()
end

function Q14008Trigger2:PreTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger2] PreTriggerIn")
end

function Q14008Trigger2:LightUpTriggerIn()
    print("[MainId: 14008][Trigger: Q14008Trigger2] LightUpTriggerIn")
    actorMgr:GetActor("14008"):ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", true, true)
end

function Q14008Trigger2:TriggerOut()
    print("[MainId: 14008][Trigger: Q14008Trigger2] TriggerOut")
end

return Q14008Trigger2
