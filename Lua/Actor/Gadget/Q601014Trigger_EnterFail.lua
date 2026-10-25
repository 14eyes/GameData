require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601014Trigger_EnterFail = class("Q601014Trigger_EnterFail", GadgetActorProxy)
Q601014Trigger_EnterFail.defaultAlias = "Q601014Trigger_EnterFail"
local Q6010ClientConfig = require("Quest/Client/Q6010ClientConfig")

local this
local subIDs = Q6010ClientConfig.SubIDs
local datas = Q6010ClientConfig.Datas
local npcs = Q6010ClientConfig.Npcs
local points = Q6010ClientConfig.Points

function Q601014Trigger_EnterFail:OnPostDataPrepare()
    print("Q601014Trigger_EnterFail - OnPostDataPrepare")
    this = self
end

function Q601014Trigger_EnterFail:OnPostComponentPrepare()
    print("Q601014Trigger_EnterFail - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6010)
end

function Q601014Trigger_EnterFail:TriggerIn()
    print("Q601014Trigger_EnterFail - TriggerIn")
    actorUtils.FinishQuestID(true, 601014)
    this:DestroySelf()
end

function Q601014Trigger_EnterFail:PreTriggerIn()
    print("Q601014Trigger_EnterFail - PreTriggerIn")
end

function Q601014Trigger_EnterFail:LightUpTriggerIn()
    print("Q601014Trigger_EnterFail - LightUpTriggerIn")
end

function Q601014Trigger_EnterFail:TriggerOut()
    print("Q601014Trigger_EnterFail - TriggerOut")
end

return Q601014Trigger_EnterFail
