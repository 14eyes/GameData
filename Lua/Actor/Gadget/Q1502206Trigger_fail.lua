require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502206Trigger_fail = class("Q1502206Trigger_fail", GadgetActorProxy)
Q1502206Trigger_fail.defaultAlias = "Q1502206Trigger_fail"
local Q15022ClientConfig = require("Quest/Client/Q15022ClientConfig")

local this
local subIDs = Q15022ClientConfig.SubIDs
local datas = Q15022ClientConfig.Datas
local npcs = Q15022ClientConfig.Npcs
local points = Q15022ClientConfig.Points

function Q1502206Trigger_fail:OnPostDataPrepare()
    print("Q1502206Trigger_fail - OnPostDataPrepare")
    this = self
end

function Q1502206Trigger_fail:OnPostComponentPrepare()
    print("Q1502206Trigger_fail - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15022)
end

function Q1502206Trigger_fail:TriggerIn()
    print("Q1502206Trigger_fail - TriggerIn")
end

function Q1502206Trigger_fail:PreTriggerIn()
    print("Q1502206Trigger_fail - PreTriggerIn")
end

function Q1502206Trigger_fail:LightUpTriggerIn()
    print("Q1502206Trigger_fail - LightUpTriggerIn")
end

function Q1502206Trigger_fail:TriggerOut()
    print("Q1502206Trigger_fail - TriggerOut")
    actorUtils.FinishQuestID(true, 1502206)
    actorMgr:GetActor("15022"):CallDelayByQuest("", 0.5, function(arg1)
        actorMgr:GetActor("15022"):TransmitPlayerWithDialogTextByQuestId(1502206, 1, datas.Q1502212FailTextMap, 2, nil, nil, nil)
    end)

    this:DestroySelf()
end

return Q1502206Trigger_fail
