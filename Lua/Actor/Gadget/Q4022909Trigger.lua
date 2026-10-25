require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022909Trigger = class("Q4022909Trigger", GadgetActorProxy)
Q4022909Trigger.defaultAlias = "Q4022909Trigger"
local Q40229ClientConfig = require("Quest/Client/Q40229ClientConfig")

local this
local subIDs = Q40229ClientConfig.SubIDs
local datas = Q40229ClientConfig.Datas
local npcs = Q40229ClientConfig.Npcs
local points = Q40229ClientConfig.Points

function Q4022909Trigger:OnPostDataPrepare()
    print("Q4022909Trigger - OnPostDataPrepare")
    this = self
end

function Q4022909Trigger:OnPostComponentPrepare()
    print("Q4022909Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40229)
end

function Q4022909Trigger:TriggerIn()
    print("Q4022909Trigger - TriggerIn")
    actorMgr:GetActor("40229"):TransmitPlayerWithQuestIdByData(4022908, 1, datas.TransmitWithUI, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {4022915})
    end, nil, nil)

    this:DestroySelf()
end

function Q4022909Trigger:PreTriggerIn()
    print("Q4022909Trigger - PreTriggerIn")
end

function Q4022909Trigger:LightUpTriggerIn()
    print("Q4022909Trigger - LightUpTriggerIn")
end

function Q4022909Trigger:TriggerOut()
    print("Q4022909Trigger - TriggerOut")
end

return Q4022909Trigger
