require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006Trigger5 = class("Q4006Trigger5", GadgetActorProxy)
Q4006Trigger5.defaultAlias = "Q4006Trigger5"
local Q4006ClientConfig = require("Quest/Client/Q4006ClientConfig")

local this
local subIDs = Q4006ClientConfig.SubIDs
local npcs = Q4006ClientConfig.Npcs
local points = Q4006ClientConfig.Points
local datas = Q4006ClientConfig.Datas

function Q4006Trigger5:OnPostDataPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger5] OnPostDataPrepare")
    this = self
end

function Q4006Trigger5:OnPostComponentPrepare()
    print("[MainId: 4006][Trigger: Q4006Trigger5] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 77, 40, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4006Trigger5:TriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger5] TriggerIn")
    actorUtils.FinishQuestID(false, 400611)
    this:DestroySelf()
end

function Q4006Trigger5:PreTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger5] PreTriggerIn")
end

function Q4006Trigger5:LightUpTriggerIn()
    print("[MainId: 4006][Trigger: Q4006Trigger5] LightUpTriggerIn")
end

function Q4006Trigger5:TriggerOut()
    print("[MainId: 4006][Trigger: Q4006Trigger5] TriggerOut")
end

return Q4006Trigger5
