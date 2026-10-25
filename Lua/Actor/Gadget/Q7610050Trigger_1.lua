require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7610050Trigger_1 = class("Q7610050Trigger_1", GadgetActorProxy)
Q7610050Trigger_1.defaultAlias = "Q7610050Trigger_1"
local Q76100ClientConfig = require("Quest/Client/Q76100ClientConfig")

local this
local subIDs = Q76100ClientConfig.SubIDs
local datas = Q76100ClientConfig.Datas
local npcs = Q76100ClientConfig.Npcs
local points = Q76100ClientConfig.Points

function Q7610050Trigger_1:OnPostDataPrepare()
    print("Q7610050Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q7610050Trigger_1:OnPostComponentPrepare()
    print("Q7610050Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76100)
end

function Q7610050Trigger_1:TriggerIn()
    print("Q7610050Trigger_1 - TriggerIn")
    actorMgr:GetActor("76100"):TransmitPlayerByData(quest, 0, nil, function(arg1)
        actorUtils.FinishQuestID(false, 7610050)
        this:DestroySelf()
    end, nil, nil)
end

function Q7610050Trigger_1:PreTriggerIn()
    print("Q7610050Trigger_1 - PreTriggerIn")
end

function Q7610050Trigger_1:LightUpTriggerIn()
    print("Q7610050Trigger_1 - LightUpTriggerIn")
end

function Q7610050Trigger_1:TriggerOut()
    print("Q7610050Trigger_1 - TriggerOut")
end

return Q7610050Trigger_1
