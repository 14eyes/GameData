require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601015Trigger_OnEnter = class("Q601015Trigger_OnEnter", GadgetActorProxy)
Q601015Trigger_OnEnter.defaultAlias = "Q601015Trigger_OnEnter"
local Q6010ClientConfig = require("Quest/Client/Q6010ClientConfig")

local this
local subIDs = Q6010ClientConfig.SubIDs
local datas = Q6010ClientConfig.Datas
local npcs = Q6010ClientConfig.Npcs
local points = Q6010ClientConfig.Points

function Q601015Trigger_OnEnter:OnPostDataPrepare()
    print("Q601015Trigger_OnEnter - OnPostDataPrepare")
    this = self
end

function Q601015Trigger_OnEnter:OnPostComponentPrepare()
    print("Q601015Trigger_OnEnter - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6010)
end

function Q601015Trigger_OnEnter:TriggerIn()
    print("Q601015Trigger_OnEnter - TriggerIn")
    actorMgr:GetActor("6010"):TransmitPlayerByQuestId(601015, 15, nil, nil, nil)
    this:DestroySelf()
end

function Q601015Trigger_OnEnter:PreTriggerIn()
    print("Q601015Trigger_OnEnter - PreTriggerIn")
end

function Q601015Trigger_OnEnter:LightUpTriggerIn()
    print("Q601015Trigger_OnEnter - LightUpTriggerIn")
end

function Q601015Trigger_OnEnter:TriggerOut()
    print("Q601015Trigger_OnEnter - TriggerOut")
end

return Q601015Trigger_OnEnter
